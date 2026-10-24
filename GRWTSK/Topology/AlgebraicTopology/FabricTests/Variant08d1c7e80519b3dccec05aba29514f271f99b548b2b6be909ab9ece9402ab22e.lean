-- corpus-organization-transform:v1
-- Mathematical subject: Topology.AlgebraicTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.AlgebraicTopology.UnitSystem.Variant57bcb0f4cd174c4fa6b39d6c019da97064fefaa2c4dcb5dfc80d6b1cd20781c9","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"57bcb0f4cd174c4fa6b39d6c019da97064fefaa2c4dcb5dfc80d6b1cd20781c9","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.AlgebraicTopology.SourceCorpus.UnitSystem.Variant57bcb0f4cd174c4fa6b39d6c019da97064fefaa2c4dcb5dfc80d6b1cd20781c9","mathematical_subject":"Topology.AlgebraicTopology","original_sha256":"57bcb0f4cd174c4fa6b39d6c019da97064fefaa2c4dcb5dfc80d6b1cd20781c9","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/.codex/audits/native-world-model-4d75f63f/replay-d050d760/Surface/DAF/Integration/FabricTests.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import DAF.Fabric.Core
import BinaryMatrix.Adapters.Fabric
import FilesystemCodec.Adapters.Fabric
import Mathlib.AlgebraicTopology.SimplicialSet.StdSimplex

/-!
# Core fabric integration tests

These compile-time fixtures exercise genuine Mathlib standard simplices with
constant declarative presentations.  They test incidence and contract typing;
the word “realization” is deliberately absent because a simplicial diagram is
not automatically a geometric or homotopy-correct realization.
-/


namespace GRWTSK.Topology.AlgebraicTopology.UnitSystem.Variant57bcb0f4cd174c4fa6b39d6c019da97064fefaa2c4dcb5dfc80d6b1cd20781c9

namespace DAF.Integration.FabricTests

open CategoryTheory
open DAF.Fabric

/-- The minimal transition system used by incidence-only tests. -/
def unitSystem : DAF.System where
  Input := PUnit
  State := PUnit
  Resolution := PUnit
  Observation := fun _ => PUnit
  step := fun _ _ => PUnit.unit
  observe := fun _ _ => PUnit.unit

/-- A declarative unit presentation with a trivially stable invariant. -/
def unitPresentation : Presentation where
  system := unitSystem
  invariant := fun _ => True
  invariant_step := by intros; trivial
  name := `DAF.Integration.UnitPresentation
  version := ⟨0, 1, 0⟩

/-- Put one fixed presentation on every cell of an arbitrary shape. -/
def constantPresentedFabric (shape : Shape) (P : Presentation) :
    DAF.Fabric.Fabric where
  shape := shape
  presentation := fun _ _ => P
  contract := fun _ _ => Presentation.Hom.id P
  contract_id := by intros; rfl
  contract_comp := by
    intros
    apply Presentation.Hom.ext <;> rfl

/-- The genuine standard one-simplex. -/
def oneSimplexShape : Shape :=
  SSet.stdSimplex.obj (SimplexCategory.mk 1)

/-- Its nondegenerate representing edge. -/
def canonicalEdge : oneSimplexShape.Cell 1 :=
  SSet.stdSimplex.objEquiv.symm (𝟙 (SimplexCategory.mk 1))

def oneSimplexFabric : DAF.Fabric.Fabric :=
  constantPresentedFabric oneSimplexShape unitPresentation

example (i : Fin 2) :
    (oneSimplexFabric.faceContract i canonicalEdge).mapState PUnit.unit =
      PUnit.unit :=
  rfl

example (i : Fin 2) :
    (oneSimplexFabric.faceContract i canonicalEdge).toHom =
      DAF.System.Hom.id unitSystem :=
  rfl

/-- The genuine standard two-simplex. -/
def triangleShape : Shape :=
  SSet.stdSimplex.obj (SimplexCategory.mk 2)

/-- Its nondegenerate representing triangle. -/
def canonicalTriangle : triangleShape.Cell 2 :=
  SSet.stdSimplex.objEquiv.symm (𝟙 (SimplexCategory.mk 2))

def triangleFabric : DAF.Fabric.Fabric :=
  constantPresentedFabric triangleShape unitPresentation

/-- Every two-stage boundary route agrees with restriction by its composite. -/
example
    (edge : SimplexOperator 1 2)
    (vertex : SimplexOperator 0 1) :
    triangleShape.restrict (vertex ≫ edge) canonicalTriangle =
      triangleShape.restrict vertex
        (triangleShape.restrict edge canonicalTriangle) :=
  triangleShape.restrict_comp vertex edge canonicalTriangle

example
    (edge : SimplexOperator 1 2)
    (vertex : SimplexOperator 0 1) :
    triangleFabric.contract (vertex ≫ edge) canonicalTriangle =
      triangleFabric.contract edge canonicalTriangle ≫
        triangleFabric.contract vertex
          (triangleShape.restrict edge canonicalTriangle) ≫
        eqToHom
          (congrArg (triangleFabric.presentation 0)
            (triangleShape.restrict_comp vertex edge canonicalTriangle).symm) :=
  triangleFabric.contract_comp_apply vertex edge canonicalTriangle

/-- A vertex and its degenerate identity-expanded edge. -/
def canonicalVertex : oneSimplexShape.Cell 0 :=
  SSet.stdSimplex.objEquiv.symm
    (SimplexCategory.const
      (SimplexCategory.mk 0) (SimplexCategory.mk 1) (0 : Fin 2))

def degenerateEdge : oneSimplexShape.Cell 1 :=
  oneSimplexShape.degeneracy (0 : Fin 1) canonicalVertex

example :
    (oneSimplexFabric.degeneracyContract (0 : Fin 1) canonicalVertex).mapState
        PUnit.unit = PUnit.unit :=
  rfl

/-! ## Existing domain adapters -/

example (M : BinMat 2 3) :
    (BinaryMatrix.Adapters.Fabric.coordinateContract
      (0 : Fin 2) (1 : Fin 3)).mapState M = M 0 1 :=
  rfl

example :
    ∃ p q :
        (FilesystemCodec.Adapters.Fabric.allPacketCodec
          (r := 2) (by decide)).ValidPacketType,
      p ≠ q ∧
        p.1.toVariableMatrix = q.1.toVariableMatrix :=
  FilesystemCodec.Adapters.Fabric.fullPacket_distinguishes_matrixOnly

end DAF.Integration.FabricTests
