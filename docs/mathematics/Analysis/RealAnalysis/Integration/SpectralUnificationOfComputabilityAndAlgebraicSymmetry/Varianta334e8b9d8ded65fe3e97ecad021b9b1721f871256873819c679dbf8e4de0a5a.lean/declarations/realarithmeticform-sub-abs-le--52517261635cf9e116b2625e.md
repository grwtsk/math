# realArithmeticForm_sub_abs_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "da990ce0c419f1c0d6d31336deb055404d42ddde",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 246,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a3/a334e8b9d8ded65fe3e97ecad021b9b1721f871256873819c679dbf8e4de0a5a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:bb4a3cd6-b950-1949-2ccf-3e7df47a3ebb",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ce72430b-abf0-9dd4-7ff3-433cde28983c",
  "kind": "theorem",
  "lexical_name": "realArithmeticForm_sub_abs_le",
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
  "slug": "realarithmeticform-sub-abs-le--52517261635cf9e116b2625e",
  "source": {
    "blob": "da990ce0c419f1c0d6d31336deb055404d42ddde",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 306,
    "line": 246,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Varianta334e8b9d8ded65fe3e97ecad021b9b1721f871256873819c679dbf8e4de0a5a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:52517261635cf9e116b2625e1ae4234ccf76e1902401712787014b7a23c09ab0",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Varianta334e8b9d8ded65fe3e97ecad021b9b1721f871256873819c679dbf8e4de0a5a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ce72430b-abf0-9dd4-7ff3-433cde28983c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 246–306.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem realArithmeticForm_sub_abs_le {R : ℝ} {f g : ℝ → ℝ}
    (hf : Integrable f) (hg : Integrable g)
    (hf2 : MemLp f 2 volume) (hg2 : MemLp g 2 volume)
    (hsf : Function.support f ⊆ Icc (-R) R) (hsg : Function.support g ⊆ Icc (-R) R)
    (hwf : Integrable (fun ξ ↦ logarithmicWeight ξ * Complex.normSq (sourceFourier f ξ)))
    (hwg : Integrable (fun ξ ↦ logarithmicWeight ξ * Complex.normSq (sourceFourier g ξ)))
    (hwe : Integrable (fun ξ ↦ logarithmicWeight ξ *
      Complex.normSq (sourceFourier (fun x ↦ f x - g x) ξ))) :
    |realArithmeticForm R f - realArithmeticForm R g| ≤
      formCoefficient R * logarithmicNorm (fun x ↦ f x - g x) *
        (logarithmicNorm f + logarithmicNorm g) := by
  have hF := lpNorm_le_logarithmicNorm hf hf2 hwf
  have hG := lpNorm_le_logarithmicNorm hg hg2 hwg
  have hE := lpNorm_le_logarithmicNorm (hf.sub hg) (hf2.sub hg2) hwe
  have hpair : lpNorm (fun x ↦ f x - g x) 2 volume *
      (lpNorm f 2 volume + lpNorm g 2 volume) ≤
      logarithmicNorm (fun x ↦ f x - g x) * (logarithmicNorm f + logarithmicNorm g) :=
    mul_le_mul hE (add_le_add hF hG) (add_nonneg lpNorm_nonneg lpNorm_nonneg)
      (logarithmicNorm_nonneg _)
  have hpole := (pole_sub_abs_le hf2 hg2 hsf hsg).trans
    (show poleCoefficient R * lpNorm (fun x ↦ f x - g x) 2 volume *
        (lpNorm f 2 volume + lpNorm g 2 volume) ≤
      poleCoefficient R * logarithmicNorm (fun x ↦ f x - g x) *
        (logarithmicNorm f + logarithmicNorm g) by
      simpa only [mul_assoc] using mul_le_mul_of_nonneg_left hpair (poleCoefficient_nonneg R))
  have hprime := (prime_sub_abs_le R hf2 hg2).trans
    (show primeCoefficient R * lpNorm (fun x ↦ f x - g x) 2 volume *
        (lpNorm f 2 volume + lpNorm g 2 volume) ≤
      primeCoefficient R * logarithmicNorm (fun x ↦ f x - g x) *
        (logarithmicNorm f + logarithmicNorm g) by
      simpa only [mul_assoc] using mul_le_mul_of_nonneg_left hpair (primeCoefficient_nonneg R))
  have harch := ZeroArchimedeanContinuity.archimedeanValue_sub_le hf hg hwf hwg hwe
  let p (v : ℝ → ℝ) := 2 * ∑ n ∈ (Finset.Icc 2 ⌊Real.exp (2 * R)⌋₊).filter
    (fun n : ℕ ↦ (n : ℝ) < Real.exp (2 * R)),
    ArithmeticFunction.vonMangoldt n / Real.sqrt n * (∫ x, v x * v (x - Real.log n))
  change |p f - p g| ≤ _ at hprime
  change |ZeroArchimedeanContinuity.archimedeanValue f + realPoleContribution f - p f -
    (ZeroArchimedeanContinuity.archimedeanValue g + realPoleContribution g - p g)| ≤ _
  calc
    _ = |(ZeroArchimedeanContinuity.archimedeanValue f -
          ZeroArchimedeanContinuity.archimedeanValue g) +
        (realPoleContribution f - realPoleContribution g) + -(p f - p g)| := by
      congr 1
      ring
    _ ≤ |ZeroArchimedeanContinuity.archimedeanValue f -
        ZeroArchimedeanContinuity.archimedeanValue g| +
        |realPoleContribution f - realPoleContribution g| + |p f - p g| := by
      exact (abs_add_le _ _).trans (by
        simpa only [abs_neg] using
          add_le_add (abs_add_le
            (ZeroArchimedeanContinuity.archimedeanValue f -
              ZeroArchimedeanContinuity.archimedeanValue g)
            (realPoleContribution f - realPoleContribution g))
            (le_rfl : |-(p f - p g)| ≤ |-(p f - p g)|))
    _ ≤ _ := by
      have h := add_le_add (add_le_add harch hpole) hprime
      simpa only [formCoefficient, add_mul] using h

end
end ZeroFormContinuity
end FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Varianta334e8b9d8ded65fe3e97ecad021b9b1721f871256873819c679dbf8e4de0a5a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Varianta334e8b9d8ded65fe3e97ecad021b9b1721f871256873819c679dbf8e4de0a5a.lean#L246).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `da990ce0c419f1c0d6d31336deb055404d42ddde` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
