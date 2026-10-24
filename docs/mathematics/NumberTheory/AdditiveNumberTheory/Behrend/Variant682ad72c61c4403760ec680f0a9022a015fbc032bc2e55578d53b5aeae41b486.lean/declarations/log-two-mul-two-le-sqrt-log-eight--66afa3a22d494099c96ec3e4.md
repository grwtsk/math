# log_two_mul_two_le_sqrt_log_eight

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c88d0cc6ea789f844c1965755e3aff73d42ed2f6",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 289,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/68/682ad72c61c4403760ec680f0a9022a015fbc032bc2e55578d53b5aeae41b486.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f5ebfda1-0830-0881-e82e-11ec89ee6641",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c34088a1-9cec-8cad-ecb2-1846982677fd",
  "kind": "theorem",
  "lexical_name": "log_two_mul_two_le_sqrt_log_eight",
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
  "slug": "log-two-mul-two-le-sqrt-log-eight--66afa3a22d494099c96ec3e4",
  "source": {
    "blob": "c88d0cc6ea789f844c1965755e3aff73d42ed2f6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 299,
    "line": 289,
    "path": "GRWTSK/NumberTheory/AdditiveNumberTheory/Behrend/Variant682ad72c61c4403760ec680f0a9022a015fbc032bc2e55578d53b5aeae41b486.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:66afa3a22d494099c96ec3e42266c2952f8d4725df72f8fd246487ae1e95c191",
  "verification": {
    "reference": "docs/verification/NumberTheory/AdditiveNumberTheory/Behrend/Variant682ad72c61c4403760ec680f0a9022a015fbc032bc2e55578d53b5aeae41b486.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c34088a1-9cec-8cad-ecb2-1846982677fd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 289–299.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem log_two_mul_two_le_sqrt_log_eight : log 2 * 2 ≤ sqrt (log 8) := by
  have : (8 : ℝ) = 2 ^ ((3 : ℕ) : ℝ) := by rw [rpow_nat_cast]; norm_num
  rw [this, log_rpow zero_lt_two (3 : ℕ)]
  apply le_sqrt_of_sq_le
  rw [mul_pow, sq (log 2), mul_assoc, mul_comm]
  refine' mul_le_mul_of_nonneg_right _ (log_nonneg one_le_two)
  rw [← le_div_iff]
  apply log_two_lt_d9.le.trans
  all_goals norm_num1
#align behrend.log_two_mul_two_le_sqrt_log_eight Behrend.log_two_mul_two_le_sqrt_log_eight

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AdditiveNumberTheory/Behrend/Variant682ad72c61c4403760ec680f0a9022a015fbc032bc2e55578d53b5aeae41b486.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AdditiveNumberTheory/Behrend/Variant682ad72c61c4403760ec680f0a9022a015fbc032bc2e55578d53b5aeae41b486.lean#L289).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c88d0cc6ea789f844c1965755e3aff73d42ed2f6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
