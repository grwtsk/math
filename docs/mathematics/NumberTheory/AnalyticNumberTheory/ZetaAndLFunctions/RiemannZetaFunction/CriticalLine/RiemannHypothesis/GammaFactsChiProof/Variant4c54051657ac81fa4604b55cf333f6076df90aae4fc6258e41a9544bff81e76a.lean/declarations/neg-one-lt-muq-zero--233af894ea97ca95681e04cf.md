# neg_one_lt_muq_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ffde98d45c12e4fe47fc916d8fb3b1ec5fd77b0a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 124,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/4c/4c54051657ac81fa4604b55cf333f6076df90aae4fc6258e41a9544bff81e76a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3cabbfa1-03b9-4424-adbb-af34f5e4458e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:21e9bf8b-56d9-2793-ba7d-66a749ca6f47",
  "kind": "theorem",
  "lexical_name": "neg_one_lt_muq_zero",
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
  "slug": "neg-one-lt-muq-zero--233af894ea97ca95681e04cf",
  "source": {
    "blob": "ffde98d45c12e4fe47fc916d8fb3b1ec5fd77b0a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 179,
    "line": 124,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GammaFactsChiProof/Variant4c54051657ac81fa4604b55cf333f6076df90aae4fc6258e41a9544bff81e76a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:233af894ea97ca95681e04cf8dad980e36c9d0bc343b907e84f082fb698d822a",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GammaFactsChiProof/Variant4c54051657ac81fa4604b55cf333f6076df90aae4fc6258e41a9544bff81e76a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:21e9bf8b-56d9-2793-ba7d-66a749ca6f47`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 124–179.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem neg_one_lt_muq_zero (hκ : κ ≤ 1) (hq : 1 ≤ q) : (-1 : ℝ) < muq κ q 0 := by
  rw [muq_eq, show ((0 : ℝ) / 2 : ℝ) = (0 : ℝ) by norm_num]
  have ha0 := absc_pos κ
  have ha1 := absc_lt_one hκ
  have ha4 := quarter_le_absc κ
  rw [MuFields.re_digamma_vertical ha0 ha1 0]
  -- the series is termwise nonnegative
  have hS : (0 : ℝ) ≤ ∑' n : ℕ,
      (1 / ((n : ℝ) + 1) - ((n : ℝ) + 1 + absc κ) / (((n : ℝ) + 1 + absc κ) ^ 2 + (0 : ℝ) ^ 2)) := by
    refine tsum_nonneg fun n => ?_
    have hna : (0 : ℝ) < (n : ℝ) + 1 + absc κ := by positivity
    have h1 : ((n : ℝ) + 1 + absc κ) / (((n : ℝ) + 1 + absc κ) ^ 2 + (0 : ℝ) ^ 2)
        = 1 / ((n : ℝ) + 1 + absc κ) := by
      rw [show ((n : ℝ) + 1 + absc κ) ^ 2 + (0 : ℝ) ^ 2 = ((n : ℝ) + 1 + absc κ) * ((n : ℝ) + 1 + absc κ) by ring,
        div_mul_eq_div_div, div_self hna.ne']
    rw [h1]
    have h2 : (0 : ℝ) < (n : ℝ) + 1 := by positivity
    have h3 : 1 / ((n : ℝ) + 1 + absc κ) ≤ 1 / ((n : ℝ) + 1) :=
      one_div_le_one_div_of_le h2 (by linarith)
    linarith
  -- 1/a ≤ 4
  have hinv : absc κ / (absc κ ^ 2 + (0:ℝ) ^ 2) ≤ 4 := by
    rw [show absc κ ^ 2 + (0:ℝ) ^ 2 = absc κ * absc κ by ring, div_mul_eq_div_div, div_self ha0.ne']
    rw [div_le_iff₀ ha0]; linarith
  -- log(q/π) ≥ −log π > −1.4
  have hγ : Real.eulerMascheroniConstant < 2 / 3 := Real.eulerMascheroniConstant_lt_two_thirds
  have hπ3 : (3.14 : ℝ) < Real.pi := Real.pi_gt_d2
  have hπ4 : Real.pi < 4 := Real.pi_lt_four
  have hlogπ : Real.log Real.pi < 1.4 := by
    have h1 : Real.log Real.pi < Real.log 4 := Real.log_lt_log Real.pi_pos hπ4
    have h2 : Real.log 4 = 2 * Real.log 2 := by
      rw [show (4 : ℝ) = 2 ^ 2 by norm_num, Real.log_pow]; push_cast; ring
    have h3 := Real.log_two_lt_d9
    nlinarith
  have hq0 : (0:ℝ) < q := by exact_mod_cast (lt_of_lt_of_le zero_lt_one hq)
  have hlogq : -Real.log Real.pi ≤ Real.log (q / Real.pi) := by
    rw [Real.log_div hq0.ne' Real.pi_pos.ne']
    have : 0 ≤ Real.log q := Real.log_nonneg (by exact_mod_cast hq)
    linarith
  set S := ∑' n : ℕ,
      (1 / ((n : ℝ) + 1) - ((n : ℝ) + 1 + absc κ) / (((n : ℝ) + 1 + absc κ) ^ 2 + (0 : ℝ) ^ 2))
  have h2π : 0 < 2 * Real.pi := by positivity
  -- μ(0) ≥ (−γ − 4 − log π)/(2π) > −1
  have hsum : -6.07 ≤ -Real.eulerMascheroniConstant - absc κ / (absc κ ^ 2 + (0:ℝ) ^ 2) + S
      + Real.log (q / Real.pi) := by linarith
  have : -1 < (1 / (2 * Real.pi)) * (-6.07) := by
    have h607 : (1 / (2 * Real.pi)) * 6.07 < 1 := by
      rw [div_mul_eq_mul_div, one_mul, div_lt_one h2π]; nlinarith
    linarith
  calc (-1 : ℝ) < (1 / (2 * Real.pi)) * (-6.07) := this
    _ ≤ (1 / (2 * Real.pi)) * (-Real.eulerMascheroniConstant - absc κ / (absc κ ^ 2 + (0:ℝ) ^ 2) + S)
        + (1 / (2 * Real.pi)) * Real.log (q / Real.pi) := by
        rw [← mul_add]; exact mul_le_mul_of_nonneg_left hsum (by positivity)

/-! ### smooth -/

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GammaFactsChiProof/Variant4c54051657ac81fa4604b55cf333f6076df90aae4fc6258e41a9544bff81e76a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GammaFactsChiProof/Variant4c54051657ac81fa4604b55cf333f6076df90aae4fc6258e41a9544bff81e76a.lean#L124).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ffde98d45c12e4fe47fc916d8fb3b1ec5fd77b0a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
