# arithmeticSpectrum_triangle

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:16cb906a-a042-551f-bfd2-a973134f44e0",
  "kind": "theorem",
  "lexical_name": "arithmeticSpectrum_triangle",
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
  "slug": "arithmeticspectrum-triangle--88a3b1ca0b647ed7d20340b6",
  "source": {
    "blob": "72c4bf7b6e2f47a80baf2e9308ea42498501b7a3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 56,
    "line": 38,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/WeightedProfileTailAllowance/Variant64d07cfb261f246b505765c6519a65b5ad45ba107fdf9c8ebbb333c60e676f91.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:88a3b1ca0b647ed7d20340b6d41df9c6b68e22a4685d59b0ed389a3e31235f2d",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/WeightedProfileTailAllowance/Variant64d07cfb261f246b505765c6519a65b5ad45ba107fdf9c8ebbb333c60e676f91.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:16cb906a-a042-551f-bfd2-a973134f44e0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 38–56.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem arithmeticSpectrum_triangle (A t ξ : ℝ) :
    ‖arithmeticSpectrum A t ξ‖ ≤ coefficientMass A t := by
  unfold arithmeticSpectrum coefficientMass
  calc
    _ ≤ ∑ n ∈ integerInventory A, ‖(coefficient A t n : ℂ) *
      Complex.exp (-Complex.I * (ξ : ℂ) * (Real.log n : ℂ))‖ := norm_sum_le _ _
    _ = _ := by
      apply Finset.sum_congr rfl
      intro n _
      rw [norm_mul, Complex.norm_real, Real.norm_eq_abs]
      have he : ‖Complex.exp (-Complex.I * (ξ : ℂ) * (Real.log n : ℂ))‖ = 1 := by
        rw [Complex.norm_exp]
        have hr : (-Complex.I * (ξ : ℂ) * (Real.log n : ℂ)).re = 0 := by
          simp only [Complex.mul_re, Complex.mul_im, Complex.neg_re, Complex.neg_im,
            Complex.I_re, Complex.I_im, Complex.ofReal_re, Complex.ofReal_im]
          ring
        rw [hr, Real.exp_zero]
      rw [he, mul_one]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/WeightedProfileTailAllowance/Variant64d07cfb261f246b505765c6519a65b5ad45ba107fdf9c8ebbb333c60e676f91.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/WeightedProfileTailAllowance/Variant64d07cfb261f246b505765c6519a65b5ad45ba107fdf9c8ebbb333c60e676f91.lean#L38).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `72c4bf7b6e2f47a80baf2e9308ea42498501b7a3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
