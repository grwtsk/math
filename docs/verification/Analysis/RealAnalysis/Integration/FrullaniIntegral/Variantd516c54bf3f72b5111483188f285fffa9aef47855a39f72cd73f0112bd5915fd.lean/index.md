# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.FrullaniIntegral.Variantd516c54bf3f72b5111483188f285fffa9aef47855a39f72cd73f0112bd5915fd

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4468427c6f5cfe1029c51f5f9f7b111ae5b5c4c9",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/FrullaniIntegral/Variantd516c54bf3f72b5111483188f285fffa9aef47855a39f72cd73f0112bd5915fd.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FrullaniIntegral/Variantd516c54bf3f72b5111483188f285fffa9aef47855a39f72cd73f0112bd5915fd.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FrullaniIntegral/Variantd516c54bf3f72b5111483188f285fffa9aef47855a39f72cd73f0112bd5915fd.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4468427c6f5cfe1029c51f5f9f7b111ae5b5c4c9`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/FrullaniIntegral/Variantd516c54bf3f72b5111483188f285fffa9aef47855a39f72cd73f0112bd5915fd.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/FrullaniIntegral/Variantd516c54bf3f72b5111483188f285fffa9aef47855a39f72cd73f0112bd5915fd.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [intervalIntegrable_inv_smul](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FrullaniIntegral/Variantd516c54bf3f72b5111483188f285fffa9aef47855a39f72cd73f0112bd5915fd.lean/declarations/intervalintegrable-inv-smul--ae1ea3b1c5d50c14fe91f181.md) | 34 | `result-track:ae1ea3b1c5d50c14fe91f181a4a49b5f0c06affc7c47827d7a14044cc1ea75d2` |
| 2 | `lemma` | [intervalIntegrable_inv_smul_comp_mul](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FrullaniIntegral/Variantd516c54bf3f72b5111483188f285fffa9aef47855a39f72cd73f0112bd5915fd.lean/declarations/intervalintegrable-inv-smul-comp-mul--80a3542b292851830e281cb0.md) | 42 | `result-track:80a3542b292851830e281cb03aeda7b72dc01a21dbc68532b49bf64806701d6d` |
| 3 | `lemma` | [integral_comp_mul_inv_smul](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FrullaniIntegral/Variantd516c54bf3f72b5111483188f285fffa9aef47855a39f72cd73f0112bd5915fd.lean/declarations/integral-comp-mul-inv-smul--7b7ceb70a6cbf29232720d8c.md) | 55 | `result-track:7b7ceb70a6cbf29232720d8c2225e2e75dd2570d6b9c048f2c516a1a384c61a6` |
| 4 | `lemma` | [norm_integral_inv_smul_sub_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FrullaniIntegral/Variantd516c54bf3f72b5111483188f285fffa9aef47855a39f72cd73f0112bd5915fd.lean/declarations/norm-integral-inv-smul-sub-le--dd833eccd486c37751aaa01e.md) | 67 | `result-track:dd833eccd486c37751aaa01e36c51118c9f10b280d6d4e987b05cfb34aa5cb75` |
| 5 | `lemma` | [tendsto_integral_inv_smul_of_tendsto_uniform](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FrullaniIntegral/Variantd516c54bf3f72b5111483188f285fffa9aef47855a39f72cd73f0112bd5915fd.lean/declarations/tendsto-integral-inv-smul-of-tendsto-uniform--7b31a732fcf2924fea4d954d.md) | 101 | `result-track:7b31a732fcf2924fea4d954dd4fc922fa951eb75cda163a625ec7a16d7351d63` |
| 6 | `lemma` | [tendsto_integral_inv_smul_nhdsWithin](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FrullaniIntegral/Variantd516c54bf3f72b5111483188f285fffa9aef47855a39f72cd73f0112bd5915fd.lean/declarations/tendsto-integral-inv-smul-nhdswithin--8f9f70dbb4eb734c0d8ff62c.md) | 122 | `result-track:8f9f70dbb4eb734c0d8ff62c0b1c31dbd497fe2dde6de074d1b7275153d42228` |
| 7 | `lemma` | [tendsto_integral_inv_smul_atTop](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FrullaniIntegral/Variantd516c54bf3f72b5111483188f285fffa9aef47855a39f72cd73f0112bd5915fd.lean/declarations/tendsto-integral-inv-smul-attop--7fdaf8300326801ac321926c.md) | 150 | `result-track:7fdaf8300326801ac321926c82c3afcc90386a24003a720880f2ab255fcbfbfe` |
| 8 | `theorem` | [tendsto_intervalIntegral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FrullaniIntegral/Variantd516c54bf3f72b5111483188f285fffa9aef47855a39f72cd73f0112bd5915fd.lean/declarations/tendsto-intervalintegral--ae40506bbf9567bf5d0dc4ba.md) | 179 | `result-track:ae40506bbf9567bf5d0dc4bab759fa35ce5d3252ccd51335b69645e59967b2a2` |
| 9 | `theorem` | [integral_Ioi_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FrullaniIntegral/Variantd516c54bf3f72b5111483188f285fffa9aef47855a39f72cd73f0112bd5915fd.lean/declarations/integral-ioi-eq--691c11b3465ae69187acc4b2.md) | 214 | `result-track:691c11b3465ae69187acc4b2310c7872efafc8d509048261277132bb55b9b200` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
