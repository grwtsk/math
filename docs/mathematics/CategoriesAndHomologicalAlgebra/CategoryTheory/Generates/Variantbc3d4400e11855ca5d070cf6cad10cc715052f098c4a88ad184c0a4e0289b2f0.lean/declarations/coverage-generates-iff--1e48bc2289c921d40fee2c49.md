# Coverage.generates_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "039802f3a5ee2fb7124b312f1bacae671ed63930",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 148,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/bc/bc3d4400e11855ca5d070cf6cad10cc715052f098c4a88ad184c0a4e0289b2f0.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:cf4a3217-57f5-4be1-fd74-62e13e673170",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d7a8ebaa-ad8f-356d-08fc-ba0a4b60b326",
  "kind": "lemma",
  "lexical_name": "Coverage.generates_iff",
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
  "slug": "coverage-generates-iff--1e48bc2289c921d40fee2c49",
  "source": {
    "blob": "039802f3a5ee2fb7124b312f1bacae671ed63930",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 155,
    "line": 148,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Generates/Variantbc3d4400e11855ca5d070cf6cad10cc715052f098c4a88ad184c0a4e0289b2f0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1e48bc2289c921d40fee2c493c7359179cb516e14db7f607fa50fe21d84ca4cd",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Generates/Variantbc3d4400e11855ca5d070cf6cad10cc715052f098c4a88ad184c0a4e0289b2f0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d7a8ebaa-ad8f-356d-08fc-ba0a4b60b326`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 148–155.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Coverage.generates_iff {K : Coverage C} : K.Generates J ↔ K.toGrothendieck = J := by
  refine ⟨fun h ↦ ?_, ?_⟩
  · rw [← Coverage.toGrothendieck_toPrecoverage]
    exact h.toGrothendieck_eq
  · rintro rfl
    exact Coverage.generates_toGrothendieck _

end CategoryTheory
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Generates/Variantbc3d4400e11855ca5d070cf6cad10cc715052f098c4a88ad184c0a4e0289b2f0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Generates/Variantbc3d4400e11855ca5d070cf6cad10cc715052f098c4a88ad184c0a4e0289b2f0.lean#L148).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `039802f3a5ee2fb7124b312f1bacae671ed63930` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
