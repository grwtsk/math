# canonical_stock_nonneg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:51d442dc-98d1-e368-b6da-4605bc042fe5",
  "kind": "theorem",
  "lexical_name": "canonical_stock_nonneg",
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
  "slug": "canonical-stock-nonneg--aa2c7cd49767f94d92a20eb7",
  "source": {
    "blob": "b420b4b7f21c98f383af1594d6fe4c0f3d9636f0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 86,
    "line": 71,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CausalReserveProcess/Variantf1e204e2763b02f4970c9bf0e8afe9346d5d74e56756cb57d9e2b52aac7dcecc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:aa2c7cd49767f94d92a20eb728947039165a94e573f87931eb5e96d735aa833d",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CausalReserveProcess/Variantf1e204e2763b02f4970c9bf0e8afe9346d5d74e56756cb57d9e2b52aac7dcecc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:51d442dc-98d1-e368-b6da-4605bc042fe5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 71–86.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem canonical_stock_nonneg {R : ℝ} {credit debt : ℕ → ℝ} {K : ℕ}
    (hR : 0 ≤ R) (hcredit : ∀ j, 0 ≤ credit j)
    (hprefix : PrefixCovered R credit debt K)
    (j : ℕ) (hj : j ≤ K) : 0 ≤ stock R credit debt j := by
  cases j with
  | zero => simpa only [stock_initial] using hR
  | succ j =>
      have h := hprefix j (by omega)
      rw [Finset.sum_range_succ] at h
      rw [stock_step]
      have hguard : debt j ≤ stock R credit debt j := by
        unfold stock
        linarith
      linarith [hcredit j]

/-- Earlier credit can protect a later debt even when the total separate debt exceeds R. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CausalReserveProcess/Variantf1e204e2763b02f4970c9bf0e8afe9346d5d74e56756cb57d9e2b52aac7dcecc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CausalReserveProcess/Variantf1e204e2763b02f4970c9bf0e8afe9346d5d74e56756cb57d9e2b52aac7dcecc.lean#L71).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b420b4b7f21c98f383af1594d6fe4c0f3d9636f0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
