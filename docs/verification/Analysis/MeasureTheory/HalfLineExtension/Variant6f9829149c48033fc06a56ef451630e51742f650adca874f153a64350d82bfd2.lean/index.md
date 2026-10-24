# Verification target: GRWTSK.Analysis.MeasureTheory.HalfLineExtension.Variant6f9829149c48033fc06a56ef451630e51742f650adca874f153a64350d82bfd2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a0ba680171320cfe9063d1bd177bae87cd7b441e",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/HalfLineExtension/Variant6f9829149c48033fc06a56ef451630e51742f650adca874f153a64350d82bfd2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/HalfLineExtension/Variant6f9829149c48033fc06a56ef451630e51742f650adca874f153a64350d82bfd2.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/HalfLineExtension/Variant6f9829149c48033fc06a56ef451630e51742f650adca874f153a64350d82bfd2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a0ba680171320cfe9063d1bd177bae87cd7b441e`.

Source path: `GRWTSK/Analysis/MeasureTheory/HalfLineExtension/Variant6f9829149c48033fc06a56ef451630e51742f650adca874f153a64350d82bfd2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/HalfLineExtension/Variant6f9829149c48033fc06a56ef451630e51742f650adca874f153a64350d82bfd2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceComparison.HalfLineExponential` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Function.LpSeminorm.Indicator` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.Bochner.Set` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [FullH](../../../../../mathematics/Analysis/MeasureTheory/HalfLineExtension/Variant6f9829149c48033fc06a56ef451630e51742f650adca874f153a64350d82bfd2.lean/declarations/fullh--7175c10756901d501525c2c5.md) | 24 | `declaration-track:7175c10756901d501525c2c5778ed4fd01c362f5e01b6a2b38d51bb6a36dcd3b` |
| 2 | `def` | [zeroExtensionFunction](../../../../../mathematics/Analysis/MeasureTheory/HalfLineExtension/Variant6f9829149c48033fc06a56ef451630e51742f650adca874f153a64350d82bfd2.lean/declarations/zeroextensionfunction--83ae228e5cf4ae785eea7d76.md) | 26 | `declaration-track:83ae228e5cf4ae785eea7d76cc472425f59fbfb7a473431a3412ffbc831a8b5d` |
| 3 | `theorem` | [zeroExtensionFunction_memLp](../../../../../mathematics/Analysis/MeasureTheory/HalfLineExtension/Variant6f9829149c48033fc06a56ef451630e51742f650adca874f153a64350d82bfd2.lean/declarations/zeroextensionfunction-memlp--e4e87085d7ef800275c4f0a9.md) | 28 | `result-track:e4e87085d7ef800275c4f0a93607c41c2385a47c6fc97d62448e2d284c8cc204` |
| 4 | `def` | [zeroExtensionVector](../../../../../mathematics/Analysis/MeasureTheory/HalfLineExtension/Variant6f9829149c48033fc06a56ef451630e51742f650adca874f153a64350d82bfd2.lean/declarations/zeroextensionvector--a51f83e7d75b84b612860262.md) | 32 | `declaration-track:a51f83e7d75b84b612860262615f789a06beb7caeadaf432c758d55589aea9b3` |
| 5 | `theorem` | [zeroExtensionVector_ae](../../../../../mathematics/Analysis/MeasureTheory/HalfLineExtension/Variant6f9829149c48033fc06a56ef451630e51742f650adca874f153a64350d82bfd2.lean/declarations/zeroextensionvector-ae--632f31980a0962c14833f785.md) | 35 | `result-track:632f31980a0962c14833f7851028f9537c825f0fcef37a3bd243ce4c82cb3657` |
| 6 | `theorem` | [zeroExtensionVector_norm](../../../../../mathematics/Analysis/MeasureTheory/HalfLineExtension/Variant6f9829149c48033fc06a56ef451630e51742f650adca874f153a64350d82bfd2.lean/declarations/zeroextensionvector-norm--21984f8da1b19c0e031689e9.md) | 39 | `result-track:21984f8da1b19c0e031689e99fe72c0cd9cf3460b516a8fbb351a21eac755c19` |
| 7 | `theorem` | [zeroExtensionVector_add](../../../../../mathematics/Analysis/MeasureTheory/HalfLineExtension/Variant6f9829149c48033fc06a56ef451630e51742f650adca874f153a64350d82bfd2.lean/declarations/zeroextensionvector-add--79e5c838642dcf045fdc0d15.md) | 44 | `result-track:79e5c838642dcf045fdc0d156a1bbb4a95b661a08c35d82af5e5dcf796435397` |
| 8 | `theorem` | [zeroExtensionVector_smul](../../../../../mathematics/Analysis/MeasureTheory/HalfLineExtension/Variant6f9829149c48033fc06a56ef451630e51742f650adca874f153a64350d82bfd2.lean/declarations/zeroextensionvector-smul--ae5a03863f4c25427674e069.md) | 56 | `result-track:ae5a03863f4c25427674e069707b872367603fc6e9f825e75032777c86187e73` |
| 9 | `def` | [zeroExtension](../../../../../mathematics/Analysis/MeasureTheory/HalfLineExtension/Variant6f9829149c48033fc06a56ef451630e51742f650adca874f153a64350d82bfd2.lean/declarations/zeroextension--2479e502dd613b27f32defc4.md) | 69 | `declaration-track:2479e502dd613b27f32defc4b648da3040bcfb5bffc889947c418efd3a6b2671` |
| 10 | `theorem` | [zeroExtension_ae](../../../../../mathematics/Analysis/MeasureTheory/HalfLineExtension/Variant6f9829149c48033fc06a56ef451630e51742f650adca874f153a64350d82bfd2.lean/declarations/zeroextension-ae--39fa8230362b3c9f7ab42a45.md) | 75 | `result-track:39fa8230362b3c9f7ab42a456096ebf20ed2de406175d78b00cbd5aba04659dd` |
| 11 | `theorem` | [zeroExtension_norm](../../../../../mathematics/Analysis/MeasureTheory/HalfLineExtension/Variant6f9829149c48033fc06a56ef451630e51742f650adca874f153a64350d82bfd2.lean/declarations/zeroextension-norm--2465df18c0f6d3cadaa11ba3.md) | 79 | `result-track:2465df18c0f6d3cadaa11ba3d012ddb93ef37a44ad78c3579cb26ad7f77b73d5` |
| 12 | `theorem` | [zeroExtension_ae_halfLine](../../../../../mathematics/Analysis/MeasureTheory/HalfLineExtension/Variant6f9829149c48033fc06a56ef451630e51742f650adca874f153a64350d82bfd2.lean/declarations/zeroextension-ae-halfline--50de3013e410b053d377406e.md) | 82 | `result-track:50de3013e410b053d377406e3db6d026c61926da5ab67683aa36df475078a6b9` |
| 13 | `theorem` | [zeroExtension_ae_nonpositive](../../../../../mathematics/Analysis/MeasureTheory/HalfLineExtension/Variant6f9829149c48033fc06a56ef451630e51742f650adca874f153a64350d82bfd2.lean/declarations/zeroextension-ae-nonpositive--663100d3ab7a86d8ea98a2b1.md) | 88 | `result-track:663100d3ab7a86d8ea98a2b1ea1e63c94ca469c10ff0dc690f7cb2c829d1ca4f` |
| 14 | `def` | [restriction](../../../../../mathematics/Analysis/MeasureTheory/HalfLineExtension/Variant6f9829149c48033fc06a56ef451630e51742f650adca874f153a64350d82bfd2.lean/declarations/restriction--f8f363ab79aba1519d85924a.md) | 97 | `declaration-track:f8f363ab79aba1519d85924abfa31759fff6579f4095d3e8ac4dbba15c36b311` |
| 15 | `theorem` | [restriction_ae](../../../../../mathematics/Analysis/MeasureTheory/HalfLineExtension/Variant6f9829149c48033fc06a56ef451630e51742f650adca874f153a64350d82bfd2.lean/declarations/restriction-ae--c3d876161fad4ad6fc09f462.md) | 99 | `result-track:c3d876161fad4ad6fc09f4628d4959e14a32c4df9ead1d4258c8d9ad6667d906` |
| 16 | `theorem` | [restriction_norm_le](../../../../../mathematics/Analysis/MeasureTheory/HalfLineExtension/Variant6f9829149c48033fc06a56ef451630e51742f650adca874f153a64350d82bfd2.lean/declarations/restriction-norm-le--1162b81dec8a8ff44d9ebf9c.md) | 102 | `result-track:1162b81dec8a8ff44d9ebf9ce2d6a52762e586a50939440eab4a10f966b350fd` |
| 17 | `theorem` | [restriction_opNorm_le](../../../../../mathematics/Analysis/MeasureTheory/HalfLineExtension/Variant6f9829149c48033fc06a56ef451630e51742f650adca874f153a64350d82bfd2.lean/declarations/restriction-opnorm-le--4ba9309d939f503433c36686.md) | 105 | `result-track:4ba9309d939f503433c366860644bf344ae5ba629947d31179cf19c79b9fdbdc` |
| 18 | `theorem` | [restriction_zeroExtension](../../../../../mathematics/Analysis/MeasureTheory/HalfLineExtension/Variant6f9829149c48033fc06a56ef451630e51742f650adca874f153a64350d82bfd2.lean/declarations/restriction-zeroextension--f823e62e220d4eba888f0d80.md) | 110 | `result-track:f823e62e220d4eba888f0d80833cb6a98fd824cbc6763512f2f5504a871462a7` |
| 19 | `theorem` | [restriction_comp_zeroExtension](../../../../../mathematics/Analysis/MeasureTheory/HalfLineExtension/Variant6f9829149c48033fc06a56ef451630e51742f650adca874f153a64350d82bfd2.lean/declarations/restriction-comp-zeroextension--86cf6d32bd86002ab4f6ac93.md) | 113 | `result-track:86cf6d32bd86002ab4f6ac9345801100f2a077b677745b92cd04e90560768ff4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
