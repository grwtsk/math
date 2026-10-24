# Complete source: GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.FiniteCyclicEdgeCertificate

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `43e4146d642551f48744f76956a6317708f4a644` · SHA-256 `dedbd3b1978471135741623dc91e093bace1be9a606f69a243ed70dcbb1594ed`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Finite de Bruijn certificate source drafting assistance: OpenAI. -/
import GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.FinitePatternCountBalancing
import Mathlib.Tactic

set_option autoImplicit false

/-!
# Counted cyclic de Bruijn edge-order certificates

Pure finite mathematical definitions. For m>=0 the edge width is
m+1; N>0 is required for cyclic modular indexing. Edges are
individual instances (w,j) with j<c(w), not just distinct labels.
A certificate is a bijection from Fin N to those edge instances
together with exact final-to-first prefix/suffix compatibility.

A certificate is NOT inferred from degree balance. Euler existence
requires an additional connectivity argument, not supplied here.
The exact counted-order/word equivalence is proved below, including repeated
wrapping when the edge width exceeds the period parameter.
-/

namespace GRWTSK.ProbabilityAndMathematicalStatistics.ChowlaSofic

/-- Binary blocks of width m+1, including m=0. -/
abbrev BinaryEdgeWord (m : ℕ) := Fin (m + 1) → Bool

/-- Counted edge instances retain parallel-edge multiplicity. -/
def CountedBinaryEdge (m : ℕ) (c : BinaryEdgeWord m → ℕ) :=
  (w : BinaryEdgeWord m) × Fin (c w)

/-- The total number of edge instances in the counted graph. -/
def countedBinaryEdgeTotal (m : ℕ) (c : BinaryEdgeWord m → ℕ) : ℕ :=
  ∑ w : BinaryEdgeWord m, c w

/-- Prefix vertex of a width-(m+1) edge. -/
def binaryEdgePrefix (m : ℕ) (w : BinaryEdgeWord m) : Fin m → Bool :=
  fun i => w ⟨i.val, by omega⟩

/-- Suffix vertex of a width-(m+1) edge. -/
def binaryEdgeSuffix (m : ℕ) (w : BinaryEdgeWord m) : Fin m → Bool :=
  fun i => w ⟨i.val + 1, by omega⟩

/-- The underlying label of a counted edge instance. -/
def countedEdgeLabel (m : ℕ) (c : BinaryEdgeWord m → ℕ)
    (e : CountedBinaryEdge m c) : BinaryEdgeWord m := e.1

/-- A cyclic successor index; the N>0 guard is explicit. -/
def cyclicSuccessor (N : ℕ) (hN : 0 < N) (i : Fin N) : Fin N :=
  ⟨(i.val + 1) % N, Nat.mod_lt _ hN⟩

/-- The precise finite Euler certificate, with the final seam included.
No connectivity or degree-balance hypothesis is smuggled in. -/
structure CountedCyclicEulerCertificate
    (m : ℕ) (c : BinaryEdgeWord m → ℕ)
    (hN : 0 < countedBinaryEdgeTotal m c) where
  order : Fin (countedBinaryEdgeTotal m c) ≃ CountedBinaryEdge m c
  compatible : ∀ i,
    binaryEdgeSuffix m (countedEdgeLabel m c (order i)) =
      binaryEdgePrefix m
        (countedEdgeLabel m c
          (order (cyclicSuccessor (countedBinaryEdgeTotal m c) hN i)))

/-- Cyclic binary word with exact period parameter N. Its least
period may be a proper divisor of N. -/
abbrev CyclicBinaryWord (N : ℕ) := Fin N → Bool

/-- A length-(m+1) cyclic block, allowing repeated wrapping when
the width exceeds the period parameter. -/
def cyclicBinaryBlock (m N : ℕ) (hN : 0 < N)
    (x : CyclicBinaryWord N) (i : Fin N) : BinaryEdgeWord m :=
  fun j => x ⟨(i.val + j.val) % N, Nat.mod_lt _ hN⟩

