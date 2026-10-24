# tendsto_of_approx_aux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:de7a15bf-b073-9fe8-3398-540f9945b3a0",
  "kind": "lemma",
  "lexical_name": "tendsto_of_approx_aux",
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
  "slug": "tendsto-of-approx-aux--dbd7d9fa275202ebc5dc772a",
  "source": {
    "blob": "05981873a9aec6e28dbb56a9d9fb76c5e5eaa1c4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 233,
    "line": 223,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/FejerIKnowThisIsDirtyButItTypechecks/Variante62c61fe6b322e5b90dfbf186262620355e4fc399e37a0d2595af7e2bcf9ed74.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dbd7d9fa275202ebc5dc772adec635b88de6bf1e18c83f56acf8f233a1c23bc5",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/FejerIKnowThisIsDirtyButItTypechecks/Variante62c61fe6b322e5b90dfbf186262620355e4fc399e37a0d2595af7e2bcf9ed74.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:de7a15bf-b073-9fe8-3398-540f9945b3a0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 223–233.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma tendsto_of_approx_aux {u : ℕ → ℝ} {S : ℝ} {C : ℝ} (hC : 0 ≤ C)
    (h : ∀ ε > 0, ∃ (v : ℕ → ℝ), Filter.Tendsto v Filter.atTop (nhds S) ∧ ∀ᶠ n in Filter.atTop, |u n - v n| ≤ ε * C) :
    Filter.Tendsto u Filter.atTop (nhds S) := by
  refine' Metric.tendsto_atTop.mpr _;
  intro ε hε;
  rcases h ( ε / 2 / ( Max.max C 1 ) ) ( div_pos ( half_pos hε ) ( by positivity ) ) with ⟨ v, hv₁, hv₂ ⟩;
  rcases Filter.eventually_atTop.mp ( hv₂.and ( hv₁.eventually ( Metric.ball_mem_nhds _ ( half_pos hε ) ) ) ) with ⟨ N, hN ⟩ ; exact ⟨ N, fun n hn => abs_lt.mpr ⟨ by nlinarith [ abs_lt.mp ( hN n hn |>.2 ), abs_le.mp ( hN n hn |>.1 ), le_max_left C 1, le_max_right C 1, mul_div_cancel₀ ( ε / 2 ) ( show ( Max.max C 1 ) ≠ 0 by positivity ) ], by nlinarith [ abs_lt.mp ( hN n hn |>.2 ), abs_le.mp ( hN n hn |>.1 ), le_max_left C 1, le_max_right C 1, mul_div_cancel₀ ( ε / 2 ) ( show ( Max.max C 1 ) ≠ 0 by positivity ) ] ⟩ ⟩

/-
The ratio n / k_n is bounded for our choice of k_n.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/FejerIKnowThisIsDirtyButItTypechecks/Variante62c61fe6b322e5b90dfbf186262620355e4fc399e37a0d2595af7e2bcf9ed74.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/FejerIKnowThisIsDirtyButItTypechecks/Variante62c61fe6b322e5b90dfbf186262620355e4fc399e37a0d2595af7e2bcf9ed74.lean#L223).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `05981873a9aec6e28dbb56a9d9fb76c5e5eaa1c4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
