# mu_deriv_bound_explicit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:706725e7-4f71-fafe-4829-67f4ae7bd6ef",
  "kind": "theorem",
  "lexical_name": "mu_deriv_bound_explicit",
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
  "slug": "mu-deriv-bound-explicit--0feeb70224c80b64a9f64c19",
  "source": {
    "blob": "8a53c155d9d22710a053a3573734ed409642ac61",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 340,
    "line": 330,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Effective/Variant2de64f596d1d9c8c57351142dc77ee6dfb4b9999708c6141c1b79dbdc957c632.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0feeb70224c80b64a9f64c1946daea12caf6ab5e5bbedf1958382e19af5eaa3a",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Effective/Variant2de64f596d1d9c8c57351142dc77ee6dfb4b9999708c6141c1b79dbdc957c632.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:706725e7-4f71-fafe-4829-67f4ae7bd6ef`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 330–340.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mu_deriv_bound_explicit (τ : ℝ) (hτ : 1 ≤ |τ|) :
    |deriv Zeta23.mu τ| ≤ (24 / Real.pi) / |τ| := by
  rw [mu_eq_muq01]
  exact Zeta23.ThmE.GammaChi.muq_deriv_bound_const (q := 1) (by norm_num) τ hτ

/-- **E3**: fully explicit μ-increment bound, K = 16: for t ≥ 2 and t + r ≥ 2,
|μ(t+r) − μ(t)| ≤ 16·(|r| + r²)/t.  (Both-endpoints-≥-2 is exactly what the prime-side
consumers use — the Ix-window keeps both points in [T, 2T].)  Proof: MVT with
mu_deriv_bound_explicit; for r ≥ −t/2 the whole segment has |τ| ≥ t/2 so |μ′| ≤ (48/π)/t;
otherwise t + r < t/2 forces |r| > t/2, and |μ′| ≤ 12/π on [2, ∞) gives
|Δμ| ≤ (12/π)|r| ≤ (24/π)·r²/t.  48/π ≤ 16. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Effective/Variant2de64f596d1d9c8c57351142dc77ee6dfb4b9999708c6141c1b79dbdc957c632.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Effective/Variant2de64f596d1d9c8c57351142dc77ee6dfb4b9999708c6141c1b79dbdc957c632.lean#L330).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8a53c155d9d22710a053a3573734ed409642ac61` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
