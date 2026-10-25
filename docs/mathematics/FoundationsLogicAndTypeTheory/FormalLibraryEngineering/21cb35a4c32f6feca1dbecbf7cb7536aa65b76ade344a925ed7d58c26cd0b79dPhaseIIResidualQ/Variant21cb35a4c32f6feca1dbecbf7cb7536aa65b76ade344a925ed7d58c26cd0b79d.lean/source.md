# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.21cb35a4c32f6feca1dbecbf7cb7536aa65b76ade344a925ed7d58c26cd0b79dPhaseIIResidualQ.Variant21cb35a4c32f6feca1dbecbf7cb7536aa65b76ade344a925ed7d58c26cd0b79d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6cb6e252a328366bcacac121693e30ee7275db78` · SHA-256 `21cb35a4c32f6feca1dbecbf7cb7536aa65b76ade344a925ed7d58c26cd0b79d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.PositiveAtlas.SolverIndependence

/-!
# Canonical Phase-II residual quotient

This module packages the solver-independent provenance residual geometry as a
Phase-II quotient object.

A block normal-equation solver determines a residual transport and hence a
positive residual form. Solver independence proves that the resulting bilinear
form does not depend on which solver is used. The quotient object therefore
stores one representative only as construction data while exposing a universal
geometry theorem against every other representative.

The module also connects this quotient to the certificate-relative core. The
admitted Phase-II certificate family consists of all residual pairings
(u,v) ↦ G_res(u,v). Since all admitted solvers produce the same pairings,
solver choice has a one-point minimal sufficient representation. This is a
certificate-relative structural Quine for the solver-choice quotient; it does
not assert any self-certification of the ambient verifier.
-/

namespace FormalResearch.PositiveAtlas

universe u v c

variable {P : Type u} {U : Type v}
variable [AddCommGroup P] [Module ℝ P]
variable [AddCommGroup U] [Module ℝ U]

namespace BlockSchurSolver

variable {G : PositiveForm (P × U)}

/-- A block solver determines a provenance residualization from autonomous
coordinates directly into the ambient positive space. -/
def phaseIIResidualization (S : BlockSchurSolver G) :
    ProvenanceResidualization (P × U) U where
  residualMap :=
    (autonomousInclusion : U →ₗ[ℝ] P × U) -
      (provenanceInclusion : P →ₗ[ℝ] P × U).comp S.solve

@[simp]
theorem phaseIIResidualization_apply
    (S : BlockSchurSolver G) (u : U) :
    S.phaseIIResidualization.residualMap u =
      autonomousInclusion u - provenanceInclusion (S.solve u) := by
  simp [phaseIIResidualization]

/-- The general ProvenanceResidualization interface recovers exactly the Schur
residual geometry of the solver. -/
theorem phaseIIResidualization_form_eq_schur
    (S : BlockSchurSolver G) (u v : U) :
    (S.phaseIIResidualization.residualForm G).form u v =
      S.schurForm.form u v := by
  change
    G.form (S.phaseIIResidualization.residualMap u)
        (S.phaseIIResidualization.residualMap v) =
      G.form (S.projector.residualMap (autonomousInclusion u))
        (S.projector.residualMap (autonomousInclusion v))
  rw [S.phaseIIResidualization_apply, S.phaseIIResidualization_apply,
    S.residual_autonomous, S.residual_autonomous]

end BlockSchurSolver

/-- The certificate-relevant observables of Phase II are all residual bilinear
pairings. -/
def phaseIIResidualCertificateFamily
    (G : PositiveForm (P × U)) :
    CertificateFamily (BlockSchurSolver G) (U × U) where
  value := fun _ => ℝ
  observe := fun uv S => S.schurForm.form uv.1 uv.2

/-- Every pair of admitted solvers is equivalent for the complete Phase-II
residual certificate family. -/
theorem phaseIIResidualCertificate_equivalent
    {G : PositiveForm (P × U)} (S T : BlockSchurSolver G) :
    (phaseIIResidualCertificateFamily G).Equivalent S T := by
  intro uv
  exact S.schur_pairing_independent T uv.1 uv.2

/-- A canonical Phase-II quotient stores one solver as construction data. Its
observable geometry is independent of that representative by theorem. -/
structure PhaseIIResidualQuotient (G : PositiveForm (P × U)) where
  representative : BlockSchurSolver G

namespace PhaseIIResidualQuotient

variable {G : PositiveForm (P × U)}

/-- The canonical positive residual geometry represented by the quotient. -/
def geometry (Q : PhaseIIResidualQuotient G) : PositiveForm U :=
  Q.representative.schurForm

/-- A residual transport representing the quotient through the general
ProvenanceResidualization interface. -/
def residualization (Q : PhaseIIResidualQuotient G) :
    ProvenanceResidualization (P × U) U :=
  Q.representative.phaseIIResidualization

