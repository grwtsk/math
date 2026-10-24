# mono_of_injective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "46ddace785908db92b414a5d2ad9198a3cd22b2d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 98,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/4e/4eef72720ede74ff9d8c89877b0defce8a232c9adab005574e0a3f59b51c82a4.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1077ab48-e6eb-5aba-354a-014c2e92bc42",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8f4ae961-7786-173c-4d5e-20b20bb2c71d",
  "kind": "lemma",
  "lexical_name": "mono_of_injective",
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
  "slug": "mono-of-injective--8839c156bbb77c8691174112",
  "source": {
    "blob": "46ddace785908db92b414a5d2ad9198a3cd22b2d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 108,
    "line": 98,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/SurjectiveOnStalks/Variant4eef72720ede74ff9d8c89877b0defce8a232c9adab005574e0a3f59b51c82a4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8839c156bbb77c8691174112e924b19b57093813651a97a07ca6602bb3bc7676",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/SurjectiveOnStalks/Variant4eef72720ede74ff9d8c89877b0defce8a232c9adab005574e0a3f59b51c82a4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8f4ae961-7786-173c-4d5e-20b20bb2c71d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 98–108.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma mono_of_injective [SurjectiveOnStalks f] (hf : Function.Injective f) : Mono f := by
  refine (Scheme.forgetToLocallyRingedSpace ⋙
    LocallyRingedSpace.forgetToSheafedSpace).mono_of_mono_map ?_
  apply SheafedSpace.mono_of_base_injective_of_stalk_epi
  · exact hf
  · exact fun x ↦ ConcreteCategory.epi_of_surjective _ (f.stalkMap_surjective x)

set_option backward.defeqAttrib.useBackward true in
set_option backward.isDefEq.respectTransparency false in
/-- If `Y ⟶ S` is surjective on stalks, then for every `X ⟶ S`, `X ×ₛ Y` is a subset of
`X × Y` (Cartesian product as topological spaces) with the induced topology. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/SurjectiveOnStalks/Variant4eef72720ede74ff9d8c89877b0defce8a232c9adab005574e0a3f59b51c82a4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/SurjectiveOnStalks/Variant4eef72720ede74ff9d8c89877b0defce8a232c9adab005574e0a3f59b51c82a4.lean#L98).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `46ddace785908db92b414a5d2ad9198a3cd22b2d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
