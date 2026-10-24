# actualGammaBracket_integrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6dc7f7f9-ea73-60cd-a047-276277c09952",
  "kind": "theorem",
  "lexical_name": "actualGammaBracket_integrable",
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
  "slug": "actualgammabracket-integrable--fef9d7e00905c500e9a26b53",
  "source": {
    "blob": "66154422b4349763f674539db4bead87b5f46363",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 82,
    "line": 56,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceActualZeroArithmeticDictionary/Variant21c4518ea222ad834e02db078d137c827e6ec2a4829827d950007b9378eb42d5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fef9d7e00905c500e9a26b532e867d3dbd1a8471ea4dc0797e0325cb65bac6c7",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceActualZeroArithmeticDictionary/Variant21c4518ea222ad834e02db078d137c827e6ec2a4829827d950007b9378eb42d5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6dc7f7f9-ea73-60cd-a047-276277c09952`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 56–82.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualGammaBracket_integrable (A : ℝ) (hA : 1 ≤ A) :
    Integrable (fun t : ℝ =>
      paperFT (fun u => (sourceCorrelation explicitSecondDerivative A u : ℂ)) (t : ℂ) *
        ((EF.gammaBracket t : ℝ) : ℂ)) := by
  have hi : Integrable (fun t : ℝ =>
      actualInitialPrimeMellin A ((1 / 2 : ℂ) + (t : ℂ) * Complex.I) *
        logDeriv Complex.Gammaℝ ((1 / 2 : ℂ) + (t : ℂ) * Complex.I)) := by
    simpa [actualInitialPrimeMellin_eq_Hfn] using
      WeilEF.integrable_Hfn_mul_logDeriv_Gammaℝ
        (actualInitialPrimeKernel_contDiff A hA)
        (actualInitialPrimeKernel_hasCompactSupport A hA)
        (σ := 1 / 2) (by norm_num) (by norm_num)
  have hj := hi.comp_neg
  refine (hi.add hj).congr (Filter.Eventually.of_forall fun t => ?_)
  simp only [Pi.add_apply]
  rw [show (1 / 2 : ℂ) + ((-t : ℝ) : ℂ) * Complex.I =
    1 - ((1 / 2 : ℂ) + (t : ℂ) * Complex.I) by push_cast; ring,
    actualInitialPrimeMellin_one_sub A hA,
    actualInitialPrimeMellin_on_half]
  rw [← mul_add]
  rw [show (1 : ℂ) - (1 / 2 + (t : ℂ) * Complex.I) =
      1 / 2 - (t : ℂ) * Complex.I by ring, WeilEF.gammaR_bracket]
  unfold EF.gammaBracket
  congr 2
  ring

/-- The independently defined original real archimedean integrand is genuinely L1. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceActualZeroArithmeticDictionary/Variant21c4518ea222ad834e02db078d137c827e6ec2a4829827d950007b9378eb42d5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceActualZeroArithmeticDictionary/Variant21c4518ea222ad834e02db078d137c827e6ec2a4829827d950007b9378eb42d5.lean#L56).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `66154422b4349763f674539db4bead87b5f46363` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