/-- The quotient residualization realizes exactly the quotient geometry. -/
theorem residualization_form_eq_geometry
    (Q : PhaseIIResidualQuotient G) (u v : U) :
    (Q.residualization.residualForm G).form u v =
      Q.geometry.form u v :=
  Q.representative.phaseIIResidualization_form_eq_schur u v

/-- Universal representative independence: every admitted solver realizes
exactly the same residual bilinear form as the quotient. -/
theorem geometry_form_eq_solver
    (Q : PhaseIIResidualQuotient G) (S : BlockSchurSolver G) :
    Q.geometry.form = S.schurForm.form :=
  Q.representative.schurForm_form_eq S

/-- Any two quotient representatives determine exactly the same positive
bilinear geometry. -/
theorem geometry_form_eq
    (Q R : PhaseIIResidualQuotient G) :
    Q.geometry.form = R.geometry.form :=
  Q.geometry_form_eq_solver R.representative

/-- Quotient visibility is independent of every solver representative. -/
theorem visible_iff_solver
    (Q : PhaseIIResidualQuotient G) (S : BlockSchurSolver G) (u : U) :
    Q.geometry.Visible u ↔ S.schurForm.Visible u :=
  Q.representative.schur_visible_iff S u

/-- Quotient nullity is independent of every solver representative. -/
theorem isNull_iff_solver
    (Q : PhaseIIResidualQuotient G) (S : BlockSchurSolver G) (u : U) :
    Q.geometry.IsNull u ↔ S.schurForm.IsNull u :=
  Q.representative.schur_isNull_iff S u

/-- Solver choice compresses to a one-point sufficient representation because
all admitted residual-pairing observables are solver-independent. -/
def solverChoiceRepresentation
    (Q : PhaseIIResidualQuotient G) :
    SufficientRepresentation.{max u v, v, 0, 0} (phaseIIResidualCertificateFamily G) where
  carrier := Unit
  compress := fun _ => ()
  recover := fun uv _ => Q.geometry.form uv.1 uv.2
  recover_compress := by
    intro uv S
    exact Q.representative.schur_pairing_independent S uv.1 uv.2

/-- The one-point solver-choice representation is minimal among all exact
sufficient representations of the Phase-II residual certificates. -/
theorem solverChoiceRepresentation_minimal
    (Q : PhaseIIResidualQuotient G) :
    SufficientRepresentation.IsMinimal.{max u v, v, 0, 0, c}
      Q.solverChoiceRepresentation := by
  intro R
  refine ⟨fun _ => (), ?_⟩
  funext S
  rfl

/-- The solver-choice quotient is a certificate-relative structural Quine:
reconstructing its unique compressed point returns a representative with exactly
the same complete residual certificate family. -/
def solverChoiceStructuralQuine
    (Q : PhaseIIResidualQuotient G) :
    StructuralQuine.{max u v, v, 0, 0, c} (phaseIIResidualCertificateFamily G) where
  quotient := Q.solverChoiceRepresentation
  reconstruct := fun _ => Q.representative
  «section» := by
    intro q
    cases q
    rfl
  reconstruct_equivalent := by
    intro S
    exact phaseIIResidualCertificate_equivalent Q.representative S
  minimal := solverChoiceRepresentation_minimal.{u, v, c} Q

end PhaseIIResidualQuotient

universe w z

variable {ι : Type w} {κ : Type z}
variable [Fintype ι]
variable [Fintype κ]

/-- Package the singular positive-block construction as the canonical Phase-II
residual quotient. -/
noncomputable def singularPhaseIIResidualQuotient
    (G : PositiveForm ((ι → ℝ) × (κ → ℝ)))
    (A : Matrix ι ι ℝ) (B : Matrix ι κ ℝ)
    (hA : ∀ p q,
      G.form (provenanceInclusion p) (provenanceInclusion q) =
        p ⬝ᵥ A.mulVec q)
    (hB : ∀ p u,
      G.form (provenanceInclusion p) (autonomousInclusion u) =
        p ⬝ᵥ B.mulVec u) :
    PhaseIIResidualQuotient G where
  representative := singularBlockSchurSolver G A B hA hB

/-- The singular quotient geometry is positive semidefinite. -/
theorem singularPhaseIIResidualQuotient_nonnegative
    (G : PositiveForm ((ι → ℝ) × (κ → ℝ)))
    (A : Matrix ι ι ℝ) (B : Matrix ι κ ℝ)
    (hA : ∀ p q,
      G.form (provenanceInclusion p) (provenanceInclusion q) =
        p ⬝ᵥ A.mulVec q)
    (hB : ∀ p u,
      G.form (provenanceInclusion p) (autonomousInclusion u) =
        p ⬝ᵥ B.mulVec u)
    (u : κ → ℝ) :
    0 ≤ (singularPhaseIIResidualQuotient G A B hA hB).geometry.form u u :=
  (singularPhaseIIResidualQuotient G A B hA hB).geometry.nonnegative u

end FormalResearch.PositiveAtlas
```
