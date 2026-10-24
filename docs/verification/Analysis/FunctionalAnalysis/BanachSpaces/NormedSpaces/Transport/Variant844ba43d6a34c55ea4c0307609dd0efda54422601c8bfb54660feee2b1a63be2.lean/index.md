# Verification target: GRWTSK.Analysis.FunctionalAnalysis.BanachSpaces.NormedSpaces.Transport.Variant844ba43d6a34c55ea4c0307609dd0efda54422601c8bfb54660feee2b1a63be2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "33ab02a9f186315555e9122ecf5bf2c5f10804cf",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Transport/Variant844ba43d6a34c55ea4c0307609dd0efda54422601c8bfb54660feee2b1a63be2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Transport/Variant844ba43d6a34c55ea4c0307609dd0efda54422601c8bfb54660feee2b1a63be2.lean/index.md) · [Full source](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Transport/Variant844ba43d6a34c55ea4c0307609dd0efda54422601c8bfb54660feee2b1a63be2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `33ab02a9f186315555e9122ecf5bf2c5f10804cf`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Transport/Variant844ba43d6a34c55ea4c0307609dd0efda54422601c8bfb54660feee2b1a63be2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Transport/Variant844ba43d6a34c55ea4c0307609dd0efda54422601c8bfb54660feee2b1a63be2.lean.json)

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
| 1 | `structure` | [ConvolutionInvolution](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Transport/Variant844ba43d6a34c55ea4c0307609dd0efda54422601c8bfb54660feee2b1a63be2.lean/declarations/convolutioninvolution--644f4feae95b8d996c0f8b31.md) | 29 | `declaration-track:644f4feae95b8d996c0f8b31d84ca0b224db745eb4226cca089c18b1488fd756` |
| 2 | `theorem` | [star_star](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Transport/Variant844ba43d6a34c55ea4c0307609dd0efda54422601c8bfb54660feee2b1a63be2.lean/declarations/star-star--ca73977076cba100dc12e9be.md) | 40 | `result-track:ca73977076cba100dc12e9be96aeb32b561ae8f951490d4ed2f24b541f3eed02` |
| 3 | `structure` | [LinearDiffuser](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Transport/Variant844ba43d6a34c55ea4c0307609dd0efda54422601c8bfb54660feee2b1a63be2.lean/declarations/lineardiffuser--f95140116e3c7485e7cdc476.md) | 50 | `declaration-track:f95140116e3c7485e7cdc476ffd6ab73634b5cd3c58b9b432d93a9694d55f703` |
| 4 | `def` | [factor](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Transport/Variant844ba43d6a34c55ea4c0307609dd0efda54422601c8bfb54660feee2b1a63be2.lean/declarations/factor--3b21f38c250a784677dce9dc.md) | 72 | `declaration-track:3b21f38c250a784677dce9dced87ba9704da718270c63684a34dc1d3863b8e60` |
| 5 | `theorem` | [factor_nonnegative](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Transport/Variant844ba43d6a34c55ea4c0307609dd0efda54422601c8bfb54660feee2b1a63be2.lean/declarations/factor-nonnegative--1c73d623d8bf5ea4cc292f80.md) | 75 | `result-track:1c73d623d8bf5ea4cc292f80bac23e0cdd176a178f3291d390f4a02023cc5525` |
| 6 | `structure` | [CompatibleTransport](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Transport/Variant844ba43d6a34c55ea4c0307609dd0efda54422601c8bfb54660feee2b1a63be2.lean/declarations/compatibletransport--9832ab42965e1146a87206ec.md) | 85 | `declaration-track:9832ab42965e1146a87206ec09eff2d32b7efc0e741de8565fac6bee82bd892f` |
| 7 | `def` | [paired](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Transport/Variant844ba43d6a34c55ea4c0307609dd0efda54422601c8bfb54660feee2b1a63be2.lean/declarations/paired--a4b3de7b41533e2749790ef9.md) | 117 | `declaration-track:a4b3de7b41533e2749790ef95f635a856ccfd24b05cc8b8da89246bf45bb5a65` |
| 8 | `theorem` | [paired_star](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Transport/Variant844ba43d6a34c55ea4c0307609dd0efda54422601c8bfb54660feee2b1a63be2.lean/declarations/paired-star--e83ef357727a77f666583933.md) | 125 | `result-track:e83ef357727a77f66658393391309b010af733d5fbde32ffa3eae40cce1fcd13` |
| 9 | `theorem` | [paired_graph_bound](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Transport/Variant844ba43d6a34c55ea4c0307609dd0efda54422601c8bfb54660feee2b1a63be2.lean/declarations/paired-graph-bound--9cd8f3e06ae14fbf7f4769d5.md) | 132 | `result-track:9cd8f3e06ae14fbf7f4769d567bf922a37849c4379b0c0c2a9c317d9f47a8eda` |
| 10 | `structure` | [CertifiedNonlinearity](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Transport/Variant844ba43d6a34c55ea4c0307609dd0efda54422601c8bfb54660feee2b1a63be2.lean/declarations/certifiednonlinearity--86396e3ab3f6551599ccad30.md) | 142 | `declaration-track:86396e3ab3f6551599ccad30c1be8bef680fbc67c4cf3d833793842618e76620` |
| 11 | `structure` | [AnalyticLayer](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Transport/Variant844ba43d6a34c55ea4c0307609dd0efda54422601c8bfb54660feee2b1a63be2.lean/declarations/analyticlayer--cacaf1ff931e74982d95db9c.md) | 154 | `declaration-track:cacaf1ff931e74982d95db9c646a951437f4b0088ca02df78d8a19d94d7e68c1` |
| 12 | `def` | [candidate](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Transport/Variant844ba43d6a34c55ea4c0307609dd0efda54422601c8bfb54660feee2b1a63be2.lean/declarations/candidate--5459fc575ef62d295964fe99.md) | 174 | `declaration-track:5459fc575ef62d295964fe99fe59698abfb46fbc7f2b362b9adce97d06f8b71b` |
| 13 | `def` | [stabilityFactor](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Transport/Variant844ba43d6a34c55ea4c0307609dd0efda54422601c8bfb54660feee2b1a63be2.lean/declarations/stabilityfactor--c25f5a42ba06d4bcb872274b.md) | 182 | `declaration-track:c25f5a42ba06d4bcb872274b5890bfa2002ee1cb0cae57e39f6592c29dbb5cd1` |
| 14 | `theorem` | [spectral_stability](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Transport/Variant844ba43d6a34c55ea4c0307609dd0efda54422601c8bfb54660feee2b1a63be2.lean/declarations/spectral-stability--1b04f7c48f3a5c5a3f0bfe1d.md) | 191 | `result-track:1b04f7c48f3a5c5a3f0bfe1dcf903be47b102aaf28debe5723892f455232db2a` |
| 15 | `theorem` | [nonexpansive_of_factor_le_one](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Transport/Variant844ba43d6a34c55ea4c0307609dd0efda54422601c8bfb54660feee2b1a63be2.lean/declarations/nonexpansive-of-factor-le-one--1370e6e74664a546cedfe1c7.md) | 240 | `result-track:1370e6e74664a546cedfe1c758037f668a10e105e773b14684e3907a63b72119` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
