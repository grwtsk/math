# endpoint_plus_norm_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d00113adc09f47b6b1e66319bde4313b6890b968",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 98,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/2e/2e5f0bf78eec514fea6f65ea5ffaadac7ef57dae5fcd2df5d5d72b715d1db32b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f3a2d1c6-f68b-a87d-cadc-3f16ff290928",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ec71e304-b322-9b01-a717-a333b1272f8b",
  "kind": "theorem",
  "lexical_name": "endpoint_plus_norm_le",
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
  "slug": "endpoint-plus-norm-le--8045af9b708ce88d87da0f58",
  "source": {
    "blob": "d00113adc09f47b6b1e66319bde4313b6890b968",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 104,
    "line": 98,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualBumpVerticalBudgetNative01/Variant2e5f0bf78eec514fea6f65ea5ffaadac7ef57dae5fcd2df5d5d72b715d1db32b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8045af9b708ce88d87da0f5820f10da3b9d82379df0abc328e3441f303a73fb1",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualBumpVerticalBudgetNative01/Variant2e5f0bf78eec514fea6f65ea5ffaadac7ef57dae5fcd2df5d5d72b715d1db32b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ec71e304-b322-9b01-a717-a333b1272f8b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 98–104.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem endpoint_plus_norm_le (z : ℂ) (hn : 1 ≤ ‖z‖) :
    ‖z ^ 4 + 10 * z ^ 3 + 45 * z ^ 2 + 105 * z + 105‖ ≤ 266 * ‖z‖ ^ 4 := by
  have h := endpoint_minus_norm_le (-z) (by simpa using hn)
  simpa only [neg_pow, pow_succ, pow_zero, neg_mul, mul_neg, sub_neg_eq_add,
    neg_neg, even_two, Even.neg_pow, norm_neg] using h

/-- Both actual bump endpoints give the paper's exact high-frequency constant. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualBumpVerticalBudgetNative01/Variant2e5f0bf78eec514fea6f65ea5ffaadac7ef57dae5fcd2df5d5d72b715d1db32b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualBumpVerticalBudgetNative01/Variant2e5f0bf78eec514fea6f65ea5ffaadac7ef57dae5fcd2df5d5d72b715d1db32b.lean#L98).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d00113adc09f47b6b1e66319bde4313b6890b968` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
