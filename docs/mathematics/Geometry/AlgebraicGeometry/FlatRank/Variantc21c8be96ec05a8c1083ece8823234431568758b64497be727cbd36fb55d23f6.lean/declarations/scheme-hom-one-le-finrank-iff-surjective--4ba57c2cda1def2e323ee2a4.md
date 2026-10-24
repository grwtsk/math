# Scheme.Hom.one_le_finrank_iff_surjective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1fa9b942-e6ed-9a68-187e-acd0b5a6424a",
  "kind": "lemma",
  "lexical_name": "Scheme.Hom.one_le_finrank_iff_surjective",
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
  "slug": "scheme-hom-one-le-finrank-iff-surjective--4ba57c2cda1def2e323ee2a4",
  "source": {
    "blob": "a7cce39dcb92ad68c034d0b3acef4f8d65e8c668",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 230,
    "line": 201,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/FlatRank/Variantc21c8be96ec05a8c1083ece8823234431568758b64497be727cbd36fb55d23f6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4ba57c2cda1def2e323ee2a4766e87b4594fb51ec8a732821bc6aa1837daad51",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/FlatRank/Variantc21c8be96ec05a8c1083ece8823234431568758b64497be727cbd36fb55d23f6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1fa9b942-e6ed-9a68-187e-acd0b5a6424a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 201–230.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
nonrec lemma Scheme.Hom.one_le_finrank_iff_surjective : 1 ≤ finrank f ↔ Surjective f := by
  refine ⟨fun h ↦ ?_, fun _ ↦ ?_⟩
  · wlog hY : ∃ R, Y = Spec R
    · rw [IsZariskiLocalAtTarget.iff_of_openCover (P := @Surjective) Y.affineCover]
      intro i
      dsimp only [Scheme.Cover.pullbackHom]
      refine this _ (fun y ↦ ?_) ⟨_, rfl⟩
      rw [finrank_pullback_snd]
      exact h _
    obtain ⟨R, rfl⟩ := hY
    wlog hX : ∃ S, X = Spec S
    · have _ : IsAffine X := isAffine_of_isAffineHom f
      rw [← MorphismProperty.cancel_left_of_respectsIso @Surjective X.isoSpec.inv]
      refine this _ _ (fun x ↦ ?_) ⟨_, rfl⟩
      rw [finrank_comp_left_of_isIso]
      exact h x
    obtain ⟨S, rfl⟩ := hX
    obtain ⟨φ, rfl⟩ := Spec.map_surjective f
    constructor
    intro x
    specialize h x
    simp only [IsFinite.SpecMap_iff, Flat.SpecMap_iff] at *
    rw [finrank_SpecMap_eq_finrank ‹_› ‹_›] at h
    algebraize [φ.hom]
    exact (PrimeSpectrum.rankAtStalk_pos_iff_mem_range_comap _).mp h
  · intro y
    obtain ⟨x, rfl⟩ := f.surjective y
    exact one_le_finrank_map f x

/-- The rank of a finite flat locally finitely presented morphism is locally constant. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/FlatRank/Variantc21c8be96ec05a8c1083ece8823234431568758b64497be727cbd36fb55d23f6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/FlatRank/Variantc21c8be96ec05a8c1083ece8823234431568758b64497be727cbd36fb55d23f6.lean#L201).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a7cce39dcb92ad68c034d0b3acef4f8d65e8c668` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
