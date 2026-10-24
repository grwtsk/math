# Verification target: GRWTSK.Analysis.ComplexAnalysis.Complex.Variant7300ac5a5d258028caff84d8ded945944a677db584570968a057bdaca05d23af

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "694263be461597ac5f6e6d1966d14bc9759f5d0c",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/ComplexAnalysis/Complex/Variant7300ac5a5d258028caff84d8ded945944a677db584570968a057bdaca05d23af.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/ComplexAnalysis/Complex/Variant7300ac5a5d258028caff84d8ded945944a677db584570968a057bdaca05d23af.lean/index.md) · [Full source](../../../../../mathematics/Analysis/ComplexAnalysis/Complex/Variant7300ac5a5d258028caff84d8ded945944a677db584570968a057bdaca05d23af.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `694263be461597ac5f6e6d1966d14bc9759f5d0c`.

Source path: `GRWTSK/Analysis/ComplexAnalysis/Complex/Variant7300ac5a5d258028caff84d8ded945944a677db584570968a057bdaca05d23af.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/ComplexAnalysis/Complex/Variant7300ac5a5d258028caff84d8ded945944a677db584570968a057bdaca05d23af.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Measure.Haar.InnerProductSpace` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Constructions.BorelSpace.Complex` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [measurableEquivPi](../../../../../mathematics/Analysis/ComplexAnalysis/Complex/Variant7300ac5a5d258028caff84d8ded945944a677db584570968a057bdaca05d23af.lean/declarations/measurableequivpi--ecbde67d1b729a0e7bf34ae1.md) | 27 | `declaration-track:ecbde67d1b729a0e7bf34ae1633ca8525f294b7aee855ee3ced5e27fe6b7e2c1` |
| 2 | `theorem` | [measurableEquivPi_apply](../../../../../mathematics/Analysis/ComplexAnalysis/Complex/Variant7300ac5a5d258028caff84d8ded945944a677db584570968a057bdaca05d23af.lean/declarations/measurableequivpi-apply--cd0909691c7b7c36ec955498.md) | 31 | `result-track:cd0909691c7b7c36ec9554982fe713066f183c32f706c88ec04244d75811ba1c` |
| 3 | `theorem` | [measurableEquivPi_symm_apply](../../../../../mathematics/Analysis/ComplexAnalysis/Complex/Variant7300ac5a5d258028caff84d8ded945944a677db584570968a057bdaca05d23af.lean/declarations/measurableequivpi-symm-apply--d3aa20348a8f41e96730bfba.md) | 35 | `result-track:d3aa20348a8f41e96730bfbaf505a4652e1a4562b5dc6b07b4d1206326552ec1` |
| 4 | `def` | [measurableEquivRealProd](../../../../../mathematics/Analysis/ComplexAnalysis/Complex/Variant7300ac5a5d258028caff84d8ded945944a677db584570968a057bdaca05d23af.lean/declarations/measurableequivrealprod--a0d861601654a7d4efc58cc9.md) | 39 | `declaration-track:a0d861601654a7d4efc58cc9690ee19f77a2fcfb9ce723b335b64339abcc38af` |
| 5 | `theorem` | [measurableEquivRealProd_apply](../../../../../mathematics/Analysis/ComplexAnalysis/Complex/Variant7300ac5a5d258028caff84d8ded945944a677db584570968a057bdaca05d23af.lean/declarations/measurableequivrealprod-apply--e81a9d934d7d4443fcd55c59.md) | 43 | `result-track:e81a9d934d7d4443fcd55c592840a4b7023b145f7ee1b2e28420ab91de12255e` |
| 6 | `theorem` | [measurableEquivRealProd_symm_apply](../../../../../mathematics/Analysis/ComplexAnalysis/Complex/Variant7300ac5a5d258028caff84d8ded945944a677db584570968a057bdaca05d23af.lean/declarations/measurableequivrealprod-symm-apply--c4991c81e4b9c49aedcd1055.md) | 46 | `result-track:c4991c81e4b9c49aedcd10550be4833d4441602b0f54da2eb77c7d2c8ad18023` |
| 7 | `theorem` | [volume_preserving_equiv_pi](../../../../../mathematics/Analysis/ComplexAnalysis/Complex/Variant7300ac5a5d258028caff84d8ded945944a677db584570968a057bdaca05d23af.lean/declarations/volume-preserving-equiv-pi--cc7ad8480f629e261bca11c9.md) | 49 | `result-track:cc7ad8480f629e261bca11c92a7ee3981034e661ff765e2e7f571ae5c700d1f0` |
| 8 | `theorem` | [volume_preserving_equiv_real_prod](../../../../../mathematics/Analysis/ComplexAnalysis/Complex/Variant7300ac5a5d258028caff84d8ded945944a677db584570968a057bdaca05d23af.lean/declarations/volume-preserving-equiv-real-prod--d63773f4fcc34fb2332d1fae.md) | 57 | `result-track:d63773f4fcc34fb2332d1fae4f38271b4f6899fa87dab907c2384820879c3426` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
