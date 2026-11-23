import GRWTSK.Combinatorics.HistoryBehavior

/-!
# Reachable Moore minimization and finite distinguishing words

Local mathematical attribution: grwtsk contributors.
Consumer: https://github.com/grwtsk/sofic/issues/10 (A02).
SOURCE_PROOF_CANDIDATE. Parsing, compilation, exact-type checks, fresh kernel
replay, transitive axiom audit and independent review: NOT_RUN.

Source: HistoryBehavior at a7d1f0217b0568053af7e52d0d1ee810d6eb1134.
The reachable-state map is onto the all-continuations quotient. Finite
distinguishability is via successive partitions of a fixed finite state
carrier, including the empty-word output partition. A strict refinement
increases the number of classes; equality of consecutive partitions is
stable under all successors. The disjoint sum yields the p+q-1 bound of
sofic #9. The sharper nonconstant-output bound is not formalized here. No finite input
alphabet assumption is needed for the existential length theorem, but
effective enumeration would require one. This is classical Moore
minimization, not a novelty or an efficient minimizer claim.
-/

set_option autoImplicit false
noncomputable section

namespace GRWTSK.HistoryBehavior

universe u v w x
variable {I : Type u} {O : Type v} {S : Type w}

abbrev ReachableState (run : History I → S) := Set.range run

def reachableToFuture (b : Behavior I O) (run : History I → S) :
    ReachableState run → FutureState b :=
  fun s => Quotient.mk (futureSetoid b) (Classical.choose s.property)

theorem reachableToFuture_run (b : Behavior I O) (run : History I → S)
    (step : S → I → S) (out : S → O)
    (runStep : ∀ w a, run (w ++ [a]) = step (run w) a)
    (readout : ∀ w, b w = out (run w)) (w : History I) :
    reachableToFuture b run ⟨run w, ⟨w, rfl⟩⟩ =
      Quotient.mk (futureSetoid b) w := by
  apply Quotient.sound
  apply state_kernel_sub_future b run step out runStep readout
  exact Classical.choose_spec (show ∃ z, run z = run w from ⟨w, rfl⟩)

theorem reachableToFuture_surjective (b : Behavior I O) (run : History I → S)
    (step : S → I → S) (out : S → O)
    (runStep : ∀ w a, run (w ++ [a]) = step (run w) a)
    (readout : ∀ w, b w = out (run w)) :
    Function.Surjective (reachableToFuture b run) := by
  intro c
  refine Quotient.inductionOn c ?_
  intro w
  exact ⟨⟨run w, ⟨w, rfl⟩⟩,
    reachableToFuture_run b run step out runStep readout w⟩

theorem future_finite_of_run [Finite S] (b : Behavior I O)
    (run : History I → S) (step : S → I → S) (out : S → O)
    (runStep : ∀ w a, run (w ++ [a]) = step (run w) a)
    (readout : ∀ w, b w = out (run w)) : Finite (FutureState b) :=
  Finite.of_surjective _ (reachableToFuture_surjective b run step out runStep readout)

theorem future_card_minimal
    (b : Behavior I O) (run : History I → S) [Finite (ReachableState run)] (step : S → I → S) (out : S → O)
    (runStep : ∀ w a, run (w ++ [a]) = step (run w) a)
    (readout : ∀ w, b w = out (run w)) :
    Nat.card (FutureState b) ≤ Nat.card (ReachableState run) :=
  Nat.card_le_card_of_surjective _ (reachableToFuture_surjective b run step out runStep readout)

/-- The quotient is itself a reachable realization, so the lower bound is attained. -/
theorem future_realizes (b : Behavior I O) :
    (∀ w a, Quotient.mk (futureSetoid b) (w ++ [a]) =
      futureStep b a (Quotient.mk (futureSetoid b) w)) ∧
    (∀ w, b w = futureOutput b (Quotient.mk (futureSetoid b) w)) ∧
    Function.Surjective (fun w : History I => Quotient.mk (futureSetoid b) w) := by
  refine ⟨fun _ _ => rfl, fun _ => rfl, ?_⟩
  intro c
  refine Quotient.inductionOn c ?_
  intro w
  exact ⟨w, rfl⟩

