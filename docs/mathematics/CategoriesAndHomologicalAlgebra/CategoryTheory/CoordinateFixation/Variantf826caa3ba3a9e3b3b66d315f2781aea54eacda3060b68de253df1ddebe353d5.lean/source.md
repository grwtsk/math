# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.CoordinateFixation.Variantf826caa3ba3a9e3b3b66d315f2781aea54eacda3060b68de253df1ddebe353d5

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a2af706dfd90494678ab963686037e3fb42e6413` · SHA-256 `077b334795a818edfab507b7e1129f9b54acbe89682a4e734d1b3e9626cbfa28`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.PullbackConeLike.Variant0838cbc8a425f95be23e0d2b7aee76749682d19489f23c2f5278426d3128190d","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"0838cbc8a425f95be23e0d2b7aee76749682d19489f23c2f5278426d3128190d","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.PullbackConeLike.Variant0838cbc8a425f95be23e0d2b7aee76749682d19489f23c2f5278426d3128190d","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"0838cbc8a425f95be23e0d2b7aee76749682d19489f23c2f5278426d3128190d","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/22/Reflexive/formal/lean/fcrs/FCRS/ControlledPlane/CoordinateFixation.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FCRS.ControlledPlane.Foundations


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.PullbackConeLike.Variant0838cbc8a425f95be23e0d2b7aee76749682d19489f23c2f5278426d3128190d

universe uObj uHom vObj vHom uCoord

namespace FCRS.ControlledPlane

/--
A commutative pullback-shaped cone.  No universal property is asserted.
-/
structure PullbackConeLike (C : CategoryLike.{uObj, uHom}) where
  left : C.Obj
  right : C.Obj
  base : C.Obj
  apex : C.Obj
  fst : C.Hom apex left
  snd : C.Hom apex right
  leftLeg : C.Hom left base
  rightLeg : C.Hom right base
  commutes :
    C.comp fst leftLeg = C.comp snd rightLeg

/-- Functorial image of a pullback-shaped cone. -/
def mapPullbackConeLike
    {C : CategoryLike.{uObj, uHom}}
    {D : CategoryLike.{vObj, vHom}}
    (F : FunctorLike C D)
    (K : PullbackConeLike C) : PullbackConeLike D where
  left := F.obj K.left
  right := F.obj K.right
  base := F.obj K.base
  apex := F.obj K.apex
  fst := F.map K.fst
  snd := F.map K.snd
  leftLeg := F.map K.leftLeg
  rightLeg := F.map K.rightLeg
  commutes := by
    rw [← F.map_comp, ← F.map_comp, K.commutes]

/-- A chosen collection of pullback-shaped cones. -/
structure PullbackSpecification
    (C : CategoryLike.{uObj, uHom}) where
  designated : PullbackConeLike C → Prop

/-- Preservation of only the explicitly designated pullback-shaped cones. -/
def PreservesDesignatedPullbackShapes
    {C : CategoryLike.{uObj, uHom}}
    {D : CategoryLike.{vObj, vHom}}
    (F : FunctorLike C D)
    (source : PullbackSpecification C)
    (target : PullbackSpecification D) : Prop :=
  ∀ K, source.designated K →
    target.designated (mapPullbackConeLike F K)

/-- A family of coordinate-fixation functors. -/
structure CoordinateFixationLayer
    (Global : CategoryLike.{uObj, uHom})
    (Fixed : CategoryLike.{vObj, vHom})
    (Coord : Type uCoord) where
  fix : Coord → FunctorLike Global Fixed

/-- The intended closed-coordinate semantics of each fixation functor. -/
structure CoordinateFixationSpecification
    (Global : CategoryLike.{uObj, uHom})
    (Fixed : CategoryLike.{vObj, vHom})
    (Coord : Type uCoord) where
  realizes : Coord → FunctorLike Global Fixed → Prop

/-- A supplied fixation family realizes every declared closed coordinate. -/
def IsClosedCoordinateFixation
    {Global : CategoryLike.{uObj, uHom}}
    {Fixed : CategoryLike.{vObj, vHom}}
    {Coord : Type uCoord}
    (L : CoordinateFixationLayer Global Fixed Coord)
    (Q : CoordinateFixationSpecification Global Fixed Coord) : Prop :=
  ∀ c, Q.realizes c (L.fix c)

/--
The category-level non-functorial preservation predicates.  Identity and
composition preservation are already fields of each `FunctorLike`; typed
sieve and traversal transports live with their graph data in `Sieve.lean`.
-/
structure CoordinatePreservationSpecification
    (Global : CategoryLike.{uObj, uHom})
    (Fixed : CategoryLike.{vObj, vHom}) where
  globalPullbacks : PullbackSpecification Global
  fixedPullbacks : PullbackSpecification Fixed
  baseChangeCompatible : FunctorLike Global Fixed → Prop
  designatedOperationClosed : FunctorLike Global Fixed → Prop

/--
Compatibility with designated commutative pullback-shaped cones and with the
separately supplied base-change predicate.  This is not finite-limit
preservation: `PullbackConeLike` has no universal-property field.
-/
def DesignatedConeAndBaseChangeCompatible
    {Global : CategoryLike.{uObj, uHom}}
    {Fixed : CategoryLike.{vObj, vHom}}
    (Q : CoordinatePreservationSpecification Global Fixed)
    (F : FunctorLike Global Fixed) : Prop :=
  PreservesDesignatedPullbackShapes F Q.globalPullbacks Q.fixedPullbacks ∧
    Q.baseChangeCompatible F

/-- The separately designated operation-closure obligation. -/
def DesignatedOperationCompatible
    {Global : CategoryLike.{uObj, uHom}}
    {Fixed : CategoryLike.{vObj, vHom}}
    (Q : CoordinatePreservationSpecification Global Fixed)
    (F : FunctorLike Global Fixed) : Prop :=
  Q.designatedOperationClosed F

end FCRS.ControlledPlane
```
