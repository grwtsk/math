# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.ScrewQuarticPathControl

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ff188e872ee3fd2417f791bd39dccbbbf1e1ad5b` · SHA-256 `4e0eb792fe377d199e489fc7baa8d7c3b04d801b82833688cde20f3bcf1f935d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI Codex.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.Algebra.Polynomial.ConjugateQuartic
import GRWTSK.Combinatorics.GraphTheory.CertifiedPathOptimization
import GRWTSK.NumberTheory.Zeta.Riemann.ScrewKernelRefinement
import Mathlib.Tactic.Linarith
import Mathlib.Tactic.Positivity
import Mathlib.Tactic.Ring

set_option autoImplicit false

/-!
# Certified path control for the screw kernel and conjugate quartic

The path objective has two separately auditable terms: a nonnegative reconstruction error
returned to the actual screw functional, and the negated conjugate-quartic witness trace.
The latter is nonnegative and vanishes exactly when the transverse zero coordinate is zero.
Thus a proof-directed optimizer may replace one fully certified path by another only after
proving a strict decrease in the combined objective.

Boundary positivity is supplied through an explicit tracker aspect. A consumer intended to
use the classical Riemann--Siegel function must separately identify its tracker with that
function and prove the required sign statements. The quasi-Riemann zero-free half-plane,
a finite coloring certificate, and a finite-state presentation are distinct premises; none
is silently converted into another here.
-/

namespace GRWTSK.NumberTheory.Zeta.Riemann.ScrewQuarticPathControl

open GRWTSK.Polynomial.ConjugateQuartic
open GRWTSK.Combinatorics.GraphTheory.CertifiedPathOptimization
open GRWTSK.LinearAlgebra.LinearMap.ReedSolomonRefinement
open GRWTSK.NumberTheory.Zeta.Riemann.ScrewKernelRefinement

/-- The nonnegative magnitude of the signed quartic witness obstruction. -/
noncomputable def quarticPenalty (transverse height : ℝ) : ℝ :=
  -witnessTrace transverse height

theorem quarticPenalty_eq (transverse height : ℝ) :
    quarticPenalty transverse height =
      4 * transverse ^ 2 * (transverse ^ 2 + 3 * height ^ 2) := by
  unfold quarticPenalty
  rw [witnessTrace_eq]
  ring

theorem quarticPenalty_nonnegative (transverse height : ℝ) :
    0 ≤ quarticPenalty transverse height := by
  rw [quarticPenalty_eq]
  positivity

theorem quarticPenalty_positive {transverse : ℝ} (nonzero : transverse ≠ 0)
    (height : ℝ) : 0 < quarticPenalty transverse height := by
  unfold quarticPenalty
  exact neg_pos.mpr (witnessTrace_neg nonzero height)

theorem quarticPenalty_eq_zero_iff (transverse height : ℝ) :
    quarticPenalty transverse height = 0 ↔ transverse = 0 := by
  constructor
  · intro zero
    by_contra nonzero
    have positive := quarticPenalty_positive nonzero height
    linarith
  · rintro rfl
    rw [quarticPenalty_eq]
    simp

/-- The combined objective used to compare two already certified paths. The screw-error
term must come from an independent source-preserving reconstruction estimate. -/
structure ScrewQuarticObjective (P : Type*) where
  screwError : P → ℝ
  screwError_nonnegative : ∀ candidate, 0 ≤ screwError candidate
  transverse : P → ℝ
  height : P → ℝ

/-- Reconstruction error plus quartic obstruction. -/
noncomputable def ScrewQuarticObjective.cost {P : Type*}
    (objective : ScrewQuarticObjective P) (candidate : P) : ℝ :=
  objective.screwError candidate +
    quarticPenalty (objective.transverse candidate) (objective.height candidate)

/-- Regard the combined screw/quartic cost as the generic optimization objective. -/
noncomputable def ScrewQuarticObjective.toObjective {P : Type*}
    (objective : ScrewQuarticObjective P) : Objective P where
  cost := objective.cost

theorem ScrewQuarticObjective.cost_nonnegative {P : Type*}
    (objective : ScrewQuarticObjective P) (candidate : P) :
    0 ≤ objective.cost candidate :=
  add_nonneg (objective.screwError_nonnegative candidate)
    (quarticPenalty_nonnegative (objective.transverse candidate) (objective.height candidate))

/-- A graph-node payload carrying the Reed--Solomon observation and the numerical data
used by the combined path objective. The heterogeneous audit record remains inside the
observation and is not coerced into the scalar objective. -/
structure ReedSolomonScrewNode (Syndrome Comparison : Type*) (Coverage : Prop) where
  observation : Observation Symbols Syndrome Comparison Coverage
  transverse : ℝ
  height : ℝ
  screwError : ℝ
  screwError_nonnegative : 0 ≤ screwError

/-- The canonical combined objective on Reed--Solomon screw nodes. -/
noncomputable def reedSolomonNodeObjective
    {Syndrome Comparison : Type*} {Coverage : Prop} :
    ScrewQuarticObjective (ReedSolomonScrewNode Syndrome Comparison Coverage) where
  screwError := fun node => node.screwError
  screwError_nonnegative := fun node => node.screwError_nonnegative
  transverse := fun node => node.transverse
  height := fun node => node.height

/-- Intended adapter for a positive Riemann--Siegel boundary. The supplied function must be
identified with the classical `Z` function by a separate analytic theorem. -/
def positiveRiemannSiegelAspect {P : Type*}
    (height : P → ℝ) (riemannSiegel : ℝ → ℝ) : Aspect P :=
  trackerPositiveAspect height riemannSiegel

@[simp]
theorem positiveRiemannSiegelAspect_accepts {P : Type*}
    (height : P → ℝ) (riemannSiegel : ℝ → ℝ) (candidate : P) :
    (positiveRiemannSiegelAspect height riemannSiegel).accepts candidate ↔
      0 ≤ riemannSiegel (height candidate) :=
  Iff.rfl

/-- Optimization keeps every woven source, coverage, boundary, and moment certificate and
strictly decreases the combined screw/quartic objective. -/
theorem optimize_preserves_aspects_and_improves
    {ι P : Type*} (objective : ScrewQuarticObjective P)
    {aspects : ι → Aspect P} (current candidate : Certified aspects)
    (improvement : StrictImprovement objective.toObjective current candidate) :
    Woven aspects (optimize objective.toObjective current candidate improvement).value ∧
      objective.cost (optimize objective.toObjective current candidate improvement).value <
        objective.cost current.value := by
  change Woven aspects candidate.value ∧
    objective.cost candidate.value < objective.cost current.value
  exact ⟨candidate.woven, by
    simpa [ScrewQuarticObjective.toObjective] using improvement.better⟩

end GRWTSK.NumberTheory.Zeta.Riemann.ScrewQuarticPathControl
```
