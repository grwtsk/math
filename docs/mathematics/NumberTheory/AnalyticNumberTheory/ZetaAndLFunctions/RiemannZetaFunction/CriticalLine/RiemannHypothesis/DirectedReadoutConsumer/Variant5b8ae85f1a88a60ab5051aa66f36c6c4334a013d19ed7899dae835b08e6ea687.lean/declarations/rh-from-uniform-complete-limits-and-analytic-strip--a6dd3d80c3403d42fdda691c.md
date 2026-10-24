# rh_from_uniform_complete_limits_and_analytic_strip

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:72acb1a7-f226-7071-4f8d-1d182cfb8bf6",
  "kind": "theorem",
  "lexical_name": "rh_from_uniform_complete_limits_and_analytic_strip",
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
  "slug": "rh-from-uniform-complete-limits-and-analytic-strip--a6dd3d80c3403d42fdda691c",
  "source": {
    "blob": "31d93dd9c7db43cdc0b570dd2ee403df95a7ac45",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 75,
    "line": 62,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DirectedReadoutConsumer/Variant5b8ae85f1a88a60ab5051aa66f36c6c4334a013d19ed7899dae835b08e6ea687.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a6dd3d80c3403d42fdda691c12e710a70aecd9d3373dc4c558e33b56b18b4d1c",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DirectedReadoutConsumer/Variant5b8ae85f1a88a60ab5051aa66f36c6c4334a013d19ed7899dae835b08e6ea687.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:72acb1a7-f226-7071-4f8d-1d182cfb8bf6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 62–75.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem rh_from_uniform_complete_limits_and_analytic_strip
    (ell : E →L[ℝ] ℝ) (source : ℝ → E) (v : ℝ → ℕ → E)
    (residual : ℝ → ℕ → ℝ) (m : ℕ) (C R : ℝ) (hC : 0 ≤ C) (hR : 1 ≤ R)
    (hdecode : ∀ A, R ≤ A → ell (source A) = closedPrimeMoment A)
    (hv : ∀ A, R ≤ A → Tendsto (v A) atTop (𝓝 (source A)))
    (hr : ∀ A, R ≤ A → Tendsto (residual A) atTop (𝓝 0))
    (hcap : ∀ A, R ≤ A → ∀ n, ell (v A n) ≤ C * A ^ m + residual A n)
    (hstrip : SourceRateStripSupplier) : RiemannHypothesis :=
  rh_of_problemP_and_rateStrip
    (actual_source_from_uniform_complete_limits ell source v residual m C R hC hR hdecode hv hr hcap)
    hstrip

end
end GRWTSK.RiemannHypothesis.Conversation.DirectedReadoutConsumer
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DirectedReadoutConsumer/Variant5b8ae85f1a88a60ab5051aa66f36c6c4334a013d19ed7899dae835b08e6ea687.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DirectedReadoutConsumer/Variant5b8ae85f1a88a60ab5051aa66f36c6c4334a013d19ed7899dae835b08e6ea687.lean#L62).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `31d93dd9c7db43cdc0b570dd2ee403df95a7ac45` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
