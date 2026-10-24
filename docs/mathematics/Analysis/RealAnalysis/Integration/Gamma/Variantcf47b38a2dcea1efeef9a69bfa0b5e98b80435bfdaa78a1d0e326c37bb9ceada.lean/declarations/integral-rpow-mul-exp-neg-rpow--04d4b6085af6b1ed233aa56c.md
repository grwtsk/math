# integral_rpow_mul_exp_neg_rpow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9efe7cfdd35b4469bd9cf2621563190c5a662337",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 21,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/cf/cf47b38a2dcea1efeef9a69bfa0b5e98b80435bfdaa78a1d0e326c37bb9ceada.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8d5b6ce5-f1dd-1779-f49d-177c60ed02c5",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:80470597-7548-33d8-0c52-c2dbb002e916",
  "kind": "theorem",
  "lexical_name": "integral_rpow_mul_exp_neg_rpow",
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
  "slug": "integral-rpow-mul-exp-neg-rpow--04d4b6085af6b1ed233aa56c",
  "source": {
    "blob": "9efe7cfdd35b4469bd9cf2621563190c5a662337",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 38,
    "line": 21,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Gamma/Variantcf47b38a2dcea1efeef9a69bfa0b5e98b80435bfdaa78a1d0e326c37bb9ceada.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:04d4b6085af6b1ed233aa56cc2fa7d0459696c72b5f7f30e4f6cdc61dadb8848",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Gamma/Variantcf47b38a2dcea1efeef9a69bfa0b5e98b80435bfdaa78a1d0e326c37bb9ceada.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:80470597-7548-33d8-0c52-c2dbb002e916`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 21–38.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem integral_rpow_mul_exp_neg_rpow {p q : ℝ} (hp : 0 < p) (hq : -1 < q) :
    ∫ x in Ioi (0 : ℝ), x ^ q * exp (- x ^ p) = (1 / p) * Gamma ((q + 1) / p) := by
  calc
    _ = ∫ (x : ℝ) in Ioi 0, (1 / p * x ^ (1 / p - 1)) • ((x ^ (1 / p)) ^ q * exp (-x)) := by
      rw [← integral_comp_rpow_Ioi _ (one_div_ne_zero (ne_of_gt hp)),
        abs_eq_self.mpr (le_of_lt (one_div_pos.mpr hp))]
      refine setIntegral_congr_fun measurableSet_Ioi (fun _ hx => ?_)
      rw [← rpow_mul (le_of_lt hx) _ p, one_div_mul_cancel (ne_of_gt hp), rpow_one]
    _ = ∫ (x : ℝ) in Ioi 0, 1 / p * exp (-x) * x ^ (1 / p - 1 + q / p) := by
      simp_rw [smul_eq_mul, mul_assoc]
      refine setIntegral_congr_fun measurableSet_Ioi (fun _ hx => ?_)
      rw [← rpow_mul (le_of_lt hx), div_mul_eq_mul_div, one_mul, rpow_add hx]
      ring_nf
    _ = (1 / p) * Gamma ((q + 1) / p) := by
      rw [Gamma_eq_integral (div_pos (neg_lt_iff_pos_add.mp hq) hp)]
      simp_rw [show 1 / p - 1 + q / p = (q + 1) / p - 1 by field_simp; ring, ← integral_const_mul,
        ← mul_assoc]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Gamma/Variantcf47b38a2dcea1efeef9a69bfa0b5e98b80435bfdaa78a1d0e326c37bb9ceada.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Gamma/Variantcf47b38a2dcea1efeef9a69bfa0b5e98b80435bfdaa78a1d0e326c37bb9ceada.lean#L21).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9efe7cfdd35b4469bd9cf2621563190c5a662337` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
