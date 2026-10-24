# IsSeparated.of_comp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "726f805ed99bc70e21402f45676c9ef6e8a87381",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 253,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/9d/9d33bb61cc06b043c8223768462e74eb05b46bfc3cdd2f1a70cfd859f71e3ca6.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b9fd8cea-a1fd-3966-b27d-dfe25af2233a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:46ca59a0-0c39-6f3a-5d51-4ba0b66d748d",
  "kind": "lemma",
  "lexical_name": "IsSeparated.of_comp",
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
  "slug": "isseparated-of-comp--ba2619df1399ea7b33448c17",
  "source": {
    "blob": "726f805ed99bc70e21402f45676c9ef6e8a87381",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 258,
    "line": 253,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Separated/Variant9d33bb61cc06b043c8223768462e74eb05b46bfc3cdd2f1a70cfd859f71e3ca6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ba2619df1399ea7b33448c17185e6e2378a14f8597985c0cade2f41605223f81",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Separated/Variant9d33bb61cc06b043c8223768462e74eb05b46bfc3cdd2f1a70cfd859f71e3ca6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:46ca59a0-0c39-6f3a-5d51-4ba0b66d748d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 253–258.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma IsSeparated.of_comp [IsSeparated (f ≫ g)] : IsSeparated f := by
  have : IsClosedImmersion (pullback.diagonal (f ≫ g)) := inferInstance
  rw [pullback.diagonal_comp] at this
  exact ⟨@IsClosedImmersion.of_comp _ _ _ _ _ this inferInstance⟩

variable {f g} in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Separated/Variant9d33bb61cc06b043c8223768462e74eb05b46bfc3cdd2f1a70cfd859f71e3ca6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Separated/Variant9d33bb61cc06b043c8223768462e74eb05b46bfc3cdd2f1a70cfd859f71e3ca6.lean#L253).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `726f805ed99bc70e21402f45676c9ef6e8a87381` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