/-- A joint behavior is realized by the product of the two original machines. -/
theorem joint_future_card {P : Type x} {T : Type x} [Finite S] [Finite T]
    (b : Behavior I O) (c : Behavior I P)
    (r : History I → S) (s : History I → T)
    (f : S → I → S) (g : T → I → T)
    (o : S → O) (p : T → P)
    (hr : ∀ w a, r (w ++ [a]) = f (r w) a)
    (hs : ∀ w a, s (w ++ [a]) = g (s w) a)
    (ho : ∀ w, b w = o (r w)) (hp : ∀ w, c w = p (s w)) :
    Nat.card (FutureState (jointFactor b c)) ≤ Nat.card S * Nat.card T := by
  let run : History I → S × T := fun w => (r w, s w)
  let step : S × T → I → S × T := fun x a => (f x.1 a, g x.2 a)
  let out : S × T → O × P := fun x => (o x.1, p x.2)
  have hstep : ∀ w a, run (w ++ [a]) = step (run w) a := by
    intro w a
    simp [run, step, hr, hs]
  have hout : ∀ w, jointFactor b c w = out (run w) := by
    intro w
    simp [jointFactor, run, out, ho, hp]
  calc
    _ ≤ Nat.card (ReachableState run) :=
      future_card_minimal (jointFactor b c) run step out hstep hout
    _ ≤ Nat.card (S × T) := Nat.card_le_card_of_injective
      (fun x : ReachableState run => x.val) Subtype.val_injective
    _ = _ := Nat.card_prod S T

/-- States agreeing on every word of length at most n. -/
def depthEquiv (step : S → I → S) (out : S → O)
    (n : Nat) (s t : S) : Prop :=
  ∀ w : List I, w.length ≤ n → out (w.foldl step s) = out (w.foldl step t)

def depthSetoid (step : S → I → S) (out : S → O) (n : Nat) : Setoid S where
  r := depthEquiv step out n
  iseqv := ⟨fun _ _ _ => rfl, fun h w hw => (h w hw).symm,
    fun h k w hw => (h w hw).trans (k w hw)⟩

abbrev DepthState (step : S → I → S) (out : S → O) (n : Nat) :=
  Quotient (depthSetoid step out n)

theorem depth_monotone (step : S → I → S) (out : S → O)
    {n m : Nat} (h : n ≤ m) {s t : S}
    (hm : depthEquiv step out m s t) : depthEquiv step out n s t :=
  fun w hw => hm w (Nat.le_trans hw h)

theorem depth_successor (step : S → I → S) (out : S → O) (n : Nat)
    {s t : S} (h : depthEquiv step out (n + 1) s t) (a : I) :
    depthEquiv step out n (step s a) (step t a) := by
  intro w hw
  have hh : (a :: w).length ≤ n + 1 := by simpa using Nat.succ_le_succ hw
  exact h (a :: w) hh

def DepthStable (step : S → I → S) (out : S → O) (n : Nat) : Prop :=
  ∀ s t, depthEquiv step out n s t → depthEquiv step out (n + 1) s t

theorem stable_all_words (step : S → I → S) (out : S → O) {n : Nat}
    (stable : DepthStable step out n) {s t : S}
    (h : depthEquiv step out n s t) (w : List I) :
    out (w.foldl step s) = out (w.foldl step t) := by
  induction w generalizing s t with
  | nil => exact h [] (Nat.zero_le n)
  | cons a w ih =>
    exact ih (depth_successor step out n (stable s t h) a)

def depthProjection (step : S → I → S) (out : S → O) (n : Nat) :
    DepthState step out (n + 1) → DepthState step out n :=
  Quotient.lift (fun s => Quotient.mk (depthSetoid step out n) s)
    (fun _ _ h => Quotient.sound (depth_monotone step out (Nat.le_succ n) h))

theorem depthProjection_surjective (step : S → I → S) (out : S → O) (n : Nat) :
    Function.Surjective (depthProjection step out n) := by
  intro c
  refine Quotient.inductionOn c ?_
  intro s
  exact ⟨Quotient.mk (depthSetoid step out (n + 1)) s, rfl⟩

theorem depth_mk_surjective (step : S → I → S) (out : S → O) (n : Nat) :
    Function.Surjective (Quotient.mk (depthSetoid step out n)) := by
  intro c
  refine Quotient.inductionOn c ?_
  intro s
  exact ⟨s, rfl⟩

instance depthFinite [Finite S] (step : S → I → S) (out : S → O) (n : Nat) :
    Finite (DepthState step out n) :=
  Finite.of_surjective _ (depth_mk_surjective step out n)

theorem depth_card_le [Finite S] (step : S → I → S) (out : S → O) (n : Nat) :
    Nat.card (DepthState step out n) ≤ Nat.card S :=
  Nat.card_le_card_of_surjective _ (depth_mk_surjective step out n)

