# Complete source: GRWTSK.Geometry.AlgebraicGeometry.Integral.Variantd7c4e006a71fbec044f2958e640335d0c1f563c5b141bb50acc7c9ebc536697d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `12be92f1764926d5417079abbd86805ee833fbea` · SHA-256 `5a5d78f801d368d664c765f6dd3e758e2e62111a46a931a9aba8c87cd1ef2bff`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Geometry.AlgebraicGeometry
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Geometry.AlgebraicGeometry.GeometricallyIntegral.Variant2c2a5820c355cfa045259e02eb0d47e3513e26898e59b4cff3d3efefa2a499d4","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"2c2a5820c355cfa045259e02eb0d47e3513e26898e59b4cff3d3efefa2a499d4","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.MixedSubjects.SourceCorpus.GeometricallyIntegral.Variant2c2a5820c355cfa045259e02eb0d47e3513e26898e59b4cff3d3efefa2a499d4","mathematical_subject":"Foundations.MixedSubjects","original_sha256":"2c2a5820c355cfa045259e02eb0d47e3513e26898e59b4cff3d3efefa2a499d4","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/AlgebraicGeometry/Geometrically/Integral.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2026 Andrew Yang. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Andrew Yang
-/
module

public import Mathlib.AlgebraicGeometry.Geometrically.Reduced
public import Mathlib.AlgebraicGeometry.Geometrically.Irreducible

/-!
# Geometrically Integral Schemes

## Main results
- `AlgebraicGeometry.GeometricallyIntegral`:
  We say that morphism `f : X ⟶ Y` is geometrically integral if for all `Spec K ⟶ Y` with `K`
  a field, `X ×[Y] Spec K` is integral.
  We also provide the fact that this is stable under base change (`by infer_instance`)
- `GeometricallyIntegral.iff_geometricallyIntegral_fiber`:
  A scheme is geometrically integral over `S` iff the fibers of all
  `s : S` are geometrically integral.
- `AlgebraicGeometry.GeometricallyIntegral.isIntegral_of_isLocallyNoetherian`:
  If `X` is geometrically integral, flat, and universally open (e.g. when over a field),
  over an integral locally noetherian scheme, then `X` is also integral.
- `AlgebraicGeometry.GeometricallyIntegral.isIntegral_of_subsingleton`:
  If `X` is geometrically integral over a field, then it is integral.
-/


namespace GRWTSK.Geometry.AlgebraicGeometry.GeometricallyIntegral.Variant2c2a5820c355cfa045259e02eb0d47e3513e26898e59b4cff3d3efefa2a499d4

public section

open CategoryTheory MorphismProperty Limits

namespace AlgebraicGeometry

variable {X Y S : Scheme} (f : X ⟶ S) (g : Y ⟶ S)

/-- We say that morphism `f : X ⟶ Y` is geometrically integral if for all `Spec K ⟶ Y` with `K`
a field, `X ×[Y] Spec K` is integral. -/
@[mk_iff]
class GeometricallyIntegral (f : X ⟶ Y) : Prop where
  geometrically_isIntegral : geometrically IsIntegral f

lemma GeometricallyIntegral.eq_geometrically :
    @GeometricallyIntegral = geometrically IsIntegral := by
  ext; exact geometricallyIntegral_iff _

lemma GeometricallyIntegral.eq_geometricallyReduced_inf_geometricallyIrreducible :
    @GeometricallyIntegral =
      (@GeometricallyReduced ⊓ @GeometricallyIrreducible : MorphismProperty Scheme) := by
  rw [eq_geometrically, GeometricallyReduced.eq_geometrically,
    GeometricallyIrreducible.eq_geometrically, ← geometrically_inf]
  eta_expand
  simp [isIntegral_iff_irreducibleSpace_and_isReduced, and_comm]

instance (priority := low) [GeometricallyIntegral f] : GeometricallyReduced f :=
  (GeometricallyIntegral.eq_geometricallyReduced_inf_geometricallyIrreducible.le _ _ _ ‹_›).1