/-- Exact empirical multiplicity of a cyclic block. -/
def cyclicBinaryBlockCount (m N : ℕ) (hN : 0 < N)
    (x : CyclicBinaryWord N) (w : BinaryEdgeWord m) : ℕ :=
  (Finset.univ.filter
    (fun i : Fin N => cyclicBinaryBlock m N hN x i = w)).card

/-- Exact realizability, with no randomness or arithmetic premise. -/
def CyclicCountRealizable (m : ℕ)
    (c : BinaryEdgeWord m → ℕ) : Prop :=
  ∃ (hN : 0 < countedBinaryEdgeTotal m c)
    (x : CyclicBinaryWord (countedBinaryEdgeTotal m c)),
      ∀ w, cyclicBinaryBlockCount m
        (countedBinaryEdgeTotal m c) hN x w = c w

/-- Cyclic translation by any natural offset, with arbitrarily many wraps. -/
def cyclicShift (N : ℕ) (hN : 0 < N) (i : Fin N) (j : ℕ) : Fin N :=
  ⟨(i.val + j) % N, Nat.mod_lt _ hN⟩

@[simp] theorem cyclicShift_zero (N : ℕ) (hN : 0 < N) (i : Fin N) :
    cyclicShift N hN i 0 = i := by
  apply Fin.ext
  simp [cyclicShift, Nat.mod_eq_of_lt i.isLt]

theorem cyclicShift_succ (N : ℕ) (hN : 0 < N) (i : Fin N) (j : ℕ) :
    cyclicShift N hN i (j + 1) = cyclicShift N hN (cyclicSuccessor N hN i) j := by
  apply Fin.ext
  simp [cyclicShift, cyclicSuccessor, Nat.add_mod, Nat.add_left_comm,
    Nat.add_comm]

/-- Read the first symbol of each ordered counted edge. -/
def CountedCyclicEulerCertificate.word
    {m : ℕ} {c : BinaryEdgeWord m → ℕ} {hN : 0 < countedBinaryEdgeTotal m c}
    (C : CountedCyclicEulerCertificate m c hN) :
    CyclicBinaryWord (countedBinaryEdgeTotal m c) :=
  fun i => countedEdgeLabel m c (C.order i) ⟨0, Nat.zero_lt_succ m⟩

/-- Repeated overlap identifies every edge coordinate, including repeated wraps. -/
theorem CountedCyclicEulerCertificate.label_eq_word_shift
    {m : ℕ} {c : BinaryEdgeWord m → ℕ} {hN : 0 < countedBinaryEdgeTotal m c}
    (C : CountedCyclicEulerCertificate m c hN)
    (j : ℕ) (hj : j < m + 1) (i : Fin (countedBinaryEdgeTotal m c)) :
    countedEdgeLabel m c (C.order i) ⟨j, hj⟩ =
      C.word (cyclicShift (countedBinaryEdgeTotal m c) hN i j) := by
  induction j generalizing i with
  | zero =>
      rw [cyclicShift_zero]
      rfl
  | succ j ih =>
      have hjm : j < m := by omega
      have h := congrFun (C.compatible i) (⟨j, hjm⟩ : Fin m)
      change countedEdgeLabel m c (C.order i) ⟨j + 1, hj⟩ =
        countedEdgeLabel m c
          (C.order (cyclicSuccessor (countedBinaryEdgeTotal m c) hN i))
          ⟨j, by omega⟩ at h
      rw [cyclicShift_succ]
      exact h.trans (ih (by omega) _)

/-- The extracted word has exactly the ordered edge as its cyclic block. -/
theorem CountedCyclicEulerCertificate.block_eq_label
    {m : ℕ} {c : BinaryEdgeWord m → ℕ} {hN : 0 < countedBinaryEdgeTotal m c}
    (C : CountedCyclicEulerCertificate m c hN) (i : Fin (countedBinaryEdgeTotal m c)) :
    cyclicBinaryBlock m (countedBinaryEdgeTotal m c) hN C.word i =
      countedEdgeLabel m c (C.order i) := by
  funext j
  exact (C.label_eq_word_shift j.val j.isLt i).symm

