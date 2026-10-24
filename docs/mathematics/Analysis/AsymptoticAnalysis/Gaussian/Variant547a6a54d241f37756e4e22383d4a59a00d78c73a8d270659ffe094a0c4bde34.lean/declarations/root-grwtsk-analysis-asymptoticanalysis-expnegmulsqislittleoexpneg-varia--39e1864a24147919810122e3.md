# _root_.GRWTSK.Analysis.AsymptoticAnalysis.ExpNegMulSqIsLittleOExpNeg.Variantb62a73b6f29ee038ce5f7c9473ee7bb7b7d8f11a3047b08f0a0f1db3c633c729.fourier_transform_gaussian_pi

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4be83f49-5017-3a9d-c285-b54bd1d430ef",
  "kind": "theorem",
  "lexical_name": "_root_.GRWTSK.Analysis.AsymptoticAnalysis.ExpNegMulSqIsLittleOExpNeg.Variantb62a73b6f29ee038ce5f7c9473ee7bb7b7d8f11a3047b08f0a0f1db3c633c729.fourier_transform_gaussian_pi",
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
  "slug": "root-grwtsk-analysis-asymptoticanalysis-expnegmulsqislittleoexpneg-varia--39e1864a24147919810122e3",
  "source": {
    "blob": "031cd32f6e7660a61b7c6ac3977e3bcf76414ab2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 572,
    "line": 545,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/Gaussian/Variant547a6a54d241f37756e4e22383d4a59a00d78c73a8d270659ffe094a0c4bde34.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:39e1864a24147919810122e349170e1aa008ea34f228af32de79a51f94b932d6",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/Gaussian/Variant547a6a54d241f37756e4e22383d4a59a00d78c73a8d270659ffe094a0c4bde34.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4be83f49-5017-3a9d-c285-b54bd1d430ef`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 545–572.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.GRWTSK.Analysis.AsymptoticAnalysis.ExpNegMulSqIsLittleOExpNeg.Variantb62a73b6f29ee038ce5f7c9473ee7bb7b7d8f11a3047b08f0a0f1db3c633c729.fourier_transform_gaussian_pi (hb : 0 < b.re) :
    (𝓕 fun x : ℝ => cexp (-π * b * (x : ℂ) ^ 2)) = fun t : ℝ =>
      (1 : ℂ) / b ^ (1 / 2 : ℂ) * cexp (-π / b * (t : ℂ) ^ 2) := by
  ext1 t
  simp_rw [fourierIntegral_eq_integral_exp_smul, smul_eq_mul]
  have h1 : 0 < re (π * b) := by rw [ofReal_mul_re]; exact mul_pos pi_pos hb
  have h2 : b ≠ 0 := by contrapose! hb; rw [hb, zero_re]
  convert _root_.GRWTSK.Analysis.AsymptoticAnalysis.ExpNegMulSqIsLittleOExpNeg.Variantb62a73b6f29ee038ce5f7c9473ee7bb7b7d8f11a3047b08f0a0f1db3c633c729.fourier_transform_gaussian h1 (-2 * π * t) using 1
  · congr 1 with x : 1
    congr 2
    any_goals push_cast; ring
  · conv_lhs => rw [mul_comm]
    congr 2
    · field_simp [ofReal_ne_zero.mpr pi_ne_zero]; ring
    · rw [← div_div, div_self (ofReal_ne_zero.mpr pi_ne_zero), one_div, one_div b, inv_cpow]
      rw [Ne.def, arg_eq_pi_iff, not_and_or, not_lt]
      exact Or.inl hb.le
#align fourier_transform_gaussian_pi fourier_transform_gaussian_pi

end GaussianFourier

section GaussianPoisson

/-! ## Poisson summation applied to the Gaussian -/


variable {E : Type*} [NormedAddCommGroup E]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/Gaussian/Variant547a6a54d241f37756e4e22383d4a59a00d78c73a8d270659ffe094a0c4bde34.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/Gaussian/Variant547a6a54d241f37756e4e22383d4a59a00d78c73a8d270659ffe094a0c4bde34.lean#L545).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `031cd32f6e7660a61b7c6ac3977e3bcf76414ab2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
