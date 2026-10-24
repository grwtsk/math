# log_pow_mul_rpow_neg_le_pow_mul_exp_neg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:255e24b2-6c49-871a-2e03-4aee8ce950e9",
  "kind": "lemma",
  "lexical_name": "log_pow_mul_rpow_neg_le_pow_mul_exp_neg",
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
  "slug": "log-pow-mul-rpow-neg-le-pow-mul-exp-neg--3a1c351d5ac432a4d10617af",
  "source": {
    "blob": "ffde19a257af38792c1e302adf6bb58acc6c98a4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1682,
    "line": 1667,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/BKLNW/Variantb86fd97d6d3f5a548080bdb3246099e1f385fa14bd7b0cf76a7a9123f00a2831.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3a1c351d5ac432a4d10617afea8c99b7cb751c461fdb0593a93dfbbfc0214bfe",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/BKLNW/Variantb86fd97d6d3f5a548080bdb3246099e1f385fa14bd7b0cf76a7a9123f00a2831.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:255e24b2-6c49-871a-2e03-4aee8ce950e9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1667–1682.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma log_pow_mul_rpow_neg_le_pow_mul_exp_neg (k ℓ : ℕ) (hℓ : 1 ≤ ℓ)
    (b : ℝ) (hbk : b ≥ 2 * (k : ℝ))
    (x : ℝ) (hx_pos : 0 < x) (hx_log : b ≤ log x) :
    (log x) ^ k * x ^ (-(ℓ : ℝ) / (ℓ + 1)) ≤ b ^ k * exp (-(ℓ : ℝ) * b / (ℓ + 1)) := by
  have hk_ge_1_or_zero : k = 0 ∨ 1 ≤ k := by omega
  rcases hk_ge_1_or_zero with rfl | hk
  · simp only [pow_zero, one_mul]
    rw [rpow_def_of_pos hx_pos, exp_le_exp]
    have h_coeff_neg : -(ℓ : ℝ) / (ℓ + 1) < 0 := by
      have h1 : (0 : ℝ) < (ℓ : ℝ) := by exact_mod_cast hℓ
      linarith [div_pos h1 (by positivity : (0:ℝ) < (ℓ:ℝ) + 1),
                show -(ℓ:ℝ) / (ℓ+1) = -((ℓ:ℝ)/(ℓ+1)) from neg_div _ _]
    linarith [mul_le_mul_of_nonpos_right hx_log h_coeff_neg.le,
              show b * (-(ℓ:ℝ) / (ℓ+1)) = -(ℓ:ℝ) * b / (ℓ+1) from by ring]
  · exact bklnw_eq_3_11_term_le k hk ℓ hℓ b (by exact_mod_cast hbk) x hx_pos hx_log

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/BKLNW/Variantb86fd97d6d3f5a548080bdb3246099e1f385fa14bd7b0cf76a7a9123f00a2831.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/BKLNW/Variantb86fd97d6d3f5a548080bdb3246099e1f385fa14bd7b0cf76a7a9123f00a2831.lean#L1667).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ffde19a257af38792c1e302adf6bb58acc6c98a4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
