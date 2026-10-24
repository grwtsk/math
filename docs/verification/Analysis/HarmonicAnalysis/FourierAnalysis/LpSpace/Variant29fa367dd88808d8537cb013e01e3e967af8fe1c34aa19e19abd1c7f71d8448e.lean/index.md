# Verification target: GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.LpSpace.Variant29fa367dd88808d8537cb013e01e3e967af8fe1c34aa19e19abd1c7f71d8448e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "01952e64883b1e6bffff0d000470428de37b11c0",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/LpSpace/Variant29fa367dd88808d8537cb013e01e3e967af8fe1c34aa19e19abd1c7f71d8448e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/LpSpace/Variant29fa367dd88808d8537cb013e01e3e967af8fe1c34aa19e19abd1c7f71d8448e.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/LpSpace/Variant29fa367dd88808d8537cb013e01e3e967af8fe1c34aa19e19abd1c7f71d8448e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `01952e64883b1e6bffff0d000470428de37b11c0`.

Source path: `GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/LpSpace/Variant29fa367dd88808d8537cb013e01e3e967af8fe1c34aa19e19abd1c7f71d8448e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/HarmonicAnalysis/FourierAnalysis/LpSpace/Variant29fa367dd88808d8537cb013e01e3e967af8fe1c34aa19e19abd1c7f71d8448e.lean.json)

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
| 1 | `def` | [fourierTransformₗᵢ](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/LpSpace/Variant29fa367dd88808d8537cb013e01e3e967af8fe1c34aa19e19abd1c7f71d8448e.lean/declarations/fouriertransform--728a2061b312085b088189a9.md) | 52 | `declaration-track:728a2061b312085b088189a9ceec78c54f1886c2f59e81136b4935b7dd8091ae` |
| 2 | `instance` | [instFourierTransform](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/LpSpace/Variant29fa367dd88808d8537cb013e01e3e967af8fe1c34aa19e19abd1c7f71d8448e.lean/declarations/instfouriertransform--3138a824c18978aa655c4f2e.md) | 59 | `declaration-track:3138a824c18978aa655c4f2e4720554c2b91f13aa7c2cc61c4c81ffeed35c96a` |
| 3 | `instance` | [instFourierAdd](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/LpSpace/Variant29fa367dd88808d8537cb013e01e3e967af8fe1c34aa19e19abd1c7f71d8448e.lean/declarations/instfourieradd--d7aaabdfecc19828bb31b25c.md) | 62 | `declaration-track:d7aaabdfecc19828bb31b25ccc10356eb29d63f53b0dbb073f8e5bdda186b933` |
| 4 | `instance` | [instFourierSMul](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/LpSpace/Variant29fa367dd88808d8537cb013e01e3e967af8fe1c34aa19e19abd1c7f71d8448e.lean/declarations/instfouriersmul--95e9a08433f84a1aa6cf826f.md) | 65 | `declaration-track:95e9a08433f84a1aa6cf826f63768f9f4124143e319dbda46d67ec0351fffaea` |
| 5 | `instance` | [instContinuousFourier](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/LpSpace/Variant29fa367dd88808d8537cb013e01e3e967af8fe1c34aa19e19abd1c7f71d8448e.lean/declarations/instcontinuousfourier--5e0b73974616896dcc6474ee.md) | 68 | `declaration-track:5e0b73974616896dcc6474ee2c3d43697499a8eb19d8b8def808350e3fd9d772` |
| 6 | `instance` | [instFourierTransformInv](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/LpSpace/Variant29fa367dd88808d8537cb013e01e3e967af8fe1c34aa19e19abd1c7f71d8448e.lean/declarations/instfouriertransforminv--d12c0445d8b48c79d4ea3357.md) | 71 | `declaration-track:d12c0445d8b48c79d4ea33572631411dbe66bd579a20c030a398f380a2e451aa` |
| 7 | `instance` | [instFourierInvAdd](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/LpSpace/Variant29fa367dd88808d8537cb013e01e3e967af8fe1c34aa19e19abd1c7f71d8448e.lean/declarations/instfourierinvadd--551aa4b443056582897f7582.md) | 74 | `declaration-track:551aa4b443056582897f7582e2074666dcd9d32b5811da3669902e8f657ae620` |
| 8 | `instance` | [instFourierInvSMul](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/LpSpace/Variant29fa367dd88808d8537cb013e01e3e967af8fe1c34aa19e19abd1c7f71d8448e.lean/declarations/instfourierinvsmul--7e1bf156601647d8fe4396c6.md) | 77 | `declaration-track:7e1bf156601647d8fe4396c608894b2f62aa831b7bdf3fb562eb4778b44d3702` |
| 9 | `instance` | [instContinuousFourierInv](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/LpSpace/Variant29fa367dd88808d8537cb013e01e3e967af8fe1c34aa19e19abd1c7f71d8448e.lean/declarations/instcontinuousfourierinv--6e39ef9657be4ad371dd46b1.md) | 80 | `declaration-track:6e39ef9657be4ad371dd46b1f0c81d571204bead1bc67e74051c6139ba4b8b00` |
| 10 | `instance` | [instFourierPair](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/LpSpace/Variant29fa367dd88808d8537cb013e01e3e967af8fe1c34aa19e19abd1c7f71d8448e.lean/declarations/instfourierpair--569d95551f16cbb56c7d6496.md) | 83 | `declaration-track:569d95551f16cbb56c7d6496f6efbe0fb0f71d0b9bb4af2bd6b881dc9f7c46cd` |
| 11 | `instance` | [instFourierPairInv](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/LpSpace/Variant29fa367dd88808d8537cb013e01e3e967af8fe1c34aa19e19abd1c7f71d8448e.lean/declarations/instfourierpairinv--b238d791849c89156fa9425e.md) | 86 | `declaration-track:b238d791849c89156fa9425e596cfe97e659eff5017f2fca57642b9f3bb92d27` |
| 12 | `theorem` | [norm_fourier_eq](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/LpSpace/Variant29fa367dd88808d8537cb013e01e3e967af8fe1c34aa19e19abd1c7f71d8448e.lean/declarations/norm-fourier-eq--6095f5f869bd7a6f33502705.md) | 91 | `result-track:6095f5f869bd7a6f33502705d7a45ff79c5671da1717c753fc0ca4bef1b5ab14` |
| 13 | `theorem` | [inner_fourier_eq](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/LpSpace/Variant29fa367dd88808d8537cb013e01e3e967af8fe1c34aa19e19abd1c7f71d8448e.lean/declarations/inner-fourier-eq--1bf6fa2ac9dec07c9d8ffefd.md) | 95 | `result-track:1bf6fa2ac9dec07c9d8ffefd9904c726bb9365137e0a1d3f296e256a2429386f` |
| 14 | `theorem` | [SchwartzMap.toLp_fourier_eq](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/LpSpace/Variant29fa367dd88808d8537cb013e01e3e967af8fe1c34aa19e19abd1c7f71d8448e.lean/declarations/schwartzmap-tolp-fourier-eq--354605f5b77b43558ce59da2.md) | 101 | `result-track:354605f5b77b43558ce59da20117e64c251bea912bd2b083330cae86788fcb15` |
| 15 | `theorem` | [SchwartzMap.toLp_fourierInv_eq](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/LpSpace/Variant29fa367dd88808d8537cb013e01e3e967af8fe1c34aa19e19abd1c7f71d8448e.lean/declarations/schwartzmap-tolp-fourierinv-eq--032d5a92b24ab4d54037d80d.md) | 110 | `result-track:032d5a92b24ab4d54037d80d3fa0a5f39c2a3ee9708ab75399d13a59ae76833c` |
| 16 | `theorem` | [fourier_toTemperedDistribution_eq](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/LpSpace/Variant29fa367dd88808d8537cb013e01e3e967af8fe1c34aa19e19abd1c7f71d8448e.lean/declarations/fourier-totempereddistribution-eq--61c65d5466d58bc51f5776dc.md) | 122 | `result-track:61c65d5466d58bc51f5776dc32085adf7af385f0fcae546881fc52c5f6ad3d63` |
| 17 | `theorem` | [fourierInv_toTemperedDistribution_eq](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/LpSpace/Variant29fa367dd88808d8537cb013e01e3e967af8fe1c34aa19e19abd1c7f71d8448e.lean/declarations/fourierinv-totempereddistribution-eq--8514e29bc8bc5934e8318f58.md) | 134 | `result-track:8514e29bc8bc5934e8318f58d3a839d5a88e2bb752f5ee79698e54394bb5e88b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