/-- The positions carrying a label correspond exactly to its counted edge instances. -/
def countedCyclicOrder_label_fiber_equiv
    (m : ℕ) (c : BinaryEdgeWord m → ℕ) (N : ℕ)
    (order : Fin N ≃ CountedBinaryEdge m c) (w : BinaryEdgeWord m) :
    {i : Fin N // countedEdgeLabel m c (order i) = w} ≃ Fin (c w) :=
  (order.subtypeEquiv (fun _ => Iff.rfl)).trans (Equiv.sigmaSubtype w)

/-- A bijective edge order has the prescribed multiplicity of every label. -/
theorem countedCyclicOrder_label_count
    (m : ℕ) (c : BinaryEdgeWord m → ℕ) (N : ℕ)
    (order : Fin N ≃ CountedBinaryEdge m c) (w : BinaryEdgeWord m) :
    (Finset.univ.filter
      (fun i : Fin N => countedEdgeLabel m c (order i) = w)).card = c w := by
  classical
  simpa only [Fintype.card_subtype, Fintype.card_fin] using
    Fintype.card_congr (countedCyclicOrder_label_fiber_equiv m c N order w)

/-- Consecutive modular blocks overlap, including the final-to-first seam. -/
theorem cyclicBinaryBlock_compatible (m N : ℕ) (hN : 0 < N)
    (x : CyclicBinaryWord N) (i : Fin N) :
    binaryEdgeSuffix m (cyclicBinaryBlock m N hN x i) =
      binaryEdgePrefix m
        (cyclicBinaryBlock m N hN x (cyclicSuccessor N hN i)) := by
  funext j
  simp only [binaryEdgeSuffix, binaryEdgePrefix, cyclicBinaryBlock,
    cyclicSuccessor]
  congr 1
  apply Fin.ext
  change (i.val + (j.val + 1)) % N = ((i.val + 1) % N + j.val) % N
  rw [Nat.mod_add_mod]
  congr 1
  omega

/-- Exact block counts give label-preserving bijections of the individual fibers. -/
noncomputable def countedCyclicOrderOfCounts
    (m : ℕ) (c : BinaryEdgeWord m → ℕ)
    (hN : 0 < countedBinaryEdgeTotal m c)
    (x : CyclicBinaryWord (countedBinaryEdgeTotal m c))
    (hc : ∀ w, cyclicBinaryBlockCount m
      (countedBinaryEdgeTotal m c) hN x w = c w) :
    Fin (countedBinaryEdgeTotal m c) ≃ CountedBinaryEdge m c := by
  classical
  exact (Equiv.sigmaFiberEquiv
    (cyclicBinaryBlock m (countedBinaryEdgeTotal m c) hN x)).symm.trans
    (Equiv.sigmaCongrRight fun w => Fintype.equivFinOfCardEq
      (by simpa only [Fintype.card_subtype, cyclicBinaryBlockCount] using hc w))

/-- The chosen bijections change only the parallel-edge index, never the label. -/
@[simp] theorem countedCyclicOrderOfCounts_label
    (m : ℕ) (c : BinaryEdgeWord m → ℕ)
    (hN : 0 < countedBinaryEdgeTotal m c)
    (x : CyclicBinaryWord (countedBinaryEdgeTotal m c))
    (hc : ∀ w, cyclicBinaryBlockCount m
      (countedBinaryEdgeTotal m c) hN x w = c w)
    (i : Fin (countedBinaryEdgeTotal m c)) :
    countedEdgeLabel m c (countedCyclicOrderOfCounts m c hN x hc i) =
      cyclicBinaryBlock m (countedBinaryEdgeTotal m c) hN x i := rfl

/-- A realizing cyclic word gives an actual counted cyclic edge certificate. -/
noncomputable def countedCyclicEulerCertificateOfCounts
    (m : ℕ) (c : BinaryEdgeWord m → ℕ)
    (hN : 0 < countedBinaryEdgeTotal m c)
    (x : CyclicBinaryWord (countedBinaryEdgeTotal m c))
    (hc : ∀ w, cyclicBinaryBlockCount m
      (countedBinaryEdgeTotal m c) hN x w = c w) :
    CountedCyclicEulerCertificate m c hN where
  order := countedCyclicOrderOfCounts m c hN x hc
  compatible i := by
    simpa only [countedCyclicOrderOfCounts_label] using
      cyclicBinaryBlock_compatible m (countedBinaryEdgeTotal m c) hN x i

/-- Realizability supplies a positive period and a compatible order of counted edges. -/
theorem cyclicCountRealizable_has_certificate
    (m : ℕ) (c : BinaryEdgeWord m → ℕ)
    (hc : CyclicCountRealizable m c) :
    ∃ hN : 0 < countedBinaryEdgeTotal m c,
      Nonempty (CountedCyclicEulerCertificate m c hN) := by
  obtain ⟨hN, x, hx⟩ := hc
  exact ⟨hN, ⟨countedCyclicEulerCertificateOfCounts m c hN x hx⟩⟩


/-- Every counted edge appears with its prescribed multiplicity in the extracted word. -/
theorem CountedCyclicEulerCertificate.word_count
    {m : ℕ} {c : BinaryEdgeWord m → ℕ} {hN : 0 < countedBinaryEdgeTotal m c}
    (C : CountedCyclicEulerCertificate m c hN) (w : BinaryEdgeWord m) :
    cyclicBinaryBlockCount m (countedBinaryEdgeTotal m c) hN C.word w = c w := by
  classical
  unfold cyclicBinaryBlockCount
  simp_rw [C.block_eq_label]
  exact countedCyclicOrder_label_count m c (countedBinaryEdgeTotal m c) C.order w

/-- An actual counted cyclic edge certificate produces an exact realizing word. -/
theorem CountedCyclicEulerCertificate.realizable
    {m : ℕ} {c : BinaryEdgeWord m → ℕ} {hN : 0 < countedBinaryEdgeTotal m c}
    (C : CountedCyclicEulerCertificate m c hN) : CyclicCountRealizable m c :=
  ⟨hN, C.word, C.word_count⟩

/-- For a positive total, compatible cyclic counted-edge orders and exact
cyclic-word block counts are equivalent, with no restriction of width by period. -/
theorem countedCyclicEulerCertificate_nonempty_iff
    (m : ℕ) (c : BinaryEdgeWord m → ℕ)
    (hN : 0 < countedBinaryEdgeTotal m c) :
    Nonempty (CountedCyclicEulerCertificate m c hN) ↔
      ∃ x : CyclicBinaryWord (countedBinaryEdgeTotal m c),
        ∀ w, cyclicBinaryBlockCount m (countedBinaryEdgeTotal m c) hN x w = c w := by
  constructor
  · rintro ⟨C⟩
    exact ⟨C.word, C.word_count⟩
  · rintro ⟨x, hx⟩
    exact ⟨countedCyclicEulerCertificateOfCounts m c hN x hx⟩

/-- Exact realizability is precisely existence of a counted cyclic certificate.
This equivalence supplies no Euler existence theorem from degree balance. -/
theorem cyclicCountRealizable_iff_certificate
    (m : ℕ) (c : BinaryEdgeWord m → ℕ) :
    CyclicCountRealizable m c ↔
      ∃ hN : 0 < countedBinaryEdgeTotal m c,
        Nonempty (CountedCyclicEulerCertificate m c hN) := by
  constructor
  · exact cyclicCountRealizable_has_certificate m c
  · rintro ⟨hN, C⟩
    exact C.some.realizable

end GRWTSK.ProbabilityAndMathematicalStatistics.ChowlaSofic
```
