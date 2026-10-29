-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.GoodReductionCertificate.Variant9547d56e850eab6ca94150905ae82cf4e52cb96f487ad0c77efbc8c4a43724eb","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"9547d56e850eab6ca94150905ae82cf4e52cb96f487ad0c77efbc8c4a43724eb","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.GoodReductionCertificate.Variant9547d56e850eab6ca94150905ae82cf4e52cb96f487ad0c77efbc8c4a43724eb","mathematical_subject":"Computation.DataStructures","original_sha256":"9547d56e850eab6ca94150905ae82cf4e52cb96f487ad0c77efbc8c4a43724eb","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/Surface/Arithmetic/EllipticCurve/PointCounting.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Surface.Arithmetic.EllipticCurve.GroupLaw


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.GoodReductionCertificate.Variant9547d56e850eab6ca94150905ae82cf4e52cb96f487ad0c77efbc8c4a43724eb

namespace Surface.Arithmetic
namespace EllipticCurve

universe u

/-!
# Finite-field point counting

Point counts are computed from an explicit finite enumeration.  The definitions
do not use sample constants as mathematical evidence.
-/

/-- Local good-reduction metadata. -/
structure GoodReductionCertificate
    (F : FiniteFieldLike.{u})
    (E : ShortWeierstrass F.field) where
  primeLabel : Nat
  reductionGood : Prop
  reductionGoodCertified : reductionGood
  boundary : List String

/-- A local finite-field point count. -/
structure PointCountData
    (F : FiniteFieldLike.{u}) where
  curveLabel : String
  count : Nat
  goodReduction? : Option String
  boundary : List String

namespace PointCounting

def appendMap {α β : Type u} (xs : List α) (f : α → List β) : List β :=
  match xs with
  | [] => []
  | x :: rest => f x ++ appendMap rest f

/-- All affine solutions over the supplied finite field enumeration. -/
def affineSolutions
    (F : FiniteFieldLike.{u})
    (E : ShortWeierstrass F.field) :
    List (F.field.Carrier × F.field.Carrier) :=
  appendMap F.enumeration.elements
    (fun x =>
      F.enumeration.elements.filterMap
        (fun y =>
          if onCurveBool E x y then
            some (x, y)
          else
            none))

/-- The total point count includes the point at infinity exactly once. -/
def pointCount
    (F : FiniteFieldLike.{u})
    (E : ShortWeierstrass F.field) :
    Nat :=
  (affineSolutions F E).length + 1

/-- The trace coefficient `a_p = p + 1 - #E(F_p)`, represented as an integer. -/
def ap
    (F : FiniteFieldLike.{u})
    (E : ShortWeierstrass F.field) :
    Int :=
  (F.cardinality : Int) + 1 - (pointCount F E : Int)

theorem pointCount_includes_infinity_once
    (F : FiniteFieldLike.{u})
    (E : ShortWeierstrass F.field) :
    pointCount F E = (affineSolutions F E).length + 1 := by
  rfl

end PointCounting

/-- Count for the example curve over `F2`. -/
def exampleF2PointCount : Nat :=
  PointCounting.pointCount F2 exampleCurveF2

/-- Count for the example curve over `F3`. -/
def exampleF3PointCount : Nat :=
  PointCounting.pointCount F3 exampleCurveF3

/-- Count for the example curve over `F5`. -/
def exampleF5PointCount : Nat :=
  PointCounting.pointCount F5 exampleCurveF5

theorem exampleF2PointCount_eq_three :
    exampleF2PointCount = 3 := by
  native_decide

theorem exampleF3PointCount_eq_four :
    exampleF3PointCount = 4 := by
  native_decide

theorem exampleF5PointCount_eq_nine :
    exampleF5PointCount = 9 := by
  native_decide

end EllipticCurve
end Surface.Arithmetic
