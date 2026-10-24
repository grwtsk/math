# Complete source: GRWTSK.NumberTheory.Farey.CatMapContinuousPhaseObstruction

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3b80d1961aaf5d63cdb2922e9bc72097bea3012d` · SHA-256 `72336931805f29afb530994b98d2924d70a42de7e56648a0c1973d7a6f07db37`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2026 grwtsk contributors. MIT.
Mathematical direction: grwtsk contributors.
Formalization assistance: OpenAI. Upstream mathematical authorship retained.

SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
This is a CONDITIONAL topological theorem, not a new proof of
Arnold cat-map mixing or a port of the external Lean formalization.
-/
import GRWTSK.NumberTheory.Farey.CatMapArithmeticBridge
import Mathlib.Topology.Instances.Complex
import Mathlib.Tactic

/-!
# Finite torsion phase versus continuous global cat-map eigenfunction

A source-defined, nonzero -1 eigenreadout exists on all nine actual
three-torsion points of the real two-torus. This does not imply a
continuous -1 Koopman eigenfunction on the ambient torus.

The exact additional dynamical supplier here is local odd return
for every open neighborhood of the torsion witness, or the stronger
eventual open-set mixing condition. For a continuous F with
F(Tx)=-F(x), the open set Re(F)>0 cannot meet any of its odd images.
This yields a quantitative-free, source-preserving obstruction.

The external ErgodicTheory.CatMapToral.catTorus_mixing result by
Marcel Morgenstern is MEASURE mixing, not a locally checked theorem
of eventual OPEN mixing. Transport through full Haar support and
the different Lean/Mathlib versions remains unresolved.
-/

set_option autoImplicit false
noncomputable section

namespace GRWTSK.NumberTheory.Farey.CatMapContinuousPhaseObstruction

open GRWTSK.NumberTheory.Farey.CatMapArithmeticBridge

universe u
variable {X : Type u} [TopologicalSpace X]

/-- Local odd return: each open neighborhood of p contains
some x returning to that SAME neighborhood at an odd time.
Neither x=p nor exact periodicity is required. -/
def HasOddLocalReturns (T : X → X) (p : X) : Prop :=
  ∀ U : Set X, IsOpen U → p ∈ U →
    ∃ x : X, x ∈ U ∧ ∃ n : ℕ, (T^[2 * n + 1]) x ∈ U

/-- An explicit eventual OPEN mixing supplier; continuity of T
and a proof of this property for catTorus are NOT implicit. -/
def EventualOpenMixing (T : X → X) : Prop :=
  ∀ U V : Set X, IsOpen U → IsOpen V →
    U.Nonempty → V.Nonempty →
      ∃ N : ℕ, ∀ n : ℕ, N ≤ n →
        ∃ x : X, x ∈ U ∧ (T^[n]) x ∈ V

theorem oddLocalReturns_of_eventualOpenMixing
    (T : X → X) (hMix : EventualOpenMixing T) (p : X) :
    HasOddLocalReturns T p := by
  intro U hOpen hp
  obtain ⟨N, hN⟩ :=
    hMix U U hOpen hOpen ⟨p, hp⟩ ⟨p, hp⟩
  obtain ⟨x, hx, hOdd⟩ := hN (2 * N + 1) (by omega)
  exact ⟨x, hx, N, hOdd⟩

/-- The exact nth iterate of a global -1 eigenrelation. -/
theorem signEigen_iterate
    (T : X → X) (F : X → ℂ)
    (hEigen : ∀ x, F (T x) = (-1 : ℂ) * F x)
    (n : ℕ) (x : X) :
    F ((T^[n]) x) = (-1 : ℂ) ^ n * F x := by
  induction n with
  | zero => simp
  | succ n ih =>
      rw [Function.iterate_succ_apply', hEigen, ih, pow_succ]
      ring

theorem signEigen_odd
    (T : X → X) (F : X → ℂ)
    (hEigen : ∀ x, F (T x) = (-1 : ℂ) * F x)
    (n : ℕ) (x : X) :
    F ((T^[2 * n + 1]) x) = -F x := by
  rw [signEigen_iterate T F hEigen]
  simp [pow_add, pow_mul]

/-- A continuous -1 eigenreadout positive at p prohibits
even the weak odd-neighborhood-return property at p. -/
theorem no_continuous_signEigen_of_oddLocalReturns
    (T : X → X) (F : X → ℂ) (p : X)
    (hContinuous : Continuous F)
    (hEigen : ∀ x, F (T x) = (-1 : ℂ) * F x)
    (hPos : 0 < (F p).re)
    (hOdd : HasOddLocalReturns T p) : False := by
  let U : Set X := {x | 0 < (F x).re}
  have hComp : Continuous (fun x : X => (F x).re) :=
    Complex.continuous_re.comp hContinuous
  have hU : IsOpen U := isOpen_Ioi.preimage hComp
  obtain ⟨x, hx, n, hn⟩ := hOdd U hU hPos
  have hxPos : 0 < (F x).re := hx
  have hnPos : 0 < (F ((T^[2 * n + 1]) x)).re := hn
  rw [signEigen_odd T F hEigen n x] at hnPos
  have hnNeg : 0 < -(F x).re := by simpa using hnPos
  linarith

/-- The selected genuine torus torsion point is assigned value 1. -/
theorem torsion_witness_positive (F : Torus2 → ℂ)
    (hAgree : ∀ v : Vec3,
      F (torsionEmbedding v) = finiteCatReadout v) :
    0 < (F (torsionEmbedding finiteWitness)).re := by
  rw [hAgree, finiteCatReadout_witness]
  norm_num

/-- A nonzero continuous extension which is a GLOBAL -1
eigenfunction contradicts odd local return of the torsion witness. -/
theorem no_continuous_cat_phase_extension_of_oddLocalReturns
    (F : Torus2 → ℂ)
    (hContinuous : Continuous F)
    (hEigen : ∀ x : Torus2,
      F (catTorus x) = (-1 : ℂ) * F x)
    (hAgree : ∀ v : Vec3,
      F (torsionEmbedding v) = finiteCatReadout v)
    (hOdd : HasOddLocalReturns catTorus
      (torsionEmbedding finiteWitness)) : False :=
  no_continuous_signEigen_of_oddLocalReturns
    catTorus F (torsionEmbedding finiteWitness)
    hContinuous hEigen
    (torsion_witness_positive F hAgree) hOdd

/-- CONDITIONAL no-extension theorem, with the precise missing
topological-mixing supplier visible in the theorem statement.
The external measure-mixing result is not imported here. -/
theorem no_continuous_cat_phase_extension_of_eventualOpenMixing
    (hMix : EventualOpenMixing catTorus) :
    ¬ ∃ F : Torus2 → ℂ,
      Continuous F ∧
      (∀ x : Torus2,
        F (catTorus x) = (-1 : ℂ) * F x) ∧
      (∀ v : Vec3,
        F (torsionEmbedding v) = finiteCatReadout v) := by
  rintro ⟨F, hCont, hEigen, hAgree⟩
  exact no_continuous_cat_phase_extension_of_oddLocalReturns
    F hCont hEigen hAgree
    (oddLocalReturns_of_eventualOpenMixing
      catTorus hMix (torsionEmbedding finiteWitness))

end GRWTSK.NumberTheory.Farey.CatMapContinuousPhaseObstruction
```
