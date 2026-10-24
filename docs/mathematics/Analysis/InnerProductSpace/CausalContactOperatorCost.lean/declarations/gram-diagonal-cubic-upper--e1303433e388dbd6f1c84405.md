# gram_diagonal_cubic_upper

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cf94ee0a-19ee-fe1e-b9e2-3a3ad8281c3a",
  "kind": "theorem",
  "lexical_name": "gram_diagonal_cubic_upper",
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
  "slug": "gram-diagonal-cubic-upper--e1303433e388dbd6f1c84405",
  "source": {
    "blob": "970397fd684e83af649d2e2dd3efe6a2fcbf9d5c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 129,
    "line": 98,
    "path": "GRWTSK/Analysis/InnerProductSpace/CausalContactOperatorCost.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e1303433e388dbd6f1c8440547e507c52141cceec52e1c1aa8a062f4a8e2b992",
  "verification": {
    "reference": "docs/verification/Analysis/InnerProductSpace/CausalContactOperatorCost.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cf94ee0a-19ee-fe1e-b9e2-3a3ad8281c3a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 98–129.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem gram_diagonal_cubic_upper {n : ℕ} (hn : 1 ≤ n) {T : ℝ}
    (after : Real.log (n : ℝ) ≤ T) :
    gram T n n ≤ (T - Real.log (n : ℝ)) ^ 3 / (n : ℝ) := by
  have logNonnegative : 0 ≤ Real.log (n : ℝ) := Real.log_nonneg (by exact_mod_cast hn)
  have subset : Ioc (Real.log (n : ℝ)) T ⊆ Ioc 0 T := by
    intro u hu
    exact ⟨lt_of_le_of_lt logNonnegative hu.1, hu.2⟩
  have actual := (response_product_integrable T n n).mono_set subset
  have constant : IntegrableOn
      (fun _ : ℝ ↦ (T - Real.log (n : ℝ)) ^ 2 * ((n : ℝ) ^ (-(1 / 2 : ℝ))) ^ 2)
      (Ioc (Real.log (n : ℝ)) T) := continuous_const.integrableOn_Icc.mono_set
        Ioc_subset_Icc_self
  rw [gram_diagonal_eq_post_contact hn T]
  calc
    _ ≤ ∫ _u in Ioc (Real.log (n : ℝ)) T,
        (T - Real.log (n : ℝ)) ^ 2 * ((n : ℝ) ^ (-(1 / 2 : ℝ))) ^ 2 := by
      apply setIntegral_mono_on actual constant measurableSet_Ioc
      intro u hu
      have bounds := response_after_contact_bounds hn hu.1.le
      have halfNonnegative : 0 ≤ (n : ℝ) ^ (-(1 / 2 : ℝ)) :=
        Real.rpow_nonneg (Nat.cast_nonneg n) _
      have upper := bounds.2.trans (mul_le_mul_of_nonneg_right
        (sub_le_sub_right hu.2 _) halfNonnegative)
      have squared := (sq_le_sq₀ bounds.1
        (mul_nonneg (sub_nonneg.mpr after) halfNonnegative)).mpr upper
      rw [mul_pow] at squared
      simpa only [pow_two] using squared
    _ = (T - Real.log (n : ℝ)) ^ 3 / (n : ℝ) := by
      rw [setIntegral_const, Real.volume_real_Ioc_of_le after, smul_eq_mul,
        inverse_half_square hn]
      ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/InnerProductSpace/CausalContactOperatorCost.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/InnerProductSpace/CausalContactOperatorCost.lean#L98).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `970397fd684e83af649d2e2dd3efe6a2fcbf9d5c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
