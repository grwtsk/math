import GRWTSK.NumberTheory.AbundanceFactorRecovery
import GRWTSK.ComputerScience.AlgorithmsInComputerScience.IntegerFactorizationReductions

/-!
# Exact divisor sums from queries to strict abundance

Local source attribution: grwtsk contributors. Joseph M. Shunia, arXiv:2611.34242v1,
Theorem 1.2 and Algorithm 3. Query construction and its size guarantee are
supplier premises. Every adaptive call is included in the trace.
-/

namespace GRWTSK.IntegerFactorization.AbundanceRecovery

/-- Theorem 1.2's many-one query constructor. Its bit-step cost requires
a machine realizing the constructor. Constant yes/no branches can use 12/1. -/
structure ThresholdSupplier where
  encode : ℕ → ℕ → ℕ
  widthConstant : ℕ
  reflects : ∀ x, 2 ≤ x → ∀ h, h ≤ sigma x ↔ 2 * encode x h < sigma (encode x h)
  width : ∀ x, 2 ≤ x → ∀ h, (encode x h).size ≤ widthConstant * x.size ^ 2

def askUpper (t : ThresholdSupplier) (oracle : ℕ → Bool) (x k : ℕ) : Bool :=
  !(oracle (t.encode x (k + 1)))

/-- The trace consists of the actual integer arguments passed to the oracle. -/
def querySigma (t : ThresholdSupplier) (oracle : ℕ → Bool) (x : ℕ) :
    ℕ × List ℕ :=
  let answer := Reductions.bisect (askUpper t oracle x) (2 * x.size) 0
  (answer.1, answer.2.map fun k => t.encode x (k + 1))

theorem querySigma_spec (t : ThresholdSupplier) (oracle : ℕ → Bool)
    (hor : ∀ z, oracle z = true ↔ 2 * z < sigma z) (x : ℕ) (hx : 2 ≤ x) :
    (querySigma t oracle x).1 = sigma x := by
  apply Reductions.bisect_correct
  · intro k
    simp only [askUpper, Bool.not_eq_true', ← Bool.not_eq_true, hor,
      ← t.reflects x hx, Nat.not_le, Nat.lt_succ_iff]
  · exact ArithmeticFunction.sigma_pos 1 x (by omega)
  · have hsize := Nat.lt_size_self x
    have hs := ArithmeticFunction.sigma_le_pow_succ 1 x
    change sigma x ≤ x ^ 2 at hs
    rw [Nat.zero_add, Nat.mul_comm 2 x.size, pow_mul]
    exact hs.trans (Nat.pow_le_pow_left hsize.le 2)

theorem querySigma_count (t : ThresholdSupplier) (oracle : ℕ → Bool) (x : ℕ) :
    (querySigma t oracle x).2.length = 2 * x.size := by
  simp [querySigma, Reductions.bisect_length]

theorem querySigma_width (t : ThresholdSupplier) (oracle : ℕ → Bool) {x z : ℕ}
    (hx : 2 ≤ x) (hz : z ∈ (querySigma t oracle x).2) :
    z.size ≤ t.widthConstant * x.size ^ 2 := by
  obtain ⟨k, _, rfl⟩ := List.mem_map.mp hz
  exact t.width _ hx _

/-- All consecutive-power calls, including repetitions, in evaluation order. -/
def sampleRuns (t : ThresholdSupplier) (oracle : ℕ → Bool) (n J count : ℕ) :
    List (ℕ × List ℕ) :=
  (List.range count).map fun s => querySigma t oracle (n ^ (J + s))

theorem sampleRuns_values (t : ThresholdSupplier) (oracle : ℕ → Bool)
    (hor : ∀ z, oracle z = true ↔ 2 * z < sigma z) (n J count : ℕ)
    (hn : 2 ≤ n) (hJ : 0 < J) :
    (sampleRuns t oracle n J count).map Prod.fst =
    (List.range count).map (fun s => sigma (n ^ (J + s))) := by
  simp only [sampleRuns, List.map_map]
  apply List.map_congr_left
  intro s _
  apply querySigma_spec t oracle hor
  exact Nat.one_lt_pow (by omega) hn

private theorem sampleWidth {n J count s : ℕ} (hn : 2 ≤ n) (hs : s < count) :
    (n ^ (J + s)).size ≤ n.size * (J + count) := by
  apply Nat.size_le.mpr
  rw [pow_mul]
  have hbase : 1 < 2 ^ n.size := (by omega : 1 < n).trans (Nat.lt_size_self n)
  exact (Nat.pow_le_pow_left (Nat.lt_size_self n).le _).trans_lt
    (Nat.pow_lt_pow_right hbase (by omega))

/-- The number of adaptive oracle calls for this finite batch. -/
theorem sampleRuns_queries (t : ThresholdSupplier) (oracle : ℕ → Bool) (n J count : ℕ)
    (hn : 2 ≤ n) :
    ((sampleRuns t oracle n J count).flatMap Prod.snd).length ≤
      count * (2 * (n.size * (J + count))) := by
  let f := fun s => (querySigma t oracle (n ^ (J+s))).2
  have aux (l : List ℕ) (hs : ∀ s ∈ l, s < count) :
      (l.flatMap f).length ≤ l.length * (2 * (n.size * (J + count))) := by
    induction l with
    | nil => simp
    | cons s xs ih =>
      have hb : (f s).length ≤ 2 * (n.size * (J + count)) := by
        rw [show (f s).length = _ from querySigma_count _ _ _]
        exact Nat.mul_le_mul_left _ (sampleWidth hn (hs s List.mem_cons_self))
      simpa only [List.flatMap_cons, List.length_append, List.length_cons, Nat.succ_mul,
        Nat.add_comm] using Nat.add_le_add hb (ih (fun k hk => hs k (List.mem_cons_of_mem _ hk)))
  simpa [sampleRuns, List.flatMap_map, f, Function.comp_def] using
    aux (List.range count) (fun _ hk => List.mem_range.mp hk)

