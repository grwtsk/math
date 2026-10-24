# norm_L2_le_log

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a0d193b60f2347616e6583c075d03ad029d33582",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 37,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/76/76535c4091ba62cfc4ce87df4cb288de2638397c29ce80f8d74b96c304b29e4b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:bc0fd625-4bd0-0a5d-945f-f4fc6b0b7c02",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:900ba1a4-aa18-547a-d2fb-e046d04ed258",
  "kind": "theorem",
  "lexical_name": "norm_L2_le_log",
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
  "slug": "norm-l2-le-log--7dcc8d921d3654e06bbd9e33",
  "source": {
    "blob": "a0d193b60f2347616e6583c075d03ad029d33582",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 72,
    "line": 37,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GoodHeightsW/Variant76535c4091ba62cfc4ce87df4cb288de2638397c29ce80f8d74b96c304b29e4b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7dcc8d921d3654e06bbd9e334cf43b21984ea3f4e7acda6dc3e55c5b7c1cea54",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GoodHeightsW/Variant76535c4091ba62cfc4ce87df4cb288de2638397c29ce80f8d74b96c304b29e4b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:900ba1a4-aa18-547a-d2fb-e046d04ed258`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 37–72.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem norm_L2_le_log {s : ℂ} (hre : 1 / 2 ≤ s.re) (hre' : s.re ≤ 2) (him : 2 ≤ |s.im|) :
    ‖L2 s‖ ≤ Real.log (|s.im| + 3) + 6 := by
  have hs : s.im ≠ 0 := by intro h; rw [h] at him; norm_num at him
  rw [L2_eq hs]
  have h1 : ‖logDeriv Gammaℝ s‖ ≤ Real.log (|s.im| + 3) + 5 :=
    Zeta23.XiPrime.ZeroCount.norm_logDeriv_Gammaℝ_le_log (by linarith) (by linarith) him
  -- the (1−s)-term: shift to 3 − s
  have hu : (1 - s).im ≠ 0 := im_one_sub_ne_zero hs
  have hshift := logDeriv_Gammaℝ_shift hu
  have e3 : (1 - s) + 2 = 3 - s := by ring
  rw [e3] at hshift
  have h3re : 0 < (3 - s).re := by simp; linarith
  have h3re' : (3 - s).re ≤ 4 := by simp; linarith
  have h3im : 2 ≤ |(3 - s).im| := by simpa using him
  have h2 : ‖logDeriv Gammaℝ (3 - s)‖ ≤ Real.log (|s.im| + 3) + 5 := by
    have := Zeta23.XiPrime.ZeroCount.norm_logDeriv_Gammaℝ_le_log h3re h3re' h3im
    simpa using this
  have hinv : ‖1 / (1 - s)‖ ≤ 1 / 2 := by
    rw [norm_div, norm_one]
    have : 2 ≤ ‖1 - s‖ := by
      have h := Complex.abs_im_le_norm (1 - s)
      simp at h; linarith
    rw [div_le_div_iff₀ (by linarith) (by norm_num)]
    linarith
  have h2' : ‖logDeriv Gammaℝ (1 - s)‖ ≤ Real.log (|s.im| + 3) + 5 + 1 / 2 := by
    rw [hshift]
    exact (norm_sub_le _ _).trans (add_le_add h2 hinv)
  have hlog : 0 ≤ Real.log (|s.im| + 3) := Real.log_nonneg (by linarith [abs_nonneg s.im])
  calc ‖(logDeriv Gammaℝ s + logDeriv Gammaℝ (1 - s)) / 2‖
      = ‖logDeriv Gammaℝ s + logDeriv Gammaℝ (1 - s)‖ / 2 := by rw [norm_div]; norm_num
    _ ≤ (‖logDeriv Gammaℝ s‖ + ‖logDeriv Gammaℝ (1 - s)‖) / 2 := by gcongr; exact norm_add_le _ _
    _ ≤ Real.log (|s.im| + 3) + 6 := by linarith

/-! ### the odd symmetry of F_𝒵 = L₂ + W′/W -/

/-- logarithmic derivative of W(s) = −χ(s)W(1−s):  W′/W(s) = −2L₂(s) − (W′/W)(1−s)  (off ℝ, W(s) ≠ 0). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GoodHeightsW/Variant76535c4091ba62cfc4ce87df4cb288de2638397c29ce80f8d74b96c304b29e4b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GoodHeightsW/Variant76535c4091ba62cfc4ce87df4cb288de2638397c29ce80f8d74b96c304b29e4b.lean#L37).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a0d193b60f2347616e6583c075d03ad029d33582` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
