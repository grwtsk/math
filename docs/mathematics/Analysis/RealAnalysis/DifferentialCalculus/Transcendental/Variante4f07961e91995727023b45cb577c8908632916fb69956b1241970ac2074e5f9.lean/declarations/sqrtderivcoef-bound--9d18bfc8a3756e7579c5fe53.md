# sqrtDerivCoef_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "00c11673a88fd82b3a1e3761f0a7dd35fe088dc3",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 227,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e4/e4f07961e91995727023b45cb577c8908632916fb69956b1241970ac2074e5f9.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9c380f46-74b4-2281-69c4-4a4d3b67f6c7",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:374cfe44-bdf9-7890-2379-da8e336763ca",
  "kind": "theorem",
  "lexical_name": "sqrtDerivCoef_bound",
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
  "slug": "sqrtderivcoef-bound--9d18bfc8a3756e7579c5fe53",
  "source": {
    "blob": "00c11673a88fd82b3a1e3761f0a7dd35fe088dc3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 279,
    "line": 227,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Transcendental/Variante4f07961e91995727023b45cb577c8908632916fb69956b1241970ac2074e5f9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9d18bfc8a3756e7579c5fe531fb22e2bf5daa5eb4f84e1c9ad612f7733e4ff33",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Transcendental/Variante4f07961e91995727023b45cb577c8908632916fb69956b1241970ac2074e5f9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:374cfe44-bdf9-7890-2379-da8e336763ca`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 227–279.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sqrtDerivCoef_bound {x lo : ℝ} (hlo_pos : 0 < lo) (hx_ge : lo ≤ x) :
    1 / (2 * Real.sqrt x) ≤ max (1 / (2 * lo)) (1 / 2) := by
  have hx_pos : 0 < x := lt_of_lt_of_le hlo_pos hx_ge
  have hsqrt_pos : 0 < Real.sqrt x := Real.sqrt_pos.mpr hx_pos
  have hdenom_pos : 0 < 2 * Real.sqrt x := by positivity
  -- sqrt(x) ≥ sqrt(lo) since sqrt is monotone
  have hsqrt_mono : Real.sqrt lo ≤ Real.sqrt x := Real.sqrt_le_sqrt hx_ge
  have hsqrt_lo_pos : 0 < Real.sqrt lo := Real.sqrt_pos.mpr hlo_pos
  -- 1/(2*sqrt(x)) ≤ 1/(2*sqrt(lo))
  have hcoef_le : 1 / (2 * Real.sqrt x) ≤ 1 / (2 * Real.sqrt lo) := by
    apply div_le_div_of_nonneg_left (by norm_num : (0 : ℝ) ≤ 1)
    · positivity
    · linarith
  -- Now bound 1/(2*sqrt(lo))
  rcases le_or_gt lo 1 with hle | hgt
  · -- lo ≤ 1: sqrt(lo) ≥ lo (since sqrt(x) ≥ x for 0 < x ≤ 1)
    have hsqrt_ge_lo : lo ≤ Real.sqrt lo := by
      have h1 : lo * lo ≤ lo := by nlinarith
      have h2 : lo = Real.sqrt lo * Real.sqrt lo → lo ≤ Real.sqrt lo := by
        intro heq
        by_contra! hc
        have : lo * lo > lo := by nlinarith
        linarith
      rw [← Real.sq_sqrt (le_of_lt hlo_pos)] at h1
      rcases eq_or_lt_of_le (Real.sqrt_nonneg lo) with hsz | hsgt
      · -- Case sqrt(lo) = 0 contradicts lo > 0
        have hsqrt_zero : Real.sqrt lo = 0 := hsz.symm
        have hlo_le_zero : lo ≤ 0 := Real.sqrt_eq_zero'.mp hsqrt_zero
        linarith
      · nlinarith [Real.sq_sqrt (le_of_lt hlo_pos)]
    -- 1/(2*sqrt(lo)) ≤ 1/(2*lo)
    have hbound : 1 / (2 * Real.sqrt lo) ≤ 1 / (2 * lo) := by
      apply div_le_div_of_nonneg_left (by norm_num : (0 : ℝ) ≤ 1)
      · positivity
      · linarith
    calc 1 / (2 * Real.sqrt x) ≤ 1 / (2 * Real.sqrt lo) := hcoef_le
      _ ≤ 1 / (2 * lo) := hbound
      _ ≤ max (1 / (2 * lo)) (1 / 2) := le_max_left _ _
  · -- lo > 1: sqrt(lo) > 1
    have hsqrt_gt_one : 1 < Real.sqrt lo := by
      rw [← Real.sqrt_one]
      exact Real.sqrt_lt_sqrt (by norm_num) hgt
    -- 1/(2*sqrt(lo)) < 1/2
    have hbound : 1 / (2 * Real.sqrt lo) < 1 / 2 := by
      rw [div_lt_div_iff₀ (by positivity : (0:ℝ) < 2 * Real.sqrt lo) (by norm_num : (0:ℝ) < 2)]
      ring_nf
      linarith
    calc 1 / (2 * Real.sqrt x) ≤ 1 / (2 * Real.sqrt lo) := hcoef_le
      _ ≤ 1 / 2 := le_of_lt hbound
      _ ≤ max (1 / (2 * lo)) (1 / 2) := le_max_right _ _

/-- Partial dual for sqrt (chain rule: d(sqrt f) = f' / (2 * sqrt(f)))
    Returns None if the value interval is not strictly positive. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Transcendental/Variante4f07961e91995727023b45cb577c8908632916fb69956b1241970ac2074e5f9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Transcendental/Variante4f07961e91995727023b45cb577c8908632916fb69956b1241970ac2074e5f9.lean#L227).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `00c11673a88fd82b3a1e3761f0a7dd35fe088dc3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
