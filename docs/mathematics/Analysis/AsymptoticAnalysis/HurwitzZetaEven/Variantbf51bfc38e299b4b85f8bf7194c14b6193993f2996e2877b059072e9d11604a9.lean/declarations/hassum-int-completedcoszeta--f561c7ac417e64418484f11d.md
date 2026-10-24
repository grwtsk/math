# hasSum_int_completedCosZeta

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "92ffff2cca27f74c6f2ef2925ea61dae82f90ba8",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 490,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/bf/bf51bfc38e299b4b85f8bf7194c14b6193993f2996e2877b059072e9d11604a9.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:560fbe8b-ae47-5f5c-daf3-917f7a74adee",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:866ef657-6399-724e-1f57-9db2c4cd7a0c",
  "kind": "lemma",
  "lexical_name": "hasSum_int_completedCosZeta",
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
  "slug": "hassum-int-completedcoszeta--f561c7ac417e64418484f11d",
  "source": {
    "blob": "92ffff2cca27f74c6f2ef2925ea61dae82f90ba8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 513,
    "line": 490,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/HurwitzZetaEven/Variantbf51bfc38e299b4b85f8bf7194c14b6193993f2996e2877b059072e9d11604a9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f561c7ac417e64418484f11dc006d69b4602d3cc4ac3995aee66261f165f3cbd",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/HurwitzZetaEven/Variantbf51bfc38e299b4b85f8bf7194c14b6193993f2996e2877b059072e9d11604a9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:866ef657-6399-724e-1f57-9db2c4cd7a0c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 490–513.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma hasSum_int_completedCosZeta (a : ℝ) {s : ℂ} (hs : 1 < re s) :
    HasSum (fun n : ℤ ↦ Gammaℝ s * cexp (2 * π * I * a * n) / (↑|n| : ℂ) ^ s / 2)
    (completedCosZeta a s) := by
  let c (n : ℤ) : ℂ := cexp (2 * π * I * a * n) / 2
  have hF t (ht : 0 < t) : HasSum (fun n : ℤ ↦ if n = 0 then 0 else c n * rexp (-π * n ^ 2 * t))
      ((cosKernel a t - 1) / 2) := by
    refine ((hasSum_int_cosKernel₀ a ht).div_const 2).congr_fun fun n ↦ ?_
    split_ifs <;> simp [c, div_mul_eq_mul_div]
  simp only [← Int.cast_eq_zero (α := ℝ)] at hF
  rw [show completedCosZeta a s = mellin (fun t ↦ (cosKernel a t - 1 : ℂ) / 2) (s / 2) by
    rw [mellin_div_const, completedCosZeta]
    congr 1
    refine ((hurwitzEvenFEPair a).symm.hasMellin (?_ : 1 / 2 < (s / 2).re)).2.symm
    rwa [div_ofNat_re, div_lt_div_iff_of_pos_right two_pos]]
  refine (hasSum_mellin_pi_mul_sq (zero_lt_one.trans hs) hF ?_).congr_fun fun n ↦ ?_
  · apply (((summable_one_div_int_add_rpow 0 s.re).mpr hs).div_const 2).of_norm_bounded
    intro i
    simp only [c, (by { push_cast; ring } : 2 * π * I * a * i = ↑(2 * π * a * i) * I), norm_div,
      RCLike.norm_ofNat, Complex.norm_exp_ofReal_mul_I, add_zero, norm_one,
      norm_of_nonneg (by positivity : 0 ≤ |(i : ℝ)| ^ s.re), div_right_comm, le_rfl]
  · simp [c, ← Int.cast_abs, div_right_comm, mul_div_assoc]

/-- Formula for `completedCosZeta` as a Dirichlet series in the convergence range
(second version, with sum over `ℕ`). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/HurwitzZetaEven/Variantbf51bfc38e299b4b85f8bf7194c14b6193993f2996e2877b059072e9d11604a9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/HurwitzZetaEven/Variantbf51bfc38e299b4b85f8bf7194c14b6193993f2996e2877b059072e9d11604a9.lean#L490).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `92ffff2cca27f74c6f2ef2925ea61dae82f90ba8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
