# eventually_const_mul_le_half

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6e4e516a-9d16-2741-1243-add95d95ee3e",
  "kind": "theorem",
  "lexical_name": "eventually_const_mul_le_half",
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
  "slug": "eventually-const-mul-le-half--e49f367c5e65767e6efc0a39",
  "source": {
    "blob": "15aa4c5de07689c968869fc295f4df7408125780",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 200,
    "line": 191,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Traces/Varianted5f56c23bd97ab3a5a9b41c4fabccb54d1c6aa0cc494052253e474f8e04ea2c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e49f367c5e65767e6efc0a39d09a6611a0f9e6d6e839b4364630f2108272bcb8",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Traces/Varianted5f56c23bd97ab3a5a9b41c4fabccb54d1c6aa0cc494052253e474f8e04ea2c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6e4e516a-9d16-2741-1243-add95d95ee3e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 191–200.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eventually_const_mul_le_half {f : ℝ → ℝ} (hf : Tendsto f atTop (nhds 0)) {C : ℝ}
    (hC : 0 < C) : ∀ᶠ T in atTop, C * f T ≤ 1 / 2 := by
  filter_upwards [hf.eventually (Iio_mem_nhds (show (0:ℝ) < 1 / (2 * C) by positivity))] with T hT
  rw [lt_div_iff₀ (by positivity)] at hT
  linarith

set_option maxHeartbeats 800000 in
/-- The pointwise inequality behind [eq:ratio-general], every quantity a real variable; the
identity cRatio(L/ℓ; a, b, J)·N · (TL/2π)(bℓ² + L²J) = (aL)²N · Tℓ/2π is where the
window-general constant is checked (mirrors PrimeSide.ratio_pointwise; a stays on tr G̃). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Traces/Varianted5f56c23bd97ab3a5a9b41c4fabccb54d1c6aa0cc494052253e474f8e04ea2c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Traces/Varianted5f56c23bd97ab3a5a9b41c4fabccb54d1c6aa0cc494052253e474f8e04ea2c.lean#L191).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `15aa4c5de07689c968869fc295f4df7408125780` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