instance (priority := low) [GeometricallyIntegral f] : GeometricallyIrreducible f :=
  (GeometricallyIntegral.eq_geometricallyReduced_inf_geometricallyIrreducible.le _ _ _ ‹_›).2

lemma GeometricallyIntegral.of_geometricallyReduced_of_geometricallyIrreducible
    [GeometricallyReduced f] [GeometricallyIrreducible f] :
    GeometricallyIntegral f :=
  GeometricallyIntegral.eq_geometricallyReduced_inf_geometricallyIrreducible.ge _ _ _ ⟨‹_›, ‹_›⟩

instance : IsStableUnderBaseChange @GeometricallyIntegral :=
  GeometricallyIntegral.eq_geometrically ▸ inferInstance

set_option backward.isDefEq.respectTransparency.types false in
instance [GeometricallyIntegral g] : GeometricallyIntegral (pullback.fst f g) :=
  MorphismProperty.pullback_fst f g inferInstance

set_option backward.isDefEq.respectTransparency.types false in
instance [GeometricallyIntegral f] : GeometricallyIntegral (pullback.snd f g) :=
  MorphismProperty.pullback_snd f g inferInstance

instance (V : S.Opens) [GeometricallyIntegral f] : GeometricallyIntegral (f ∣_ V) :=
  MorphismProperty.of_isPullback (isPullback_morphismRestrict ..).flip ‹_›

set_option backward.isDefEq.respectTransparency.types false in
instance (s : S) [GeometricallyIntegral f] :
    GeometricallyIntegral (f.fiberToSpecResidueField s) :=
  MorphismProperty.pullback_snd _ _ inferInstance

instance (s : S) [GeometricallyIntegral f] : IsIntegral (f.fiber s) :=
  GeometricallyIntegral.geometrically_isIntegral _ _ _ (.of_hasPullback _ _)

instance (priority := low) [GeometricallyIntegral f] : Surjective f :=
  ⟨fun x ↦ ⟨_, (f.range_fiberι x).le ⟨Nonempty.some inferInstance, rfl⟩⟩⟩

lemma GeometricallyIntegral.isIntegral_of_isLocallyNoetherian
    [GeometricallyIntegral f] [Flat f] [UniversallyOpen f]
    [IsIntegral S] [IsLocallyNoetherian S] : IsIntegral X := by
  rw [isIntegral_iff_irreducibleSpace_and_isReduced]
  exact ⟨GeometricallyIrreducible.irreducibleSpace f f.isOpenMap,
    GeometricallyReduced.isReduced_of_flat_of_isLocallyNoetherian f⟩

/-- If `X` is geometrically integral over a field, then it is integral. -/
lemma GeometricallyIntegral.isIntegral_of_subsingleton
    [GeometricallyIntegral f] [Subsingleton S] [IsIntegral S] : IsIntegral X := by
  rw [isIntegral_iff_irreducibleSpace_and_isReduced]
  refine ⟨GeometricallyIrreducible.irreducibleSpace_of_subsingleton f,
    GeometricallyReduced.isReduced_of_flat_of_isLocallyNoetherian f⟩

/-- If `X` is geometrically integral and flat and universally open over `S` and `Y` is integral
and locally noetherian, then `X ×ₛ Y` is integral. -/
instance [GeometricallyIntegral f] [Flat f] [UniversallyOpen f] [IsIntegral Y]
    [IsLocallyNoetherian Y] : IsIntegral (pullback f g) :=
  GeometricallyIntegral.isIntegral_of_isLocallyNoetherian (pullback.snd _ _)

instance [GeometricallyIntegral g] [Flat g] [UniversallyOpen g]
    [IsIntegral X] [IsLocallyNoetherian X] :
    IsIntegral (pullback f g) :=
  GeometricallyIntegral.isIntegral_of_isLocallyNoetherian (pullback.fst _ _)

lemma GeometricallyIntegral.iff_geometricallyIntegral_fiber :
    GeometricallyIntegral f ↔ ∀ s, GeometricallyIntegral (f.fiberToSpecResidueField s) := by
  simp only [GeometricallyIntegral.eq_geometrically,
    ← geometrically_iff_forall_fiberToSpecResidueField]

end AlgebraicGeometry
```
