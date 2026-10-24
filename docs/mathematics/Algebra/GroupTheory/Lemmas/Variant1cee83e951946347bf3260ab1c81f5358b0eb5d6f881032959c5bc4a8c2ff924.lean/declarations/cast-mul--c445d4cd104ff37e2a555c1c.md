# cast_mul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9d994018140cdf6730f774bce62e8beb65f43f11",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 745,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/1c/1cee83e951946347bf3260ab1c81f5358b0eb5d6f881032959c5bc4a8c2ff924.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f8409d55-4ea6-3eea-2b7d-2bde52efeba9",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:db8a227b-81e8-db0e-4f0c-7cab5ad0d9fe",
  "kind": "theorem",
  "lexical_name": "cast_mul",
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
  "slug": "cast-mul--c445d4cd104ff37e2a555c1c",
  "source": {
    "blob": "9d994018140cdf6730f774bce62e8beb65f43f11",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 751,
    "line": 745,
    "path": "GRWTSK/Algebra/GroupTheory/Lemmas/Variant1cee83e951946347bf3260ab1c81f5358b0eb5d6f881032959c5bc4a8c2ff924.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c445d4cd104ff37e2a555c1c896b0f2c5f95738814ac09e5d095c130a2a71b4c",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Lemmas/Variant1cee83e951946347bf3260ab1c81f5358b0eb5d6f881032959c5bc4a8c2ff924.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:db8a227b-81e8-db0e-4f0c-7cab5ad0d9fe`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 745–751.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem cast_mul [Semiring α] : ∀ m n, ((m * n : Num) : α) = m * n
  | 0, 0 => (zero_mul _).symm
  | 0, pos _q => (zero_mul _).symm
  | pos _p, 0 => (mul_zero _).symm
  | pos _p, pos _q => PosNum.cast_mul _ _
#align num.cast_mul Num.cast_mul

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Lemmas/Variant1cee83e951946347bf3260ab1c81f5358b0eb5d6f881032959c5bc4a8c2ff924.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Lemmas/Variant1cee83e951946347bf3260ab1c81f5358b0eb5d6f881032959c5bc4a8c2ff924.lean#L745).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9d994018140cdf6730f774bce62e8beb65f43f11` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
