# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.NNReal.Variantb5bab685ed5500d7973399a0e424651f11a4dfb70801686b1b1ab77d7e708f0a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "95eb389f501e32d1eb6e060c78fe5a19b58dabc3",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/NNReal/Variantb5bab685ed5500d7973399a0e424651f11a4dfb70801686b1b1ab77d7e708f0a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/NNReal/Variantb5bab685ed5500d7973399a0e424651f11a4dfb70801686b1b1ab77d7e708f0a.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/NNReal/Variantb5bab685ed5500d7973399a0e424651f11a4dfb70801686b1b1ab77d7e708f0a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `95eb389f501e32d1eb6e060c78fe5a19b58dabc3`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/NNReal/Variantb5bab685ed5500d7973399a0e424651f11a4dfb70801686b1b1ab77d7e708f0a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/NNReal/Variantb5bab685ed5500d7973399a0e424651f11a4dfb70801686b1b1ab77d7e708f0a.lean.json)

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
| 1 | `theorem` | [integral_rieszMeasure](../../../../../../mathematics/Analysis/RealAnalysis/Integration/NNReal/Variantb5bab685ed5500d7973399a0e424651f11a4dfb70801686b1b1ab77d7e708f0a.lean/declarations/integral-rieszmeasure--300ac822c5261aab8d069d99.md) | 47 | `result-track:300ac822c5261aab8d069d9973726e96a326a96a711ca427eaf334a4e32177c6` |
| 2 | `theorem` | [lintegral_rieszMeasure](../../../../../../mathematics/Analysis/RealAnalysis/Integration/NNReal/Variantb5bab685ed5500d7973399a0e424651f11a4dfb70801686b1b1ab77d7e708f0a.lean/declarations/lintegral-rieszmeasure--07bf97c26bf43c2a88de0eb2.md) | 56 | `result-track:07bf97c26bf43c2a88de0eb24a7fb0a45ed1ad984e6874fbed975b0a68b13124` |
| 3 | `instance` | [rieszMeasure_regular](../../../../../../mathematics/Analysis/RealAnalysis/Integration/NNReal/Variantb5bab685ed5500d7973399a0e424651f11a4dfb70801686b1b1ab77d7e708f0a.lean/declarations/rieszmeasure-regular--871d03b62c0cfa41aa185602.md) | 66 | `declaration-track:871d03b62c0cfa41aa185602cb5e78486d0e1e816635a500368edb558107176f` |
| 4 | `theorem` | [_root_.MeasureTheory.Measure.ext_of_integral_eq_on_compactlySupported_nnreal](../../../../../../mathematics/Analysis/RealAnalysis/Integration/NNReal/Variantb5bab685ed5500d7973399a0e424651f11a4dfb70801686b1b1ab77d7e708f0a.lean/declarations/root-measuretheory-measure-ext-of-integral-eq-on-compactlysupported-nnre--cec306dcadadb7f7c6fca91a.md) | 76 | `result-track:cec306dcadadb7f7c6fca91a2c88a0aa48f337099db1454571604474988e8930` |
| 5 | `theorem` | [integralLinearMap_inj](../../../../../../mathematics/Analysis/RealAnalysis/Integration/NNReal/Variantb5bab685ed5500d7973399a0e424651f11a4dfb70801686b1b1ab77d7e708f0a.lean/declarations/integrallinearmap-inj--b5948532bae781bfb7df8f2a.md) | 88 | `result-track:b5948532bae781bfb7df8f2a143d33daada81a21872f0985a5f4fe789d8edfbd` |
| 6 | `theorem` | [rieszMeasure_integralLinearMap](../../../../../../mathematics/Analysis/RealAnalysis/Integration/NNReal/Variantb5bab685ed5500d7973399a0e424651f11a4dfb70801686b1b1ab77d7e708f0a.lean/declarations/rieszmeasure-integrallinearmap--6da336f0301058117c78c01c.md) | 96 | `result-track:6da336f0301058117c78c01ce2e0aa73424ea254468cf8af2a7cff48fd805775` |
| 7 | `theorem` | [integralLinearMap_rieszMeasure](../../../../../../mathematics/Analysis/RealAnalysis/Integration/NNReal/Variantb5bab685ed5500d7973399a0e424651f11a4dfb70801686b1b1ab77d7e708f0a.lean/declarations/integrallinearmap-rieszmeasure--6ed887d31b6a878b07f25822.md) | 101 | `result-track:6ed887d31b6a878b07f25822699244dd4aa6f29a91228bf9ae603129a5662518` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
