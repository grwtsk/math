# rank_trace_mult_k_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3c8456d9-a115-2fd5-7e78-10818445d73b",
  "kind": "theorem",
  "lexical_name": "rank_trace_mult_k_le",
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
  "slug": "rank-trace-mult-k-le--147b1e1f6843d6288a1d9a4d",
  "source": {
    "blob": "aafc530a17776d8aaf5d40bb1ca78e6131f6e88b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 396,
    "line": 388,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RankTraceMult/Variant340e07435b75fcde5789054e4319279cad17cc6eff73846453001209a4ae90e3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:147b1e1f6843d6288a1d9a4da47d24c271ea088106527fedba018ca309560630",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RankTraceMult/Variant340e07435b75fcde5789054e4319279cad17cc6eff73846453001209a4ae90e3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3c8456d9-a115-2fd5-7e78-10818445d73b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 388–396.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem rank_trace_mult_k_le {m : ι → ℝ} (hm : ∀ j, 0 ≤ m j) (v : ι → n → 𝕜) (hx : ∀ j, xsq v j ≤ 1)
    {Q : Matrix n n 𝕜} (hQ : Q.IsHermitian) {b : ℕ} (hb : posIndex hQ ≤ b) {c : ℝ} (hc : 0 < c) :
    2 * c * rtrace (Pmat m v + Q) - frobSq (Pmat m v + Q) ≤ (∑ j, kc c (m j)) + c ^ 2 * b := by
  have h1 := rank_trace_mult_k hm v hQ hb hc
  have h2 : ∑ j, kc c (m j * xsq v j) ≤ ∑ j, kc c (m j) :=
    Finset.sum_le_sum fun j _ => kc_mono hc.le (by nlinarith [hm j, hx j])
  linarith

/-- integer values: k₂(0)=0, k₂(1)=3, k₂(m)=4 for m ≥ 2;  k₃(0)=0, k₃(1)=5, k₃(2)=8, k₃(m)=9 for m ≥ 3. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RankTraceMult/Variant340e07435b75fcde5789054e4319279cad17cc6eff73846453001209a4ae90e3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RankTraceMult/Variant340e07435b75fcde5789054e4319279cad17cc6eff73846453001209a4ae90e3.lean#L388).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `aafc530a17776d8aaf5d40bb1ca78e6131f6e88b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
