# Verification target: GRWTSK.Analysis.FunctionalAnalysis.ConductorThreePolarizedPackets.Variantb0c8d2768ac5d126a8010d9cbbfb9454a474d3b68204f8bfdd5a7e5485170dc1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "22bdaa13547ea49b2d9ab9bf41a2772cc059f7b5",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/ConductorThreePolarizedPackets/Variantb0c8d2768ac5d126a8010d9cbbfb9454a474d3b68204f8bfdd5a7e5485170dc1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/FunctionalAnalysis/ConductorThreePolarizedPackets/Variantb0c8d2768ac5d126a8010d9cbbfb9454a474d3b68204f8bfdd5a7e5485170dc1.lean/index.md) · [Full source](../../../../../mathematics/Analysis/FunctionalAnalysis/ConductorThreePolarizedPackets/Variantb0c8d2768ac5d126a8010d9cbbfb9454a474d3b68204f8bfdd5a7e5485170dc1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `22bdaa13547ea49b2d9ab9bf41a2772cc059f7b5`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/ConductorThreePolarizedPackets/Variantb0c8d2768ac5d126a8010d9cbbfb9454a474d3b68204f8bfdd5a7e5485170dc1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/ConductorThreePolarizedPackets/Variantb0c8d2768ac5d126a8010d9cbbfb9454a474d3b68204f8bfdd5a7e5485170dc1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [SmoothDyadicWeight](../../../../../mathematics/Analysis/FunctionalAnalysis/ConductorThreePolarizedPackets/Variantb0c8d2768ac5d126a8010d9cbbfb9454a474d3b68204f8bfdd5a7e5485170dc1.lean/declarations/smoothdyadicweight--ffc542b467a6f8c65c18683d.md) | 41 | `declaration-track:ffc542b467a6f8c65c18683d14897f879f8de3298c20ffc0d828689c60b5a1d3` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/FunctionalAnalysis/ConductorThreePolarizedPackets/Variantb0c8d2768ac5d126a8010d9cbbfb9454a474d3b68204f8bfdd5a7e5485170dc1.lean/declarations/instance--4044d68d34978280ea526efe.md) | 46 | `declaration-track:4044d68d34978280ea526efe0a1be3456654c3d0f959444b83e2316c5e25ead3` |
| 3 | `def` | [smoothWeightCost](../../../../../mathematics/Analysis/FunctionalAnalysis/ConductorThreePolarizedPackets/Variantb0c8d2768ac5d126a8010d9cbbfb9454a474d3b68204f8bfdd5a7e5485170dc1.lean/declarations/smoothweightcost--da855cc1a794ec09fe8ab1ed.md) | 52 | `declaration-track:da855cc1a794ec09fe8ab1edb8d0cb47b33ed3f4a8e4365842ad6e2fbb0e916b` |
| 4 | `def` | [polarizedSmoothedSum](../../../../../mathematics/Analysis/FunctionalAnalysis/ConductorThreePolarizedPackets/Variantb0c8d2768ac5d126a8010d9cbbfb9454a474d3b68204f8bfdd5a7e5485170dc1.lean/declarations/polarizedsmoothedsum--12bf6fba23d36a97879b1494.md) | 59 | `declaration-track:12bf6fba23d36a97879b149448e672171442a7da4d3cfa5d26aa1392fe71dae1` |
| 5 | `def` | [ConductorThreePolarizedPacketEstimate](../../../../../mathematics/Analysis/FunctionalAnalysis/ConductorThreePolarizedPackets/Variantb0c8d2768ac5d126a8010d9cbbfb9454a474d3b68204f8bfdd5a7e5485170dc1.lean/declarations/conductorthreepolarizedpacketestimate--144bc37f300e91bcb7441823.md) | 66 | `declaration-track:144bc37f300e91bcb7441823f0850460c004e6382c88d32f0e40118525888544` |
| 6 | `def` | [PrimeCoefficientBlock](../../../../../mathematics/Analysis/FunctionalAnalysis/ConductorThreePolarizedPackets/Variantb0c8d2768ac5d126a8010d9cbbfb9454a474d3b68204f8bfdd5a7e5485170dc1.lean/declarations/primecoefficientblock--8460a82575281619fef1fc15.md) | 78 | `declaration-track:8460a82575281619fef1fc1570a4dab7e1e195bf2322253e8b9a17ed282507c3` |
| 7 | `def` | [actualPrimeCoefficientBlock](../../../../../mathematics/Analysis/FunctionalAnalysis/ConductorThreePolarizedPackets/Variantb0c8d2768ac5d126a8010d9cbbfb9454a474d3b68204f8bfdd5a7e5485170dc1.lean/declarations/actualprimecoefficientblock--eb8697f7e02405664f8043fa.md) | 83 | `declaration-track:eb8697f7e02405664f8043fa50d92987e62786d5f0ec306358145adc0dacbed0` |
| 8 | `structure` | [TwistedBilinearBlock](../../../../../mathematics/Analysis/FunctionalAnalysis/ConductorThreePolarizedPackets/Variantb0c8d2768ac5d126a8010d9cbbfb9454a474d3b68204f8bfdd5a7e5485170dc1.lean/declarations/twistedbilinearblock--a13c2f96afe72907f5d36ba6.md) | 89 | `declaration-track:a13c2f96afe72907f5d36ba639200d1b3411b75e826e560d818f11b7a2aad2f5` |
| 9 | `def` | [TwistedBilinearBlock.sum](../../../../../mathematics/Analysis/FunctionalAnalysis/ConductorThreePolarizedPackets/Variantb0c8d2768ac5d126a8010d9cbbfb9454a474d3b68204f8bfdd5a7e5485170dc1.lean/declarations/twistedbilinearblock-sum--fcbb39e925addbc893f64fe8.md) | 99 | `declaration-track:fcbb39e925addbc893f64fe8944d30b5d1df774ac707ad49e00cfc29d45d3cb1` |
| 10 | `inductive` | [CharacterPolarization](../../../../../mathematics/Analysis/FunctionalAnalysis/ConductorThreePolarizedPackets/Variantb0c8d2768ac5d126a8010d9cbbfb9454a474d3b68204f8bfdd5a7e5485170dc1.lean/declarations/characterpolarization--b9872bffc028e7c28202ed38.md) | 107 | `declaration-track:b9872bffc028e7c28202ed38774e0d70af89e21557a3501ef6190e0dcef6a3af` |
| 11 | `def` | [coefficientPolarization](../../../../../mathematics/Analysis/FunctionalAnalysis/ConductorThreePolarizedPackets/Variantb0c8d2768ac5d126a8010d9cbbfb9454a474d3b68204f8bfdd5a7e5485170dc1.lean/declarations/coefficientpolarization--26f90492d4a84142cbfe5b68.md) | 117 | `declaration-track:26f90492d4a84142cbfe5b684caeb5b3cdae38e19d9e6e266bf0a795fc982d49` |
| 12 | `structure` | [PolarizedArithmeticPacketConfiguration](../../../../../mathematics/Analysis/FunctionalAnalysis/ConductorThreePolarizedPackets/Variantb0c8d2768ac5d126a8010d9cbbfb9454a474d3b68204f8bfdd5a7e5485170dc1.lean/declarations/polarizedarithmeticpacketconfiguration--163e5eb5ed6b710539a2e129.md) | 125 | `declaration-track:163e5eb5ed6b710539a2e129fa2db2fdc84e1da17ea9c60d7e4f92661de467de` |
| 13 | `structure` | [PolarizedPacketGeometry](../../../../../mathematics/Analysis/FunctionalAnalysis/ConductorThreePolarizedPackets/Variantb0c8d2768ac5d126a8010d9cbbfb9454a474d3b68204f8bfdd5a7e5485170dc1.lean/declarations/polarizedpacketgeometry--cddd67124675f9091406181c.md) | 138 | `declaration-track:cddd67124675f9091406181cabf492e758ea3aeeb2c7b2ebb71a8b9d6c401e18` |
| 14 | `def` | [PolarizedArithmeticPacketConfiguration.WangZahlAdmissible](../../../../../mathematics/Analysis/FunctionalAnalysis/ConductorThreePolarizedPackets/Variantb0c8d2768ac5d126a8010d9cbbfb9454a474d3b68204f8bfdd5a7e5485170dc1.lean/declarations/polarizedarithmeticpacketconfiguration-wangzahladmissible--b7de0d387962edea5638e23b.md) | 155 | `declaration-track:b7de0d387962edea5638e23bf575a225ecae9516e0a6467ce42d1d28c92948b5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
