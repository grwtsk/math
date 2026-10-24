# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.MellinInversion.Variantc6301dacbf437116376d7e14f6a0b20e122d89b43b4c297e09aae2fa2dcf8562

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "35e5e95105a6a7314570a93629a73db8d2e17988",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/MellinInversion/Variantc6301dacbf437116376d7e14f6a0b20e122d89b43b4c297e09aae2fa2dcf8562.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MellinInversion/Variantc6301dacbf437116376d7e14f6a0b20e122d89b43b4c297e09aae2fa2dcf8562.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MellinInversion/Variantc6301dacbf437116376d7e14f6a0b20e122d89b43b4c297e09aae2fa2dcf8562.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `35e5e95105a6a7314570a93629a73db8d2e17988`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/MellinInversion/Variantc6301dacbf437116376d7e14f6a0b20e122d89b43b4c297e09aae2fa2dcf8562.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/MellinInversion/Variantc6301dacbf437116376d7e14f6a0b20e122d89b43b4c297e09aae2fa2dcf8562.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Fourier.Inversion` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.MellinTransform` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [rexp_neg_deriv_aux](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MellinInversion/Variantc6301dacbf437116376d7e14f6a0b20e122d89b43b4c297e09aae2fa2dcf8562.lean/declarations/rexp-neg-deriv-aux--167ed6ab4d7b7154c818b836.md) | 24 | `result-track:167ed6ab4d7b7154c818b836fabb0eaa4e7b490d09f34cc2f5b4df16e09324a0` |
| 2 | `theorem` | [rexp_neg_image_aux](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MellinInversion/Variantc6301dacbf437116376d7e14f6a0b20e122d89b43b4c297e09aae2fa2dcf8562.lean/declarations/rexp-neg-image-aux--848a944d0724176cd42e0c65.md) | 29 | `result-track:848a944d0724176cd42e0c652f44a6a28510d2872c663ff3aa199e1935c5ee5a` |
| 3 | `theorem` | [rexp_neg_injOn_aux](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MellinInversion/Variantc6301dacbf437116376d7e14f6a0b20e122d89b43b4c297e09aae2fa2dcf8562.lean/declarations/rexp-neg-injon-aux--fa1e6c4fef771919122adce9.md) | 32 | `result-track:fa1e6c4fef771919122adce9635d7f462ffbcd4688f39d947607957e010c8bb4` |
| 4 | `theorem` | [rexp_cexp_aux](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MellinInversion/Variantc6301dacbf437116376d7e14f6a0b20e122d89b43b4c297e09aae2fa2dcf8562.lean/declarations/rexp-cexp-aux--3ea504c9fca4e45be80f922a.md) | 35 | `result-track:3ea504c9fca4e45be80f922a43a91307e0c189d3309e694540c17fba8f8fcdf8` |
| 5 | `theorem` | [mellin_eq_fourierIntegral](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MellinInversion/Variantc6301dacbf437116376d7e14f6a0b20e122d89b43b4c297e09aae2fa2dcf8562.lean/declarations/mellin-eq-fourierintegral--425bd3494530771bcc4e892a.md) | 45 | `result-track:425bd3494530771bcc4e892a9f4ad5164039503d7b8aa6b835d8b5127b375000` |
| 6 | `theorem` | [mellinInv_eq_fourierIntegralInv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MellinInversion/Variantc6301dacbf437116376d7e14f6a0b20e122d89b43b4c297e09aae2fa2dcf8562.lean/declarations/mellininv-eq-fourierintegralinv--64e70cbdf0319759b98d2189.md) | 70 | `result-track:64e70cbdf0319759b98d21899d70f4d1b1ebcf857f1b6eebf6dac5ed61617314` |
| 7 | `theorem` | [mellin_inversion](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MellinInversion/Variantc6301dacbf437116376d7e14f6a0b20e122d89b43b4c297e09aae2fa2dcf8562.lean/declarations/mellin-inversion--499ef288b211f3a2b23a6046.md) | 90 | `result-track:499ef288b211f3a2b23a6046e97412f076a905938a8e401b4f713fc190fe8ca8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
