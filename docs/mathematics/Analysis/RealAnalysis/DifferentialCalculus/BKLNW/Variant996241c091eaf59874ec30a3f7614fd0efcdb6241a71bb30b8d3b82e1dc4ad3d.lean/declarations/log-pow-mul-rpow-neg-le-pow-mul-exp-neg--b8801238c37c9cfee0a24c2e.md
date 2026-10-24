# log_pow_mul_rpow_neg_le_pow_mul_exp_neg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "de6aa03d0dd36c7f82cfdb89c198f8e6368ef212",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1659,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/99/996241c091eaf59874ec30a3f7614fd0efcdb6241a71bb30b8d3b82e1dc4ad3d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:40f09d08-bd93-5cae-94aa-2fd61c56fc2b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0ba66228-ca32-a8f7-df83-13782b62a455",
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
  "slug": "log-pow-mul-rpow-neg-le-pow-mul-exp-neg--b8801238c37c9cfee0a24c2e",
  "source": {
    "blob": "de6aa03d0dd36c7f82cfdb89c198f8e6368ef212",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1674,
    "line": 1659,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/BKLNW/Variant996241c091eaf59874ec30a3f7614fd0efcdb6241a71bb30b8d3b82e1dc4ad3d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b8801238c37c9cfee0a24c2ebc0df2f438f9af010c401b86a9dc82a879448706",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/BKLNW/Variant996241c091eaf59874ec30a3f7614fd0efcdb6241a71bb30b8d3b82e1dc4ad3d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_SOURCE_DEPENDENCY"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0ba66228-ca32-a8f7-df83-13782b62a455`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1659–1674.

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

**Module verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/BKLNW/Variant996241c091eaf59874ec30a3f7614fd0efcdb6241a71bb30b8d3b82e1dc4ad3d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/BKLNW/Variant996241c091eaf59874ec30a3f7614fd0efcdb6241a71bb30b8d3b82e1dc4ad3d.lean#L1659).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `de6aa03d0dd36c7f82cfdb89c198f8e6368ef212` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
