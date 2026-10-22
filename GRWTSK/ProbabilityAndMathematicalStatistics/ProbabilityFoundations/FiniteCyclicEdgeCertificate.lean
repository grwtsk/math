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
SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
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

end GRWTSK.ProbabilityAndMathematicalStatistics.ChowlaSofic
