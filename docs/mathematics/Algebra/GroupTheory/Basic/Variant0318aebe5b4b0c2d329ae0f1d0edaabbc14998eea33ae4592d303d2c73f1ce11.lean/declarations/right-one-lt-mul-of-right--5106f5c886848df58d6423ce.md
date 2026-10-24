# Right.one_lt_mul_of_right

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1cc7f8d791e7605bce3f5f4e30072315afc1dbda",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 726,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/03/0318aebe5b4b0c2d329ae0f1d0edaabbc14998eea33ae4592d303d2c73f1ce11.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:296df501-1bf6-4fcb-1c78-b9a03d11d87e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f7f93eeb-8c40-3307-8676-67ce18038a7b",
  "kind": "theorem",
  "lexical_name": "Right.one_lt_mul_of_right",
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
  "slug": "right-one-lt-mul-of-right--5106f5c886848df58d6423ce",
  "source": {
    "blob": "1cc7f8d791e7605bce3f5f4e30072315afc1dbda",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 774,
    "line": 726,
    "path": "GRWTSK/Algebra/GroupTheory/Basic/Variant0318aebe5b4b0c2d329ae0f1d0edaabbc14998eea33ae4592d303d2c73f1ce11.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5106f5c886848df58d6423cebea6045718733031c488f1daf0a53e8f1a1a51a8",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Basic/Variant0318aebe5b4b0c2d329ae0f1d0edaabbc14998eea33ae4592d303d2c73f1ce11.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f7f93eeb-8c40-3307-8676-67ce18038a7b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 726–774.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Right.one_lt_mul_of_right [IsBotOneClass α] [MulRightMono α] {b : α}
    (hb : 1 < b) (a : α) : 1 < a * b :=
  Right.one_lt_mul_of_le_of_lt one_le hb

@[to_additive add_pos_of_right] alias one_lt_mul_of_right := Right.one_lt_mul_of_right

/-- Assumes right covariance.
The lemma assuming left covariance is `Left.one_lt_mul`. -/
@[to_additive Right.add_pos /-- Assumes right covariance.
The lemma assuming left covariance is `Left.add_pos`. -/]
alias Right.one_lt_mul := lt_mul_of_one_lt_of_lt

/-- Assumes right covariance.
The lemma assuming left covariance is `Left.one_lt_mul'`. -/
@[to_additive Right.add_pos' /-- Assumes right covariance.
The lemma assuming left covariance is `Left.add_pos'`. -/]
alias Right.one_lt_mul' := lt_mul_of_one_lt_of_lt'

@[to_additive add_nonpos]
alias mul_le_one' := Left.mul_le_one

@[to_additive add_neg_of_nonpos_of_neg]
alias mul_lt_one_of_le_of_lt := Left.mul_lt_one_of_le_of_lt

@[to_additive add_neg_of_neg_of_nonpos]
alias mul_lt_one_of_lt_of_le := Left.mul_lt_one_of_lt_of_le

@[to_additive]
alias mul_lt_one := Left.mul_lt_one

@[to_additive]
alias mul_lt_one' := Left.mul_lt_one'

@[to_additive add_nonneg]
alias one_le_mul := Left.one_le_mul

@[to_additive add_pos_of_nonneg_of_pos]
alias one_lt_mul_of_le_of_lt' := Left.one_lt_mul_of_le_of_lt

@[to_additive add_pos_of_pos_of_nonneg]
alias one_lt_mul_of_lt_of_le' := Left.one_lt_mul_of_lt_of_le

@[to_additive add_pos]
alias one_lt_mul' := Left.one_lt_mul

@[to_additive add_pos']
alias one_lt_mul'' := Left.one_lt_mul'

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Basic/Variant0318aebe5b4b0c2d329ae0f1d0edaabbc14998eea33ae4592d303d2c73f1ce11.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Basic/Variant0318aebe5b4b0c2d329ae0f1d0edaabbc14998eea33ae4592d303d2c73f1ce11.lean#L726).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1cc7f8d791e7605bce3f5f4e30072315afc1dbda` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
