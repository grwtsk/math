# profileIso_nonempty_iff_objectIso_nonempty

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4d37bc138901b5f0199d7fccf2281e3e78d3ea11",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 51,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/11/113cf48a1d880e722589ad65a3d353a9ad121111db4d274a33b760b9878dcdc8.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4183259f-5d5d-838c-d19b-3fa10a5700b5",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:fd09315e-127f-cc67-d4eb-d8c58f0b308f",
  "kind": "theorem",
  "lexical_name": "profileIso_nonempty_iff_objectIso_nonempty",
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
  "slug": "profileiso-nonempty-iff-objectiso-nonempty--fe08ee55d2a8c62494b35e8d",
  "source": {
    "blob": "4d37bc138901b5f0199d7fccf2281e3e78d3ea11",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 62,
    "line": 51,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/YonedaProfile/Variant113cf48a1d880e722589ad65a3d353a9ad121111db4d274a33b760b9878dcdc8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fe08ee55d2a8c62494b35e8dd551b13ad8768f87bc0d52a056c69e17e8a732c4",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/YonedaProfile/Variant113cf48a1d880e722589ad65a3d353a9ad121111db4d274a33b760b9878dcdc8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fd09315e-127f-cc67-d4eb-d8c58f0b308f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 51–62.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem profileIso_nonempty_iff_objectIso_nonempty
    (left right : C) :
    Nonempty
        (CompleteMorphismProfile left ≅ CompleteMorphismProfile right) ↔
      Nonempty (left ≅ right) := by
  constructor
  · rintro ⟨profileIso⟩
    exact ⟨reconstructIso profileIso⟩
  · rintro ⟨iso⟩
    exact ⟨profileIsoOfObjectIso iso⟩

end Mathematics.Terrain.YonedaProfile
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/YonedaProfile/Variant113cf48a1d880e722589ad65a3d353a9ad121111db4d274a33b760b9878dcdc8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/YonedaProfile/Variant113cf48a1d880e722589ad65a3d353a9ad121111db4d274a33b760b9878dcdc8.lean#L51).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4d37bc138901b5f0199d7fccf2281e3e78d3ea11` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
