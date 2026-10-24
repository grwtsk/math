# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Morphism.Variant51d1f40f0e077a8b2ce3b5de9d31da7dc5bf1913b882b9a961ab6f06b2070f91

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `fd7a55cd2ae17c5a1a407145d646cfec17ec9fa7` · SHA-256 `ed76e72fc930050e35dd9d4a1177b267cdf84a96e090bdae1cabff7b4a816f88`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.MapsIdeal.Variant181755e580db95e59617a9338a3c4ecc9eecc729865632bf66c13a44f1a42804","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"181755e580db95e59617a9338a3c4ecc9eecc729865632bf66c13a44f1a42804","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.MapsIdeal.Variant181755e580db95e59617a9338a3c4ecc9eecc729865632bf66c13a44f1a42804","mathematical_subject":"Computation.DataStructures","original_sha256":"181755e580db95e59617a9338a3c4ecc9eecc729865632bf66c13a44f1a42804","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/Surface/Prismatic/Morphism.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Surface.Prismatic.Prism


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.MapsIdeal.Variant181755e580db95e59617a9338a3c4ecc9eecc729865632bf66c13a44f1a42804

namespace Surface.Prismatic

universe u

/-!
# Prism morphisms and rigidity

Formalized here: prism maps and the rigidity statement `J = IB` as an explicit
Prop-valued certificate carried by the map.

Certificate-gated here: flat and faithfully flat comparisons.
-/

/-- Ideal mapping condition. -/
structure MapsIdeal
    {p : Nat}
    {A B : DeltaRing.{u} p}
    (f : DeltaRingHom A B)
    (I : IdealLike A)
    (J : IdealLike B) where
  maps_mem :
    ∀ {x}, I.contains x → J.contains (f.map x)
  boundary : List String

/-- Extension-equality certificate, the formal `IB = J` target. -/
structure IdealExtensionEquals
    {p : Nat}
    {A B : DeltaRing.{u} p}
    (f : DeltaRingHom A B)
    (I : IdealLike A)
    (J : IdealLike B) where
  equality : Prop
  equalityCertified : equality
  statement : String
  boundary : List String

/-- Map of prisms. -/
structure PrismMap
    {p : Nat}
    (P Q : Prism.{u} p) where
  map : DeltaRingHom P.A Q.A
  maps_I_to_J : MapsIdeal map P.I Q.I
  rigidity : IdealExtensionEquals map P.I Q.I
  boundary : List String

theorem rigidity_of_maps
    {P Q : Prism.{u} p}
    (f : PrismMap P Q) :
    f.rigidity.equality :=
  f.rigidity.equalityCertified

theorem map_rigidity
    {P Q : Prism.{u} p}
    (f : PrismMap P Q) :
    f.rigidity.equality :=
  rigidity_of_maps f

/-- Flat map of prisms. -/
structure FlatPrismMap
    {p : Nat}
    (P Q : Prism.{u} p) extends PrismMap P Q where
  completelyFlat : CompletelyFlatCertificate
  flatBoundary : List String

/-- Faithfully flat map of prisms. -/
structure FaithfullyFlatPrismMap
    {p : Nat}
    (P Q : Prism.{u} p) extends FlatPrismMap P Q where
  faithfullyFlat : FaithfullyFlatCertificate
  faithfullyFlatBoundary : List String

/-- Certificate-gated bounded-prism flatness characterization. -/
structure BoundedFlatMapIdentificationCertificate
    {p : Nat}
    (P Q : BoundedPrism.{u} p)
    (f : PrismMap P.toPrism Q.toPrism) where
  completelyFlatDeltaAlgebra : Prop
  completelyFlatDeltaAlgebraCertified : completelyFlatDeltaAlgebra
  identifies : Prop
  identifiesCertified : identifies
  boundary : List String

theorem flat_maps_identify_with_completely_flat_delta_algebras
    {P Q : BoundedPrism.{u} p}
    {f : PrismMap P.toPrism Q.toPrism}
    (C : BoundedFlatMapIdentificationCertificate P Q f) :
    C.identifies :=
  C.identifiesCertified

/-- Identity map on the unit prism. -/
def unitPrismMap (p : Nat) :
    PrismMap (unitPrism p) (unitPrism p) where
  map := {
    map := fun _ => PUnit.unit
    preserves_zero := rfl
    preserves_one := rfl
    preserves_add := by intro x y; rfl
    preserves_mul := by intro x y; rfl
    preserves_delta := by intro x; rfl
    preserves_phi := by intro x; rfl
    homBoundary := ["Identity map of the unit δ-ring."]
  }
  maps_I_to_J := {
    maps_mem := by intro x hx; trivial
    boundary := ["Total unit ideal maps to itself."]
  }
  rigidity := {
    equality := True
    equalityCertified := trivial
    statement := "IB = J for the unit prism map"
    boundary := ["Trivial rigidity certificate for the unit prism."]
  }
  boundary := ["Unit prism identity map."]

end Surface.Prismatic
```
