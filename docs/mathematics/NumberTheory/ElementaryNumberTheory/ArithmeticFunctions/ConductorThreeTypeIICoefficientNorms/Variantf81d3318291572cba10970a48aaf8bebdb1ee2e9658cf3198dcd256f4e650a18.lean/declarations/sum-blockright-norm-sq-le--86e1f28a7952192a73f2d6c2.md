# sum_blockRight_norm_sq_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6dfd6a331d07998d68d2e7d5d700bf4593184b07",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 222,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f8/f81d3318291572cba10970a48aaf8bebdb1ee2e9658cf3198dcd256f4e650a18.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:bbe7648f-9748-15dd-2acc-f02806e8d9a4",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:202e6ff8-aa32-a517-5e91-deb2077987d8",
  "kind": "theorem",
  "lexical_name": "sum_blockRight_norm_sq_le",
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
  "slug": "sum-blockright-norm-sq-le--86e1f28a7952192a73f2d6c2",
  "source": {
    "blob": "6dfd6a331d07998d68d2e7d5d700bf4593184b07",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 239,
    "line": 222,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/ConductorThreeTypeIICoefficientNorms/Variantf81d3318291572cba10970a48aaf8bebdb1ee2e9658cf3198dcd256f4e650a18.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:86e1f28a7952192a73f2d6c28440fc184df9a1131777e581797b553a81f3e538",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/ConductorThreeTypeIICoefficientNorms/Variantf81d3318291572cba10970a48aaf8bebdb1ee2e9658cf3198dcd256f4e650a18.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:202e6ff8-aa32-a517-5e91-deb2077987d8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 222–239.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem sum_blockRight_norm_sq_le {N : ℕ}
    (B : TypeIIDyadicBlock N) :
    (∑ k : B.Right, ‖blockRightCoefficient B k‖ ^ 2) ≤
      (B.K : ℝ) * (2 * B.K : ℝ) ^ 2 := by
  calc
    (∑ k : B.Right, ‖blockRightCoefficient B k‖ ^ 2) ≤
        ∑ _k : B.Right, (2 * B.K : ℝ) ^ 2 := by
      apply Finset.sum_le_sum
      intro k hk
      gcongr
      exact blockRightCoefficient_norm_le_twice_scale B k
    _ = (Fintype.card B.Right : ℝ) * (2 * B.K : ℝ) ^ 2 := by simp
    _ ≤ (B.K : ℝ) * (2 * B.K : ℝ) ^ 2 := by
      gcongr
      exact_mod_cast blockRight_card_le_scale B

/-- Unconditional left-block `ℓ²` estimate. -/
@[surface_novel, surface_published]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/ConductorThreeTypeIICoefficientNorms/Variantf81d3318291572cba10970a48aaf8bebdb1ee2e9658cf3198dcd256f4e650a18.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/ConductorThreeTypeIICoefficientNorms/Variantf81d3318291572cba10970a48aaf8bebdb1ee2e9658cf3198dcd256f4e650a18.lean#L222).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6dfd6a331d07998d68d2e7d5d700bf4593184b07` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