theorem strict_refinement_card [Finite S] (step : S → I → S) (out : S → O)
    (n : Nat) (unstable : ¬ DepthStable step out n) :
    Nat.card (DepthState step out n) < Nat.card (DepthState step out (n + 1)) := by
  by_contra h
  have hc : Nat.card (DepthState step out (n + 1)) ≤ Nat.card (DepthState step out n) :=
    Nat.le_of_not_gt h
  have inj := ((depthProjection_surjective step out n).bijective_of_nat_card_le hc).1
  apply unstable
  intro s t he
  apply Quotient.exact
  apply inj
  change Quotient.mk (depthSetoid step out n) s = Quotient.mk (depthSetoid step out n) t
  exact Quotient.sound he

theorem exists_stable_before_card [Finite S] [Nonempty S]
    (step : S → I → S) (out : S → O) :
    ∃ n, n < Nat.card S ∧ DepthStable step out n := by
  classical
  by_contra h
  have inc : ∀ n, n < Nat.card S →
      Nat.card (DepthState step out n) < Nat.card (DepthState step out (n + 1)) := by
    intro n hn
    exact strict_refinement_card step out n (fun hs => h ⟨n, hn, hs⟩)
  have lower : ∀ n, n ≤ Nat.card S → n + 1 ≤ Nat.card (DepthState step out n) := by
    intro n
    induction n with
    | zero =>
      intro _
      letI : Nonempty (DepthState step out 0) :=
        ⟨Quotient.mk (depthSetoid step out 0) (Classical.choice ‹Nonempty S›)⟩
      exact Nat.card_pos
    | succ n ih =>
      intro hn
      have h1 := ih (by omega)
      have h2 := inc n (by omega)
      omega
  have h1 := lower (Nat.card S) (Nat.le_refl _)
  have h2 := depth_card_le step out (Nat.card S)
  omega

/-- A witness through length n-1 suffices on a nonempty finite total carrier. -/
theorem finite_distinguishing_bound [Finite S] (step : S → I → S) (out : S → O)
    (s t : S) (different : ∃ w : List I, out (w.foldl step s) ≠ out (w.foldl step t)) :
    ∃ w : List I, w.length ≤ Nat.card S - 1 ∧
      out (w.foldl step s) ≠ out (w.foldl step t) := by
  classical
  letI : Nonempty S := ⟨s⟩
  by_contra h
  have agree : depthEquiv step out (Nat.card S - 1) s t := by
    intro w hw
    by_contra hn
    exact h ⟨w, hw, hn⟩
  obtain ⟨n, hn, stable⟩ := exists_stable_before_card step out
  have hn' : n ≤ Nat.card S - 1 := by omega
  obtain ⟨w, hw⟩ := different
  exact hw (stable_all_words step out stable (depth_monotone step out hn' agree) w)

def sumStep {T : Type x} (f : S → I → S) (g : T → I → T) : S ⊕ T → I → S ⊕ T
  | .inl s, a => .inl (f s a)
  | .inr t, a => .inr (g t a)

theorem sum_foldl_left {T : Type x} (f : S → I → S) (g : T → I → T)
    (w : List I) (s : S) :
    w.foldl (sumStep f g) (Sum.inl s) = Sum.inl (w.foldl f s) := by
  induction w generalizing s with
  | nil => rfl
  | cons a w ih => exact ih (f s a)

theorem sum_foldl_right {T : Type x} (f : S → I → S) (g : T → I → T)
    (w : List I) (t : T) :
    w.foldl (sumStep f g) (Sum.inr t) = Sum.inr (w.foldl g t) := by
  induction w generalizing t with
  | nil => rfl
  | cons a w ih => exact ih (g t a)

/-- The sum, rather than the product, gives the required p+q-1 bound. -/
theorem two_machine_distinguishing_bound {T : Type x} [Finite S] [Finite T]
    (f : S → I → S) (g : T → I → T) (o : S → O) (p : T → O)
    (s : S) (t : T) (different : ∃ w : List I, o (w.foldl f s) ≠ p (w.foldl g t)) :
    ∃ w : List I, w.length ≤ Nat.card S + Nat.card T - 1 ∧
      o (w.foldl f s) ≠ p (w.foldl g t) := by
  let out : S ⊕ T → O := Sum.elim o p
  have hd : ∃ w : List I,
      out (w.foldl (sumStep f g) (Sum.inl s)) ≠
      out (w.foldl (sumStep f g) (Sum.inr t)) := by
    obtain ⟨w, hw⟩ := different
    exact ⟨w, by simpa [sum_foldl_left, sum_foldl_right, out] using hw⟩
  obtain ⟨w, hw, hne⟩ := finite_distinguishing_bound (sumStep f g) out
    (Sum.inl s) (Sum.inr t) hd
  exact ⟨w, by simpa only [Nat.card_sum] using hw,
    by simpa [sum_foldl_left, sum_foldl_right, out] using hne⟩

end GRWTSK.HistoryBehavior