/-- Numerical bit width of each serialized oracle argument. -/
theorem sampleRuns_queryWidth (t : ThresholdSupplier) (oracle : ℕ → Bool)
    {n J count z : ℕ} (hn : 2 ≤ n) (hJ : 0 < J)
    (hz : z ∈ (sampleRuns t oracle n J count).flatMap Prod.snd) :
    z.size ≤ t.widthConstant * (n.size * (J + count)) ^ 2 := by
  obtain ⟨r, hr, hz⟩ := List.mem_flatMap.mp hz
  obtain ⟨s, hs, rfl⟩ := List.mem_map.mp hr
  have hx : 2 ≤ n ^ (J+s) := Nat.one_lt_pow (by omega) hn
  exact (querySigma_width t oracle hx hz).trans (Nat.mul_le_mul_left _
    (Nat.pow_le_pow_left (sampleWidth hn (List.mem_range.mp hs)) _))

def sampleStart (n : ℕ) : ℕ := 48 * (1 + Nat.clog 2 n) ^ 2

def sampleCount (n : ℕ) : ℕ := 2 * Nat.clog 2 n

private theorem paper_sizes (n : ℕ) :
    sampleCount n ≤ 2 * (1+n.size) ∧
    n.size * (sampleStart n + sampleCount n) ≤ 50 * (1+n.size)^3 := by
  let b := n.size
  have hm : Nat.clog 2 n ≤ b := Nat.clog_le_of_le_pow (Nat.lt_size_self n).le
  have hm2 : Nat.clog 2 n ≤ (1+b)^2 := by nlinarith
  have h1 : sampleStart n + sampleCount n ≤ 50 * (1+b)^2 := calc
    _ ≤ 48 * (1+b)^2 + 2 * (1+b)^2 :=
      Nat.add_le_add (Nat.mul_le_mul_left _ (Nat.pow_le_pow_left (Nat.add_le_add_left hm 1) 2))
        (Nat.mul_le_mul_left _ hm2)
    _ = _ := by ring
  constructor
  · exact Nat.mul_le_mul_left 2 (hm.trans (Nat.le_add_left ..))
  · calc
      _ ≤ (1+b) * (50 * (1+b)^2) := Nat.mul_le_mul (Nat.le_add_left ..) h1
      _ = _ := by ring

/-- At the manuscript's exact sampling parameters, all individual constructor
queries have polynomial numerical bit width and the exact trace has at most
200(1+b)^4 entries. Duplicated queries are charged in full. -/
theorem paper_query_envelope (t : ThresholdSupplier) (oracle : ℕ → Bool)
    (n : ℕ) (hn : 2 ≤ n) :
    let qs := (sampleRuns t oracle n (sampleStart n) (sampleCount n)).flatMap Prod.snd
    qs.length ≤ 200*(1+n.size)^4 ∧
      ∀ z ∈ qs, z.size ≤ 2500*t.widthConstant*(1+n.size)^6 := by
  have h := paper_sizes n
  constructor
  · calc
      _ ≤ _ := sampleRuns_queries t oracle n _ _ hn
      _ ≤ (2*(1+n.size)) * (2*(50*(1+n.size)^3)) := Nat.mul_le_mul h.1 (Nat.mul_le_mul_left 2 h.2)
      _ = _ := by ring
  · intro z hz
    calc
      _ ≤ _ := sampleRuns_queryWidth t oracle hn (show 0 < sampleStart n by
        unfold sampleStart; positivity) hz
      _ ≤ t.widthConstant * (50*(1+n.size)^3)^2 :=
        Nat.mul_le_mul_left _ (Nat.pow_le_pow_left h.2 _)
      _ = _ := by ring

/-- Charge nondecreasing oracle and serialization costs to the actual list,
even if an oracle answer was a direct constant branch in the source. -/
theorem paper_oracle_work (t : ThresholdSupplier) (oracle : ℕ → Bool)
    (n : ℕ) (hn : 2 ≤ n) (A : ℕ → ℕ) (hA : Monotone A) :
    let qs := (sampleRuns t oracle n (sampleStart n) (sampleCount n)).flatMap Prod.snd
    (qs.map (fun z => A z.size + z.size)).sum ≤
      200*(1+n.size)^4 * (A (2500*t.widthConstant*(1+n.size)^6) +
        2500*t.widthConstant*(1+n.size)^6) := by
  let cap := 2500*t.widthConstant*(1+n.size)^6
  have aux (l : List ℕ) (hl : ∀ z ∈ l, z.size ≤ cap) :
      (l.map (fun z => A z.size + z.size)).sum ≤ l.length*(A cap+cap) := by
    induction l with
    | nil => simp
    | cons z zs ih =>
      have hz := hl z List.mem_cons_self
      have ht := ih (fun y hy => hl y (List.mem_cons_of_mem _ hy))
      simp only [List.map_cons, List.sum_cons, List.length_cons, Nat.succ_mul]
      exact (Nat.add_le_add (Nat.add_le_add (hA hz) hz) ht).trans_eq (Nat.add_comm ..)
  have h := paper_query_envelope t oracle n hn
  exact (aux _ h.2).trans (Nat.mul_le_mul_right _ h.1)

end GRWTSK.IntegerFactorization.AbundanceRecovery
