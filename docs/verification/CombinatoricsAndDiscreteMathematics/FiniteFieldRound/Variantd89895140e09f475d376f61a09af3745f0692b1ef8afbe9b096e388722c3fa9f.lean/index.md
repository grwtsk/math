# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.FiniteFieldRound.Variantd89895140e09f475d376f61a09af3745f0692b1ef8afbe9b096e388722c3fa9f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f9ca6fa64cf6841928316b0aa4c23c2bbb668879",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/FiniteFieldRound/Variantd89895140e09f475d376f61a09af3745f0692b1ef8afbe9b096e388722c3fa9f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FiniteFieldRound/Variantd89895140e09f475d376f61a09af3745f0692b1ef8afbe9b096e388722c3fa9f.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FiniteFieldRound/Variantd89895140e09f475d376f61a09af3745f0692b1ef8afbe9b096e388722c3fa9f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f9ca6fa64cf6841928316b0aa4c23c2bbb668879`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/FiniteFieldRound/Variantd89895140e09f475d376f61a09af3745f0692b1ef8afbe9b096e388722c3fa9f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/FiniteFieldRound/Variantd89895140e09f475d376f61a09af3745f0692b1ef8afbe9b096e388722c3fa9f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `BinaryMatrix.Avalanche` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.CharP.Two` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Units.Equiv` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.GroupWithZero.Units.Fintype` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.FieldTheory.Finite.Basic` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.OrderOfElement` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [digammaDenominator](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FiniteFieldRound/Variantd89895140e09f475d376f61a09af3745f0692b1ef8afbe9b096e388722c3fa9f.lean/declarations/digammadenominator--6d0e6e7e568a6f8d83b543c9.md) | 56 | `declaration-track:6d0e6e7e568a6f8d83b543c948b35d1d0651a1d4e26c366fa84994c629821d1c` |
| 2 | `def` | [finiteDigamma?](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FiniteFieldRound/Variantd89895140e09f475d376f61a09af3745f0692b1ef8afbe9b096e388722c3fa9f.lean/declarations/finitedigamma--47ebc9e17d5a268b10c08e67.md) | 60 | `declaration-track:47ebc9e17d5a268b10c08e677eeec7c54cc7a51c17c01049fb584ddf42781e25` |
| 3 | `theorem` | [digammaDenominator_eq_zero_of_mem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FiniteFieldRound/Variantd89895140e09f475d376f61a09af3745f0692b1ef8afbe9b096e388722c3fa9f.lean/declarations/digammadenominator-eq-zero-of-mem--915a50b5208e76b97671274c.md) | 69 | `result-track:915a50b5208e76b97671274cff391bf20b0564b10a6bf29bc6eba5ff1daea194` |
| 4 | `theorem` | [finiteDigamma_none_of_mem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FiniteFieldRound/Variantd89895140e09f475d376f61a09af3745f0692b1ef8afbe9b096e388722c3fa9f.lean/declarations/finitedigamma-none-of-mem--70fdffce37946726dddaf776.md) | 76 | `result-track:70fdffce37946726dddaf7761259440cdc7c4d9e74be7a14746f04ca3a21ff93` |
| 5 | `def` | [allNonzeroRoots](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FiniteFieldRound/Variantd89895140e09f475d376f61a09af3745f0692b1ef8afbe9b096e388722c3fa9f.lean/declarations/allnonzeroroots--e3dadeec2dafa10cb22446ba.md) | 88 | `declaration-track:e3dadeec2dafa10cb22446babcd0416007dbc6528c9db1af9f4721be83410649` |
| 6 | `theorem` | [finiteDigamma_allNonzero_none](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FiniteFieldRound/Variantd89895140e09f475d376f61a09af3745f0692b1ef8afbe9b096e388722c3fa9f.lean/declarations/finitedigamma-allnonzero-none--ae2363ab344d8dff97b4678c.md) | 94 | `result-track:ae2363ab344d8dff97b4678c6604becdbffa46c6ae9eeea9605cccb458993972` |
| 7 | `theorem` | [powerMap_bijective](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FiniteFieldRound/Variantd89895140e09f475d376f61a09af3745f0692b1ef8afbe9b096e388722c3fa9f.lean/declarations/powermap-bijective--f024323b14c0e1de7618a63b.md) | 111 | `result-track:f024323b14c0e1de7618a63b0ef03ccea8c542b46ed11fba31a5c3de4d6209e3` |
| 8 | `def` | [powerPermutation](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FiniteFieldRound/Variantd89895140e09f475d376f61a09af3745f0692b1ef8afbe9b096e388722c3fa9f.lean/declarations/powerpermutation--b58a532d2482b77f23811ac9.md) | 156 | `declaration-track:b58a532d2482b77f23811ac9aaecc899288f7df66b842e264565b918294b9639` |
| 9 | `theorem` | [powerPermutation_apply](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FiniteFieldRound/Variantd89895140e09f475d376f61a09af3745f0692b1ef8afbe9b096e388722c3fa9f.lean/declarations/powerpermutation-apply--c8fbf37f6a09b523c4469309.md) | 165 | `result-track:c8fbf37f6a09b523c44693096a5964ba87651dec87a45535cfa2dcc185c1e3f3` |
| 10 | `def` | [inversionPermutation](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FiniteFieldRound/Variantd89895140e09f475d376f61a09af3745f0692b1ef8afbe9b096e388722c3fa9f.lean/declarations/inversionpermutation--b87d5526783826b91bcf02fe.md) | 181 | `declaration-track:b87d5526783826b91bcf02fefdb9cf766923be1c5e1b7f216cf969d37e08526d` |
| 11 | `theorem` | [inversionPermutation_apply](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FiniteFieldRound/Variantd89895140e09f475d376f61a09af3745f0692b1ef8afbe9b096e388722c3fa9f.lean/declarations/inversionpermutation-apply--200295a9e3eaa74c0e2198d7.md) | 188 | `result-track:200295a9e3eaa74c0e2198d7393d09520c2e9a17293e4141965ff2ae125f732a` |
| 12 | `theorem` | [inversionPermutation_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FiniteFieldRound/Variantd89895140e09f475d376f61a09af3745f0692b1ef8afbe9b096e388722c3fa9f.lean/declarations/inversionpermutation-zero--c3c511c616c61f364fdf0847.md) | 193 | `result-track:c3c511c616c61f364fdf084704dbdc732cd7f8e3de9fd0c55540a2ddb65c48e3` |
| 13 | `theorem` | [inversionPermutation_involutive](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FiniteFieldRound/Variantd89895140e09f475d376f61a09af3745f0692b1ef8afbe9b096e388722c3fa9f.lean/declarations/inversionpermutation-involutive--2f472c82aa3b2987758ffbb8.md) | 198 | `result-track:2f472c82aa3b2987758ffbb87923ae25f22f0cb674e4c3454d6aeda984c18635` |
| 14 | `structure` | [FieldRound](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FiniteFieldRound/Variantd89895140e09f475d376f61a09af3745f0692b1ef8afbe9b096e388722c3fa9f.lean/declarations/fieldround--9ec35075f58fee692791b977.md) | 208 | `declaration-track:9ec35075f58fee692791b977fbfb0011e73351724a4756cae05b20e0c313230d` |
| 15 | `def` | [toEquiv](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FiniteFieldRound/Variantd89895140e09f475d376f61a09af3745f0692b1ef8afbe9b096e388722c3fa9f.lean/declarations/toequiv--2bd8420287e7628b9c7c1898.md) | 219 | `declaration-track:2bd8420287e7628b9c7c189827d38159357d0937cb67364f6b318fa5a88b2920` |
| 16 | `def` | [run](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FiniteFieldRound/Variantd89895140e09f475d376f61a09af3745f0692b1ef8afbe9b096e388722c3fa9f.lean/declarations/run--4761e73da71e9f54985031cb.md) | 224 | `declaration-track:4761e73da71e9f54985031cb03d6d4f0c47c1b99e3f4ff6f8435276de0de0abb` |
| 17 | `theorem` | [run_apply](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FiniteFieldRound/Variantd89895140e09f475d376f61a09af3745f0692b1ef8afbe9b096e388722c3fa9f.lean/declarations/run-apply--e2dd0bccb3c3a2f497d15694.md) | 228 | `result-track:e2dd0bccb3c3a2f497d15694d5eda6df3a068a7a1bf0dddb13ae09be0620b571` |
| 18 | `theorem` | [run_bijective](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FiniteFieldRound/Variantd89895140e09f475d376f61a09af3745f0692b1ef8afbe9b096e388722c3fa9f.lean/declarations/run-bijective--59ce8d69308b0e6a17755bd5.md) | 234 | `result-track:59ce8d69308b0e6a17755bd5afd060f1c0f3078e528d4341e0318ecdef1120fd` |
| 19 | `def` | [inverse](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FiniteFieldRound/Variantd89895140e09f475d376f61a09af3745f0692b1ef8afbe9b096e388722c3fa9f.lean/declarations/inverse--3822de5a0490f5f2b68e425f.md) | 239 | `declaration-track:3822de5a0490f5f2b68e425f9910ff175cf65e9e05d03ccdcf9eaebaa78f310f` |
| 20 | `theorem` | [inverse_apply](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FiniteFieldRound/Variantd89895140e09f475d376f61a09af3745f0692b1ef8afbe9b096e388722c3fa9f.lean/declarations/inverse-apply--bdbaa7c023a21e776bbc05a0.md) | 245 | `result-track:bdbaa7c023a21e776bbc05a04b542c9e9840a1f98123b7fd916aedc2ef00e2a8` |
| 21 | `theorem` | [inverse_run](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FiniteFieldRound/Variantd89895140e09f475d376f61a09af3745f0692b1ef8afbe9b096e388722c3fa9f.lean/declarations/inverse-run--32d3d65fab0f74b259599726.md) | 254 | `result-track:32d3d65fab0f74b259599726e6ac1c3ca83563682bdd4a546ff231d66bc3052a` |
| 22 | `theorem` | [run_inverse](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FiniteFieldRound/Variantd89895140e09f475d376f61a09af3745f0692b1ef8afbe9b096e388722c3fa9f.lean/declarations/run-inverse--1667a7695b7bb7d46bc9bda7.md) | 259 | `result-track:1667a7695b7bb7d46bc9bda7196fd680b5fe9d28e72ce87d0a7944fa68908149` |
| 23 | `def` | [ofPower](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FiniteFieldRound/Variantd89895140e09f475d376f61a09af3745f0692b1ef8afbe9b096e388722c3fa9f.lean/declarations/ofpower--86285bca9744e4fd93e860b9.md) | 265 | `declaration-track:86285bca9744e4fd93e860b935c8285942664dfc61ceaa6e8f4b5c3dcc48887b` |
| 24 | `theorem` | [ofPower_bijective](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FiniteFieldRound/Variantd89895140e09f475d376f61a09af3745f0692b1ef8afbe9b096e388722c3fa9f.lean/declarations/ofpower-bijective--0ea49a169f382df5ba02dc27.md) | 279 | `result-track:0ea49a169f382df5ba02dc27a7e800df8403d5ab0c10a7a1a818b5e2e1af7655` |
| 25 | `def` | [transportToBits](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FiniteFieldRound/Variantd89895140e09f475d376f61a09af3745f0692b1ef8afbe9b096e388722c3fa9f.lean/declarations/transporttobits--1122e79f48a1a11c92d20acd.md) | 294 | `declaration-track:1122e79f48a1a11c92d20acd7ee8f08d286e423a07cc4736c0d2279dc5282d0c` |
| 26 | `theorem` | [transportToBits_bijective](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FiniteFieldRound/Variantd89895140e09f475d376f61a09af3745f0692b1ef8afbe9b096e388722c3fa9f.lean/declarations/transporttobits-bijective--55a867e6e314ffbf6c81cf1e.md) | 302 | `result-track:55a867e6e314ffbf6c81cf1e8de35a37338ac06530f28909d083ff0aca6abb32` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
