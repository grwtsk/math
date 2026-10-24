# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.ZeroSmoothingTransform.Variant95c58390685b4ec6309a7af56634251a56ffb9a5ecca2913348d59c3f4fe2763

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3346cedd88bef959e33ca76056ae6de05aa25410",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/ZeroSmoothingTransform/Variant95c58390685b4ec6309a7af56634251a56ffb9a5ecca2913348d59c3f4fe2763.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroSmoothingTransform/Variant95c58390685b4ec6309a7af56634251a56ffb9a5ecca2913348d59c3f4fe2763.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroSmoothingTransform/Variant95c58390685b4ec6309a7af56634251a56ffb9a5ecca2913348d59c3f4fe2763.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3346cedd88bef959e33ca76056ae6de05aa25410`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/ZeroSmoothingTransform/Variant95c58390685b4ec6309a7af56634251a56ffb9a5ecca2913348d59c3f4fe2763.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/ZeroSmoothingTransform/Variant95c58390685b4ec6309a7af56634251a56ffb9a5ecca2913348d59c3f4fe2763.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.ZeroSmoothingMultiplier` — import line 1; external provider; requires a separately pinned dependency.
- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.ZeroTransform` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [smoothedBilateralTransform](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroSmoothingTransform/Variant95c58390685b4ec6309a7af56634251a56ffb9a5ecca2913348d59c3f4fe2763.lean/declarations/smoothedbilateraltransform--835ab8593a5fdd6c98c6b33d.md) | 24 | `declaration-track:835ab8593a5fdd6c98c6b33d355f678fb8182ede5dfbd51f1cad61fffaf58e85` |
| 2 | `theorem` | [smoothed_transform_integrand_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroSmoothingTransform/Variant95c58390685b4ec6309a7af56634251a56ffb9a5ecca2913348d59c3f4fe2763.lean/declarations/smoothed-transform-integrand-integrable--7515611910e61a04c7522a78.md) | 28 | `result-track:7515611910e61a04c7522a78a1c143da7fa470dbca15de3bac9e359104f7afa9` |
| 3 | `theorem` | [smoothed_weighted_eq_convolution](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroSmoothingTransform/Variant95c58390685b4ec6309a7af56634251a56ffb9a5ecca2913348d59c3f4fe2763.lean/declarations/smoothed-weighted-eq-convolution--9e13715c825bcd3e5ea05b14.md) | 41 | `result-track:9e13715c825bcd3e5ea05b149af5eae2a4e729fce026ec4f80eddec6424b2fa2` |
| 4 | `theorem` | [weighted_convolution_integrand_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroSmoothingTransform/Variant95c58390685b4ec6309a7af56634251a56ffb9a5ecca2913348d59c3f4fe2763.lean/declarations/weighted-convolution-integrand-integrable--32927369c798bbe8be71d152.md) | 63 | `result-track:32927369c798bbe8be71d1523d75d5e208806e0290671b797b37fdb997b95c57` |
| 5 | `theorem` | [weighted_convolution_integrable_at](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroSmoothingTransform/Variant95c58390685b4ec6309a7af56634251a56ffb9a5ecca2913348d59c3f4fe2763.lean/declarations/weighted-convolution-integrable-at--5b404d25ccebd71fa52f70b7.md) | 74 | `result-track:5b404d25ccebd71fa52f70b7a8351ef0a710a88b0af26b8f7e31c8b0d71d49b7` |
| 6 | `theorem` | [smoothed_bilateral_transform](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroSmoothingTransform/Variant95c58390685b4ec6309a7af56634251a56ffb9a5ecca2913348d59c3f4fe2763.lean/declarations/smoothed-bilateral-transform--a2556efe7bdb5d69ea89b795.md) | 84 | `result-track:a2556efe7bdb5d69ea89b795524676749983aea9925f4cd39edccdb3672bc017` |
| 7 | `theorem` | [smoothed_bilateral_transform_zeroOccurrence](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroSmoothingTransform/Variant95c58390685b4ec6309a7af56634251a56ffb9a5ecca2913348d59c3f4fe2763.lean/declarations/smoothed-bilateral-transform-zerooccurrence--8a2668f5a30778bdae118fc1.md) | 94 | `result-track:8a2668f5a30778bdae118fc195deaa8b41ee8caeeec9fe10ebb045286db72964` |
| 8 | `theorem` | [source_transform_control](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroSmoothingTransform/Variant95c58390685b4ec6309a7af56634251a56ffb9a5ecca2913348d59c3f4fe2763.lean/declarations/source-transform-control--ebe9124c02b9be827729c49d.md) | 102 | `result-track:ebe9124c02b9be827729c49d105139efeeab3b679b2289f64ab6500f891addab` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
