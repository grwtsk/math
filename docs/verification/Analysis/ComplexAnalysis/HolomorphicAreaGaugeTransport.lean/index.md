# Verification target: GRWTSK.Analysis.Complex.HolomorphicAreaGaugeTransport

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0bd8e61c6305566ce1685fe8bdf15e74f0b7f22f",
  "lexical_observation_count": 36,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Complex/HolomorphicAreaGaugeTransport.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicAreaGaugeTransport.lean/index.md) · [Full source](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicAreaGaugeTransport.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0bd8e61c6305566ce1685fe8bdf15e74f0b7f22f`.

Source path: `GRWTSK/Analysis/Complex/HolomorphicAreaGaugeTransport.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Complex/HolomorphicAreaGaugeTransport.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.Complex.HolomorphicAreaKernelDensity`](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicAreaKernelDensity.lean/index.md) — import line 1; pinned internal source present.
- `Mathlib.Analysis.InnerProductSpace.LinearMap` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [GaugeAreaCompletion](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicAreaGaugeTransport.lean/declarations/gaugeareacompletion--bf7cebd902f767d785a8cc4d.md) | 41 | `declaration-track:bf7cebd902f767d785a8cc4d32bcdc042349ae9fe0bcf4e197e24b12493102e1` |
| 2 | `abbrev` | [areaGauge](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicAreaGaugeTransport.lean/declarations/areagauge--98db53388034cf7d40fd716a.md) | 45 | `declaration-track:98db53388034cf7d40fd716a312c2b781c568e8a986613323a377d0d8f1aa90f` |
| 3 | `def` | [realizedSection](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicAreaGaugeTransport.lean/declarations/realizedsection--0979a40453a7d4b9d6ed34f1.md) | 50 | `declaration-track:0979a40453a7d4b9d6ed34f16f8e7774fdee581d540943c5a1366db130083bf4` |
| 4 | `theorem` | [realizedSection_on_gauge](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicAreaGaugeTransport.lean/declarations/realizedsection-on-gauge--fef13d939638f8afbf1c1e50.md) | 55 | `result-track:fef13d939638f8afbf1c1e50ba3065b59132c04c02616a68f5fa58914e2de379` |
| 5 | `theorem` | [realizedSection_on_class](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicAreaGaugeTransport.lean/declarations/realizedsection-on-class--57cdaaf74e3c66fcbd3d9ff6.md) | 62 | `result-track:57cdaaf74e3c66fcbd3d9ff65144123810756366ba17d582431cf787822df661` |
| 6 | `theorem` | [realizedSection_energy](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicAreaGaugeTransport.lean/declarations/realizedsection-energy--ae895ab6d0e685beb4b3fe0f.md) | 81 | `result-track:ae895ab6d0e685beb4b3fe0f788f566a132ad216a6d05a25378ac9ae67a26f41` |
| 7 | `theorem` | [realizedSection_finite](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicAreaGaugeTransport.lean/declarations/realizedsection-finite--367db4ece5dfc6cec488b926.md) | 90 | `result-track:367db4ece5dfc6cec488b9265cf6b38d01a4c6325388f1ddfb12cab2eda71e11` |
| 8 | `theorem` | [scalarSection_coordinate](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicAreaGaugeTransport.lean/declarations/scalarsection-coordinate--628501001b7fdee66620f8df.md) | 98 | `result-track:628501001b7fdee66620f8dfbb11ca5b9c061d2809e18bc06ca7db4d7672ff5e` |
| 9 | `def` | [chartEvaluation](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicAreaGaugeTransport.lean/declarations/chartevaluation--c3fa30b2037fd26216631e7c.md) | 108 | `declaration-track:c3fa30b2037fd26216631e7c1a0c0acec50726eecb9ff3ff28bfca148ee3896a` |
| 10 | `theorem` | [chartEvaluation_apply](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicAreaGaugeTransport.lean/declarations/chartevaluation-apply--3afd8d9691ff4585d16a68fe.md) | 115 | `result-track:3afd8d9691ff4585d16a68fe776daaa2e97248d003ae12fffce2cf91dcca8b5a` |
| 11 | `theorem` | [chartEvaluation_eq_coordinate](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicAreaGaugeTransport.lean/declarations/chartevaluation-eq-coordinate--d434d30d091265d3a43d4b6c.md) | 122 | `result-track:d434d30d091265d3a43d4b6c4f157cefc8eb364c622ceb65d8b21db3c6afb384` |
| 12 | `def` | [chartKernelVector](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicAreaGaugeTransport.lean/declarations/chartkernelvector--8a5ac7d0024db24f368ca2b4.md) | 130 | `declaration-track:8a5ac7d0024db24f368ca2b4445bfc0dd5f9b764d673b0b386b1a1e3ef284870` |
| 13 | `theorem` | [chartKernelVector_evaluation](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicAreaGaugeTransport.lean/declarations/chartkernelvector-evaluation--0d7edcbd59c4eb6a2c3b3c58.md) | 135 | `result-track:0d7edcbd59c4eb6a2c3b3c58281bf5115399afb4c61eb3e7e1cf1beffa4c5908` |
| 14 | `theorem` | [chartKernelVector_transport](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicAreaGaugeTransport.lean/declarations/chartkernelvector-transport--cbfd0845589217f8a0391e71.md) | 142 | `result-track:cbfd0845589217f8a0391e710a25f5673a0f0a7358aea9426a43866ebd577ec3` |
| 15 | `theorem` | [chartKernelVector_norm](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicAreaGaugeTransport.lean/declarations/chartkernelvector-norm--9fd2362420965b94fa459c51.md) | 152 | `result-track:9fd2362420965b94fa459c51d939b58e215cf89fb3296b37c845fea759da19ef` |
| 16 | `def` | [chartKernel](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicAreaGaugeTransport.lean/declarations/chartkernel--15801335f728182526408ab9.md) | 160 | `declaration-track:15801335f728182526408ab97ae6e7d5ffbd63fda2eb9ed5d8f86ba4baf26abe` |
| 17 | `theorem` | [chartKernel_eq_inner](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicAreaGaugeTransport.lean/declarations/chartkernel-eq-inner--0a49312c8ba38a14a27aebf8.md) | 165 | `result-track:0a49312c8ba38a14a27aebf8a8b7cdc9b7dfbd64095b5efbc79315e677c12030` |
| 18 | `theorem` | [chartKernel_transport](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicAreaGaugeTransport.lean/declarations/chartkernel-transport--41ef50695a03db871cdcb931.md) | 174 | `result-track:41ef50695a03db871cdcb931a34738ca722dd6f379bdc51cdcaf6fc4df376102` |
| 19 | `theorem` | [chartKernel_holomorphic](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicAreaGaugeTransport.lean/declarations/chartkernel-holomorphic--cce1ca6baab4d9d2f9ac64ba.md) | 184 | `result-track:cce1ca6baab4d9d2f9ac64ba7cffaa2c63689b0634d922b669757afc78ab9b5e` |
| 20 | `theorem` | [gauge_multiplier_intertwines](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicAreaGaugeTransport.lean/declarations/gauge-multiplier-intertwines--7b0b13322429d9f2d62e1878.md) | 191 | `result-track:7b0b13322429d9f2d62e1878ffc671dce39d33329ce35fd7c315a0d6f9f0678c` |
| 21 | `theorem` | [chartEvaluation_multiplier](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicAreaGaugeTransport.lean/declarations/chartevaluation-multiplier--0d696bddc44e3294e9ad4296.md) | 202 | `result-track:0d696bddc44e3294e9ad4296851bb035a387978cb6e02343e18124f14cdfcf29` |
| 22 | `theorem` | [target_adjoint_kernel](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicAreaGaugeTransport.lean/declarations/target-adjoint-kernel--9cbbe27757ab623d1a383cb6.md) | 214 | `result-track:9cbbe27757ab623d1a383cb62ee1fe6c415eb8e597081e629349748f0b39ec6d` |
| 23 | `def` | [pulledL2Inclusion](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicAreaGaugeTransport.lean/declarations/pulledl2inclusion--fce1fdbdd30b68c17fccc72d.md) | 227 | `declaration-track:fce1fdbdd30b68c17fccc72d95caaf7d2a542b1b43488a0f9c988af264538a62` |
| 24 | `theorem` | [pulledL2Inclusion_ae](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicAreaGaugeTransport.lean/declarations/pulledl2inclusion-ae--3c1c76ce356ddfe02253dfeb.md) | 232 | `result-track:3c1c76ce356ddfe02253dfeba52bfca3945a63bfe17f856f3caa4717672a6e2c` |
| 25 | `theorem` | [pulledL2Inclusion_norm](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicAreaGaugeTransport.lean/declarations/pulledl2inclusion-norm--ac53c329f66a6a3f94f958e0.md) | 238 | `result-track:ac53c329f66a6a3f94f958e098c247704714e3802d25b006d711116388408aed` |
| 26 | `def` | [pulledLift](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicAreaGaugeTransport.lean/declarations/pulledlift--2d9e2414db1f17238df0f2f4.md) | 244 | `declaration-track:2d9e2414db1f17238df0f2f41b526e8e8c20cdc1748ef80f52b6ea5f146e0bb4` |
| 27 | `theorem` | [pulledLift_eq](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicAreaGaugeTransport.lean/declarations/pulledlift-eq--e9a22cf93e57cc118f625e93.md) | 248 | `result-track:e9a22cf93e57cc118f625e9308c7426db064af9098dab93ef3cd3ca0db395e97` |
| 28 | `def` | [pulledProjection](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicAreaGaugeTransport.lean/declarations/pulledprojection--ae93f0b25d0eba0391c23d55.md) | 263 | `declaration-track:ae93f0b25d0eba0391c23d55892937d6f3e3512bff0f12dbe906463877f652bd` |
| 29 | `theorem` | [pulledProjection_eq](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicAreaGaugeTransport.lean/declarations/pulledprojection-eq--2313b743c4bd25116e9f44c6.md) | 268 | `result-track:2313b743c4bd25116e9f44c6f3ddf7c536fb3f51dfb49a343167bc6509d5b52a` |
| 30 | `theorem` | [pulledLift_realizedSection](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicAreaGaugeTransport.lean/declarations/pulledlift-realizedsection--58844dfd6847a0de8b5d6488.md) | 278 | `result-track:58844dfd6847a0de8b5d6488246f1782de816b4f43e0b8a440fea9f9daf5f47a` |
| 31 | `def` | [phaseUnit](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicAreaGaugeTransport.lean/declarations/phaseunit--9008c71b5e0d131e4ac2210d.md) | 293 | `declaration-track:9008c71b5e0d131e4ac2210d871e69ff15972e8a087c909d61e46b9a0ffd3d5d` |
| 32 | `abbrev` | [phaseGauge](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicAreaGaugeTransport.lean/declarations/phasegauge--a5a83e3fb0a4cb8cfcec0978.md) | 299 | `declaration-track:a5a83e3fb0a4cb8cfcec09787687895414e3ec02845c840bdcd7eb43962e16f8` |
| 33 | `theorem` | [phase_kernel](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicAreaGaugeTransport.lean/declarations/phase-kernel--6eb4d8c6349bfd76657beffd.md) | 301 | `result-track:6eb4d8c6349bfd76657beffd4b65d3a17a404859fa0629c9b2c0be92504b4497` |
| 34 | `theorem` | [phase_wrong_sign](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicAreaGaugeTransport.lean/declarations/phase-wrong-sign--66d8abbb74c68ae94072f635.md) | 310 | `result-track:66d8abbb74c68ae94072f63535cb8e58f581f9bb7d40c355a1bf235eb9864c72` |
| 35 | `theorem` | [doubling_kernel](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicAreaGaugeTransport.lean/declarations/doubling-kernel--3c31dd13948207d21efcef6b.md) | 327 | `result-track:3c31dd13948207d21efcef6b6516ba780dd95bf43856d734580995c3f32db0d8` |
| 36 | `theorem` | [doubling_diagonal_not_invariant](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicAreaGaugeTransport.lean/declarations/doubling-diagonal-not-invariant--973ed68f855d2a3a6a2d31a7.md) | 336 | `result-track:973ed68f855d2a3a6a2d31a74186222eba887f75d04bb9f784e8cd2f967a347c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
