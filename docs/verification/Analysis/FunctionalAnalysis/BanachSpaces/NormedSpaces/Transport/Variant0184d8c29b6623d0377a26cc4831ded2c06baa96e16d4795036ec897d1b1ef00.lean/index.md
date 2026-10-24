# Verification target: GRWTSK.Analysis.FunctionalAnalysis.BanachSpaces.NormedSpaces.Transport.Variant0184d8c29b6623d0377a26cc4831ded2c06baa96e16d4795036ec897d1b1ef00

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b5974c87b0112baed5686aa02f5c85756c44afc9",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Transport/Variant0184d8c29b6623d0377a26cc4831ded2c06baa96e16d4795036ec897d1b1ef00.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Transport/Variant0184d8c29b6623d0377a26cc4831ded2c06baa96e16d4795036ec897d1b1ef00.lean/index.md) · [Full source](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Transport/Variant0184d8c29b6623d0377a26cc4831ded2c06baa96e16d4795036ec897d1b1ef00.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b5974c87b0112baed5686aa02f5c85756c44afc9`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Transport/Variant0184d8c29b6623d0377a26cc4831ded2c06baa96e16d4795036ec897d1b1ef00.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Transport/Variant0184d8c29b6623d0377a26cc4831ded2c06baa96e16d4795036ec897d1b1ef00.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.NeuralDiffusion.State` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Module.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Exp` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [ConvolutionInvolution](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Transport/Variant0184d8c29b6623d0377a26cc4831ded2c06baa96e16d4795036ec897d1b1ef00.lean/declarations/convolutioninvolution--2e1c98ca2d817d01336860ca.md) | 29 | `declaration-track:2e1c98ca2d817d01336860caf25e7e387632da64fce5b0a668ae272b19491cdc` |
| 2 | `theorem` | [star_star](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Transport/Variant0184d8c29b6623d0377a26cc4831ded2c06baa96e16d4795036ec897d1b1ef00.lean/declarations/star-star--51e1d309984ae7f3781e9e04.md) | 40 | `result-track:51e1d309984ae7f3781e9e043c31218da5a53ec2f1324fcb8e6db5c1fcd3cf7d` |
| 3 | `structure` | [LinearDiffuser](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Transport/Variant0184d8c29b6623d0377a26cc4831ded2c06baa96e16d4795036ec897d1b1ef00.lean/declarations/lineardiffuser--fff6e21162954a2471280084.md) | 50 | `declaration-track:fff6e21162954a24712800848639eaba9b24ee1765d625c255e33a63f7dd9fef` |
| 4 | `def` | [factor](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Transport/Variant0184d8c29b6623d0377a26cc4831ded2c06baa96e16d4795036ec897d1b1ef00.lean/declarations/factor--d99d86ded0c32a371828f71d.md) | 72 | `declaration-track:d99d86ded0c32a371828f71d9dd5062b6ec388a9752df4a7a2d50dba2914019c` |
| 5 | `theorem` | [factor_nonnegative](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Transport/Variant0184d8c29b6623d0377a26cc4831ded2c06baa96e16d4795036ec897d1b1ef00.lean/declarations/factor-nonnegative--dee35cebe22f7f41565f6e33.md) | 75 | `result-track:dee35cebe22f7f41565f6e3325bc01eb381bd048457d6b46ac8ab5a5ed2af024` |
| 6 | `structure` | [CompatibleTransport](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Transport/Variant0184d8c29b6623d0377a26cc4831ded2c06baa96e16d4795036ec897d1b1ef00.lean/declarations/compatibletransport--3f4e6342bc0fe8919f48468c.md) | 85 | `declaration-track:3f4e6342bc0fe8919f48468c9bf662c208f19d7306b3928aa94f75ff9dcccc33` |
| 7 | `def` | [paired](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Transport/Variant0184d8c29b6623d0377a26cc4831ded2c06baa96e16d4795036ec897d1b1ef00.lean/declarations/paired--00ab899ae9fe0d0e04438f6f.md) | 117 | `declaration-track:00ab899ae9fe0d0e04438f6fcd31da6233e460d0071d20f575fb000e6a1cd428` |
| 8 | `theorem` | [paired_star](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Transport/Variant0184d8c29b6623d0377a26cc4831ded2c06baa96e16d4795036ec897d1b1ef00.lean/declarations/paired-star--ba59ce827db8908fc15bdc8d.md) | 125 | `result-track:ba59ce827db8908fc15bdc8d3424c0aa349a3fb3b841ca2a23cabff9b03f1997` |
| 9 | `theorem` | [paired_graph_bound](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Transport/Variant0184d8c29b6623d0377a26cc4831ded2c06baa96e16d4795036ec897d1b1ef00.lean/declarations/paired-graph-bound--74404dcad6646015cb2776ae.md) | 132 | `result-track:74404dcad6646015cb2776ae6f2eb270ccb7021d7edbc88cb8d5788a4f53c00d` |
| 10 | `structure` | [CertifiedNonlinearity](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Transport/Variant0184d8c29b6623d0377a26cc4831ded2c06baa96e16d4795036ec897d1b1ef00.lean/declarations/certifiednonlinearity--5d0d6a986bd6fefeb35fe56c.md) | 142 | `declaration-track:5d0d6a986bd6fefeb35fe56cd6ebd25cf978374c511c3c6bf738102631d39351` |
| 11 | `structure` | [AnalyticLayer](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Transport/Variant0184d8c29b6623d0377a26cc4831ded2c06baa96e16d4795036ec897d1b1ef00.lean/declarations/analyticlayer--549578cebdffac437f40f1d7.md) | 154 | `declaration-track:549578cebdffac437f40f1d7a1b9d505650f7cb47f134e8baba43a0217379a5f` |
| 12 | `def` | [candidate](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Transport/Variant0184d8c29b6623d0377a26cc4831ded2c06baa96e16d4795036ec897d1b1ef00.lean/declarations/candidate--a61268bc4d412a9b776bf559.md) | 174 | `declaration-track:a61268bc4d412a9b776bf5593176567b2796eecdd7559bfca0e72a2da0cc33bf` |
| 13 | `def` | [stabilityFactor](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Transport/Variant0184d8c29b6623d0377a26cc4831ded2c06baa96e16d4795036ec897d1b1ef00.lean/declarations/stabilityfactor--8bb3d3bc83a92897081147f4.md) | 182 | `declaration-track:8bb3d3bc83a92897081147f403dd215baa46f53f4e5160ac9aa44e54f9f26488` |
| 14 | `theorem` | [candidate_graphFunctional_lipschitz](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Transport/Variant0184d8c29b6623d0377a26cc4831ded2c06baa96e16d4795036ec897d1b1ef00.lean/declarations/candidate-graphfunctional-lipschitz--61c168ba94fbb2f1c2bcf491.md) | 191 | `result-track:61c168ba94fbb2f1c2bcf49194af853a89dd4782a467477b68ddeed109d84c33` |
| 15 | `theorem` | [nonexpansive_of_factor_le_one](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Transport/Variant0184d8c29b6623d0377a26cc4831ded2c06baa96e16d4795036ec897d1b1ef00.lean/declarations/nonexpansive-of-factor-le-one--e04be83b371c60eb11abac8c.md) | 240 | `result-track:e04be83b371c60eb11abac8ce1d1514e37f64f15b5b41e52ed17a264d0edbca8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
