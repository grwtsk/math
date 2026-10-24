# part2_decay_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2da8f7a1095fdd5b64ca8609b613f4c0960c9eed",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 817,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e6/e677b791cd8a3612859851d52d29bc8714a3844979df02a794d8fd4e87a9731a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5b4a5959-d039-b865-772d-a5a7d4b60696",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:44ecca4d-3b9d-60e6-46bf-6f12bde6f1bd",
  "kind": "lemma",
  "lexical_name": "part2_decay_bound",
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
  "slug": "part2-decay-bound--c0aa7144bd04f7761eb5f67d",
  "source": {
    "blob": "2da8f7a1095fdd5b64ca8609b613f4c0960c9eed",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 875,
    "line": 817,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/FKS2/Variante677b791cd8a3612859851d52d29bc8714a3844979df02a794d8fd4e87a9731a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c0aa7144bd04f7761eb5f67d8678286d10023ac9b40a5578acd8ddf1090cce4b",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/FKS2/Variante677b791cd8a3612859851d52d29bc8714a3844979df02a794d8fd4e87a9731a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_SOURCE_DEPENDENCY"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:44ecca4d-3b9d-60e6-46bf-6f12bde6f1bd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 817–875.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma part2_decay_bound
    (t powfac expfac : ℝ)
    (ht : t ≥ 1000)
    (hpow_le_div : powfac ≤ (5.5666305 : ℝ) / t)
    (hexpfac_nonneg : 0 ≤ expfac)
    (h_exp_third :
      expfac * exp (-(2 / 3 : ℝ) * t) ≤ exp (-(5 / 12 : ℝ) * t)) :
    powfac * expfac * ((5 * t * t) * exp (-(2 / 3 : ℝ) * t))
      ≤ (2500 * (5.5666305 : ℝ)) * exp (-(230 : ℝ)) := by
  have ht_pos : 0 < t := by linarith [ht]
  have hpow_t2 : powfac * (5 * t * t) ≤ 5 * (5.5666305 : ℝ) * t := by
    have hmul : powfac * (5 * t * t) ≤ ((5.5666305 : ℝ) / t) * (5 * t * t) :=
      mul_le_mul_of_nonneg_right hpow_le_div (by positivity)
    have ht_eq : ((5.5666305 : ℝ) / t) * (5 * t * t) = 5 * (5.5666305 : ℝ) * t := by
      field_simp [ht_pos.ne']
    calc
      powfac * (5 * t * t) ≤ ((5.5666305 : ℝ) / t) * (5 * t * t) := hmul
      _ = 5 * (5.5666305 : ℝ) * t := ht_eq
  have h_t_exp :
      t * exp (-(1 / 1000 : ℝ) * t) ≤ 500 :=
    t_mul_exp_neg_one_thousandth_le_five_hundred t ht
  have hexp_big :
      exp (-(5 / 12 : ℝ) * t) ≤ exp (-(230 : ℝ)) * exp (-(1 / 1000 : ℝ) * t) :=
    exp_neg_five_twelfths_mul_le t ht
  have hmix :
      exp (-(5 / 12 : ℝ) * t) * t ≤ exp (-(230 : ℝ)) * 500 := by
    have hstep1 :
        exp (-(5 / 12 : ℝ) * t) * t ≤
          (exp (-(230 : ℝ)) * exp (-(1 / 1000 : ℝ) * t)) * t :=
      mul_le_mul_of_nonneg_right hexp_big (by positivity)
    have h_t_exp' : exp (-(1 / 1000 : ℝ) * t) * t ≤ 500 := by
      calc
        exp (-(1 / 1000 : ℝ) * t) * t = t * exp (-(1 / 1000 : ℝ) * t) := by ac_rfl
        _ ≤ 500 := h_t_exp
    have hstep2 :
        (exp (-(230 : ℝ)) * exp (-(1 / 1000 : ℝ) * t)) * t ≤ exp (-(230 : ℝ)) * 500 := by
      have hmul := mul_le_mul_of_nonneg_left h_t_exp' (Real.exp_nonneg (-(230 : ℝ)))
      calc
        (exp (-(230 : ℝ)) * exp (-(1 / 1000 : ℝ) * t)) * t
            = exp (-(230 : ℝ)) * (exp (-(1 / 1000 : ℝ) * t) * t) := by simp [mul_assoc]
        _ ≤ exp (-(230 : ℝ)) * 500 := hmul
    exact hstep1.trans hstep2
  calc
    powfac * expfac * ((5 * t * t) * exp (-(2 / 3 : ℝ) * t))
        = (powfac * (5 * t * t)) * (expfac * exp (-(2 / 3 : ℝ) * t)) := by ac_rfl
    _ ≤ (5 * (5.5666305 : ℝ) * t) * exp (-(5 / 12 : ℝ) * t) := by
      exact mul_le_mul hpow_t2 h_exp_third
        (mul_nonneg hexpfac_nonneg (Real.exp_nonneg _)) (by positivity)
    _ = (5 * (5.5666305 : ℝ)) * (exp (-(5 / 12 : ℝ) * t) * t) := by ac_rfl
    _ ≤ (5 * (5.5666305 : ℝ)) * (exp (-(230 : ℝ)) * 500) := by
      gcongr
    _ = (2500 * (5.5666305 : ℝ)) * exp (-(230 : ℝ)) := by ring_nf

/--
**The missing lemma** Codex complained about:
for `log x₀ ≥ 1000` the correction `ν_asymp` is far below `1e-5`.
This is enough to go from the “exact” Remark 15 statement with `(1+ν_asymp)`
to the relaxed statement with `(1+remark_15_margin)`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/FKS2/Variante677b791cd8a3612859851d52d29bc8714a3844979df02a794d8fd4e87a9731a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/FKS2/Variante677b791cd8a3612859851d52d29bc8714a3844979df02a794d8fd4e87a9731a.lean#L817).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2da8f7a1095fdd5b64ca8609b613f4c0960c9eed` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
