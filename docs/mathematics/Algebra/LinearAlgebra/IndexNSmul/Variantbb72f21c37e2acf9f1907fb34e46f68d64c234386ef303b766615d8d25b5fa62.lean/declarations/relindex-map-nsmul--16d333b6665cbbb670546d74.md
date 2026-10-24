# relIndex_map_nsmul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1fa3168bf3aac31fce0f593b4d93b730843f2ef2",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 54,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/bb/bb72f21c37e2acf9f1907fb34e46f68d64c234386ef303b766615d8d25b5fa62.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a4512098-5a95-924a-f3a6-58fb95730ba9",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:60ec911c-4577-6737-d660-132279818de6",
  "kind": "lemma",
  "lexical_name": "relIndex_map_nsmul",
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
  "slug": "relindex-map-nsmul--16d333b6665cbbb670546d74",
  "source": {
    "blob": "1fa3168bf3aac31fce0f593b4d93b730843f2ef2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 61,
    "line": 54,
    "path": "GRWTSK/Algebra/LinearAlgebra/IndexNSmul/Variantbb72f21c37e2acf9f1907fb34e46f68d64c234386ef303b766615d8d25b5fa62.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:16d333b6665cbbb670546d7428935c7632f3f6f8fac89364d77a54a9380fca89",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/IndexNSmul/Variantbb72f21c37e2acf9f1907fb34e46f68d64c234386ef303b766615d8d25b5fa62.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:60ec911c-4577-6737-d660-132279818de6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 54–61.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma relIndex_map_nsmul (n : ℕ) (S : AddSubgroup M) [Free ℤ ↥S.toIntSubmodule]
    [Module.Finite ℤ ↥S.toIntSubmodule] :
    (S.map (nsmulAddMonoidHom (α := M) n)).relIndex S = n ^ finrank ℤ S := by
  simpa only [relIndex, addSubgroupOf_map_nsmulAddMonoidHom_eq_range]
    using! index_range_nsmul S.toIntSubmodule n

/-- On an additive group that is torsion-free as a `ℤ`-module, the linear map given by
multiplication by `n : ℕ` is injective (when `n ≠ 0`). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/IndexNSmul/Variantbb72f21c37e2acf9f1907fb34e46f68d64c234386ef303b766615d8d25b5fa62.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/IndexNSmul/Variantbb72f21c37e2acf9f1907fb34e46f68d64c234386ef303b766615d8d25b5fa62.lean#L54).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1fa3168bf3aac31fce0f593b4d93b730843f2ef2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
