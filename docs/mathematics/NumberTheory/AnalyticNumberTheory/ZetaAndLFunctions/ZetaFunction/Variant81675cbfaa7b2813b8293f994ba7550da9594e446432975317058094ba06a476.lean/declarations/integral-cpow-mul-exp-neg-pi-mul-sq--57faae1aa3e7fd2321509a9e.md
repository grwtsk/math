# integral_cpow_mul_exp_neg_pi_mul_sq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "840977beb5e3eaf65ad76ec0ec0d4647db7d0964",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 489,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/81/81675cbfaa7b2813b8293f994ba7550da9594e446432975317058094ba06a476.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:034009bc-1817-f2e0-0306-18cde6e26aa7",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7baf052b-299b-ce77-3046-9fa83c3e73ef",
  "kind": "theorem",
  "lexical_name": "integral_cpow_mul_exp_neg_pi_mul_sq",
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
  "slug": "integral-cpow-mul-exp-neg-pi-mul-sq--57faae1aa3e7fd2321509a9e",
  "source": {
    "blob": "840977beb5e3eaf65ad76ec0ec0d4647db7d0964",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 509,
    "line": 489,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/ZetaFunction/Variant81675cbfaa7b2813b8293f994ba7550da9594e446432975317058094ba06a476.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:57faae1aa3e7fd2321509a9ee48fdf395f0d5820c3cfba397c275f1dbc727558",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/ZetaFunction/Variant81675cbfaa7b2813b8293f994ba7550da9594e446432975317058094ba06a476.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7baf052b-299b-ce77-3046-9fa83c3e73ef`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 489–509.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem integral_cpow_mul_exp_neg_pi_mul_sq {s : ℂ} (hs : 0 < s.re) (n : ℕ) :
    ∫ t : ℝ in Ioi 0, (t : ℂ) ^ (s - 1) * rexp (-π * t * ((n : ℝ) + 1) ^ 2) =
      (π : ℂ) ^ (-s) * Complex.Gamma s * (1 / ((n : ℂ) + 1) ^ (2 * s)) := by
  rw [Complex.Gamma_eq_integral hs, GammaIntegral_eq_mellin]
  conv_rhs =>
    congr
    rw [← smul_eq_mul, ← mellin_comp_mul_left _ _ pi_pos]
  have : 1 / ((n : ℂ) + 1) ^ (2 * s) = (((n : ℝ) + 1) ^ (2 : ℝ) : ℂ) ^ (-s) := by
    rw [(by norm_num : (n : ℂ) + 1 = ↑((n : ℝ) + 1)), (by norm_num : 2 * s = ↑(2 : ℝ) * s),
      cpow_mul_ofReal_nonneg, one_div, cpow_neg]
    rw [← Nat.cast_succ]
    exact Nat.cast_nonneg _
  conv_rhs => rw [this, mul_comm, ← smul_eq_mul]
  rw [← mellin_comp_mul_right _ _ (show 0 < ((n : ℝ) + 1) ^ (2 : ℝ) by positivity)]
  refine set_integral_congr measurableSet_Ioi fun t _ => ?_
  simp_rw [smul_eq_mul]
  congr 3
  conv_rhs => rw [← Nat.cast_two, rpow_nat_cast]
  ring
#align integral_cpow_mul_exp_neg_pi_mul_sq integral_cpow_mul_exp_neg_pi_mul_sq

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/ZetaFunction/Variant81675cbfaa7b2813b8293f994ba7550da9594e446432975317058094ba06a476.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/ZetaFunction/Variant81675cbfaa7b2813b8293f994ba7550da9594e446432975317058094ba06a476.lean#L489).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `840977beb5e3eaf65ad76ec0ec0d4647db7d0964` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
