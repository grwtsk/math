# UpperHalfPlane.hasSum_norm_sq_qExpansion_coeff_mul_exp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "cbbbfa79dea632b1ec883c05050e549f0ac423d9",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 292,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/eb/eb90a119e7f3a762029041318fe7a4427e967cd82c9f1143cce0c977e1bca1ad.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2a9fd957-2947-0244-1e97-ffcf4af3f344",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:af663d15-49cb-8ca3-c947-6ad06754b812",
  "kind": "lemma",
  "lexical_name": "UpperHalfPlane.hasSum_norm_sq_qExpansion_coeff_mul_exp",
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
  "slug": "upperhalfplane-hassum-norm-sq-qexpansion-coeff-mul-exp--ef29f5dd083eda1d6e99485c",
  "source": {
    "blob": "cbbbfa79dea632b1ec883c05050e549f0ac423d9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 322,
    "line": 292,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/Bounds/Varianteb90a119e7f3a762029041318fe7a4427e967cd82c9f1143cce0c977e1bca1ad.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ef29f5dd083eda1d6e99485ca1f60d9c1c8b5823278cf755a6fa4f0ad609b813",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/Bounds/Varianteb90a119e7f3a762029041318fe7a4427e967cd82c9f1143cce0c977e1bca1ad.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:af663d15-49cb-8ca3-c947-6ad06754b812`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 292–322.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma UpperHalfPlane.hasSum_norm_sq_qExpansion_coeff_mul_exp {f : ℍ → ℂ} {h : ℝ} (hh : 0 < h)
    (hfper : Function.Periodic (f ∘ ofComplex) h) (hfhol : MDiff f)
    (hfbdd : IsBoundedAtImInfty f) {y : ℝ} (hy : 0 < y) :
    HasSum (fun n : ℕ ↦ ‖(qExpansion h f).coeff n‖ ^ 2 * Real.exp (-(4 * π * n * y / h)))
      (h⁻¹ * ∫ x in 0..h, ‖f ⟨x + y * UpperHalfPlane.I, by simpa using hy⟩‖ ^ 2) := by
  let g : ℝ → ℂ := fun x ↦ f ⟨x + y * UpperHalfPlane.I, by simpa using hy⟩
  have hg : Continuous g := by fun_prop
  -- Parseval over `ℤ`, regrouped as a sum over `ℕ` of the terms `n` and `-(n + 1)`.
  have hP := (hasSum_sq_fourierCoeffOn hh <|
    (MeasureTheory.memLp_two_iff_integrable_sq_norm hg.aestronglyMeasurable).2
      (hg.norm.pow 2).integrableOn_Ioc).nat_add_neg_add_one
  simp only [sub_zero, smul_eq_mul] at hP
  convert hP using 2 with n
  -- The negative-index terms vanish.
  rw [show (-((n : ℤ) + 1) : ℤ) = -(n + 1 : ℕ) by push_cast; ring,
    fourierCoeffOn_neg_eq_zero hh hfper hfhol hfbdd hy n, norm_zero, zero_pow two_ne_zero, add_zero]
  -- The nonnegative terms are the rescaled `q`-expansion coefficients.
  have h1 : Real.exp (2 * π * n * y / h) ^ 2 * Real.exp (-(4 * π * n * y / h)) = 1 := by
    rw [sq, ← Real.exp_add, ← Real.exp_add, Real.exp_eq_one_iff]
    ring
  rw [qExpansion_coeff_eq_exp_mul_fourierCoeffOn hh hfper hfhol hfbdd hy n, norm_mul,
    Complex.norm_of_nonneg (Real.exp_pos _).le, mul_pow, mul_right_comm, h1, one_mul]

/--
Bound for the sum of the squared norms of the first `M` `q`-expansion coefficients with an
exponentially-decaying weight term, in terms of the integral of `‖f‖ ^ 2` along a horizontal
line.

(This is Bessel's inequality for the Fourier series of the periodic function `f (· + I * y)`; see
`hasSum_norm_sq_qExpansion_coeff_mul_exp` for the corresponding equality.)
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/Bounds/Varianteb90a119e7f3a762029041318fe7a4427e967cd82c9f1143cce0c977e1bca1ad.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/Bounds/Varianteb90a119e7f3a762029041318fe7a4427e967cd82c9f1143cce0c977e1bca1ad.lean#L292).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cbbbfa79dea632b1ec883c05050e549f0ac423d9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
