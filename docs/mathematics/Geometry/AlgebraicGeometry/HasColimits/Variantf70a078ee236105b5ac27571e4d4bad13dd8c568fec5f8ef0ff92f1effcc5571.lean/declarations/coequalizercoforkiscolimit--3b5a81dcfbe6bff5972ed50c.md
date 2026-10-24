# coequalizerCoforkIsColimit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:996caa44a53c8c5c7a01f67d29f7a723cb4366e3045f366e16b87357db4cd69d",
  "kind": "def",
  "lexical_name": "coequalizerCoforkIsColimit",
  "mathematical_admission": "NOT_CLAIMED",
  "metrics": [
    {
      "coverage": "No exact-source compiler-observed verification dependency graph supplied.",
      "id": "spectral_log_volume",
      "profile": "docs/reference/ranking-profile.json",
      "profile_id": "spectral-volume-radius3-v1",
      "profile_sha256": "f8800b2ae8ab1d08df856bc79abc53dbafa1cbd922963b7247e927bf0ed9afd6",
      "radius": 3,
      "reason": "verification_dependency_graph_unavailable",
      "status": "UNAVAILABLE",
      "value": null
    }
  ],
  "schema": "grwtsk.source-declaration-article/1",
  "slug": "coequalizercoforkiscolimit--3b5a81dcfbe6bff5972ed50c",
  "source": {
    "blob": "5d1d31b8ff076c8c338694de7c1ab588cd37de0c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 325,
    "line": 293,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/HasColimits/Variantf70a078ee236105b5ac27571e4d4bad13dd8c568fec5f8ef0ff92f1effcc5571.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3b5a81dcfbe6bff5972ed50c6d3a443a33a8976e0735f937912ea7b961b18598",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/HasColimits/Variantf70a078ee236105b5ac27571e4d4bad13dd8c568fec5f8ef0ff92f1effcc5571.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:996caa44a53c8c5c7a01f67d29f7a723cb4366e3045f366e16b87357db4cd69d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 293–325.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def coequalizerCoforkIsColimit : IsColimit (coequalizerCofork f g) := by
  apply Cofork.IsColimit.mk'
  intro s
  have e : f.val ≫ s.π.val = g.val ≫ s.π.val := by injection s.condition
  refine ⟨⟨coequalizer.desc s.π.1 e, ?_⟩, ?_⟩
  · intro x
    rcases (TopCat.epi_iff_surjective (coequalizer.π f.val g.val).base).mp inferInstance x with
      ⟨y, rfl⟩
    -- Porting note : was `apply isLocalRingHom_of_comp _ (PresheafedSpace.stalkMap ...)`, this
    -- used to allow you to provide the proof that `... ≫ ...` is a local ring homomorphism later,
    -- but this is no longer possible
    set h := _
    change IsLocalRingHom h
    suffices : IsLocalRingHom ((PresheafedSpace.stalkMap (coequalizerCofork f g).π.1 _).comp h)
    · apply isLocalRingHom_of_comp _ (PresheafedSpace.stalkMap (coequalizerCofork f g).π.1 _)
    change IsLocalRingHom (_ ≫ PresheafedSpace.stalkMap (coequalizerCofork f g).π.val y)
    erw [← PresheafedSpace.stalkMap.comp]
    apply isLocalRingHom_stalkMap_congr _ _ (coequalizer.π_desc s.π.1 e).symm y
    infer_instance
  constructor
  · exact LocallyRingedSpace.Hom.ext _ _ (coequalizer.π_desc _ _)
  intro m h
  replace h : (coequalizerCofork f g).π.1 ≫ m.1 = s.π.1 := by rw [← h]; rfl
  apply LocallyRingedSpace.Hom.ext
  apply (colimit.isColimit (parallelPair f.1 g.1)).uniq (Cofork.ofπ s.π.1 e) m.1
  rintro ⟨⟩
  · rw [← (colimit.cocone (parallelPair f.val g.val)).w WalkingParallelPairHom.left,
      Category.assoc]
    change _ ≫ _ ≫ _ = _ ≫ _
    congr
  · exact h
#align algebraic_geometry.LocallyRingedSpace.coequalizer_cofork_is_colimit AlgebraicGeometry.LocallyRingedSpace.coequalizerCoforkIsColimit

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/HasColimits/Variantf70a078ee236105b5ac27571e4d4bad13dd8c568fec5f8ef0ff92f1effcc5571.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/HasColimits/Variantf70a078ee236105b5ac27571e4d4bad13dd8c568fec5f8ef0ff92f1effcc5571.lean#L293).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5d1d31b8ff076c8c338694de7c1ab588cd37de0c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
