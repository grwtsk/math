# lemma_abadsumas_summable_alternating_theta

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0a0f3aece12c9562ccb5ca1c7447b813a4348cb7",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 2998,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/6d/6d8a698fb5715979d6008ae8967ec22bfd19c06816556eb53c79b2950751a90d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:347ce88c-1df6-06e3-1fdb-c4f4d21b9f40",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:283cf2e3-fdbf-737b-1ed1-55f0921c63e3",
  "kind": "lemma",
  "lexical_name": "lemma_abadsumas_summable_alternating_theta",
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
  "slug": "lemma-abadsumas-summable-alternating-theta--48d73b6f0a6829403d08fba8",
  "source": {
    "blob": "0a0f3aece12c9562ccb5ca1c7447b813a4348cb7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 3031,
    "line": 2998,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ZetaAppendix/Variant6d8a698fb5715979d6008ae8967ec22bfd19c06816556eb53c79b2950751a90d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:48d73b6f0a6829403d08fba8f6310fd461caa080380499669418a2ad852fb70c",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/ZetaAppendix/Variant6d8a698fb5715979d6008ae8967ec22bfd19c06816556eb53c79b2950751a90d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_SOURCE_DEPENDENCY"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:283cf2e3-fdbf-737b-1ed1-55f0921c63e3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 2998–3031.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma lemma_abadsumas_summable_alternating_theta (θ : ℝ) (hθ : |θ| < 1) :
    Summable (fun n : ℕ ↦ ((-1) ^ (n + 2) * 2 * θ / ((n + 1) ^ 2 - θ ^ 2) : ℂ)) := by
  have hθ_sq_lt : θ ^ 2 < 1 := by nlinarith [sq_abs θ, abs_nonneg θ]
  apply Summable.of_norm_bounded (g := fun n : ℕ => 2 * |θ| / ((1 - θ ^ 2) * ((n : ℝ) + 1) ^ 2))
  · apply Summable.mul_left
    have hpos : (0 : ℝ) < 1 - θ ^ 2 := by nlinarith [sq_abs θ, abs_nonneg θ]
    simp_rw [mul_inv]
    apply Summable.mul_left
    have hbase : Summable (fun n : ℕ => (n ^ 2 : ℝ)⁻¹) := by
      simp_rw [inv_eq_one_div]
      norm_cast
      simp_rw [Nat.cast_pow] at ⊢
      apply Real.summable_one_div_nat_pow.mpr (by norm_num)
    exact (summable_nat_add_iff 1).mpr hbase |>.congr
      (fun n => by push_cast; ring_nf)
  · intro n
    have hdenom_pos : (0 : ℝ) < (n + 1) ^ 2 - θ ^ 2 := by
      have : (0 : ℝ) ≤ (↑n : ℝ) := Nat.cast_nonneg n
      nlinarith [sq_nonneg (n : ℝ)]
    rw [show ‖(-1 : ℂ) ^ (n + 2) * 2 * θ / ((n + 1) ^ 2 - θ ^ 2)‖ = 2 * |θ| / (((n : ℝ) + 1) ^ 2 - θ ^ 2) by
      have h2 : ‖(2 : ℂ)‖ = 2 := by norm_num
      rw [norm_div, norm_mul, norm_mul, norm_pow, norm_neg, norm_one, one_pow, h2,
          one_mul, Complex.norm_real, norm_eq_abs]
      congr 1
      rw [show (↑n + 1 : ℂ) ^ 2 - (↑θ : ℂ) ^ 2 = ↑((↑n + 1 : ℝ) ^ 2 - θ ^ 2) by norm_cast,
          Complex.norm_real, Real.norm_eq_abs, abs_of_pos hdenom_pos]]
    have hdenom_ineq : (1 - θ ^ 2) * (n + 1) ^ 2 ≤ (n + 1) ^ 2 - θ ^ 2 := by
      have h_cast : (0 : ℝ) ≤ (↑n : ℝ) := Nat.cast_nonneg n
      have h_ge_one : (1 : ℝ) ≤ ↑n + 1 := by linarith
      have h_sq_ge : (1 : ℝ) ≤ (↑n + 1) ^ 2 := by nlinarith
      nlinarith [sq_nonneg θ]
    have h2 : (0 : ℝ) < 1 - θ ^ 2 := by linarith
    gcongr

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/ZetaAppendix/Variant6d8a698fb5715979d6008ae8967ec22bfd19c06816556eb53c79b2950751a90d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ZetaAppendix/Variant6d8a698fb5715979d6008ae8967ec22bfd19c06816556eb53c79b2950751a90d.lean#L2998).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0a0f3aece12c9562ccb5ca1c7447b813a4348cb7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
