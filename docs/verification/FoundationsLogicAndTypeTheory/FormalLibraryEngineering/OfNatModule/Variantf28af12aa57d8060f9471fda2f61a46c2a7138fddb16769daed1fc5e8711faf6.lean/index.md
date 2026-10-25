# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.OfNatModule.Variantf28af12aa57d8060f9471fda2f61a46c2a7138fddb16769daed1fc5e8711faf6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2645ad24c2c7e100de8d60802503690392a3e514",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OfNatModule/Variantf28af12aa57d8060f9471fda2f61a46c2a7138fddb16769daed1fc5e8711faf6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OfNatModule/Variantf28af12aa57d8060f9471fda2f61a46c2a7138fddb16769daed1fc5e8711faf6.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OfNatModule/Variantf28af12aa57d8060f9471fda2f61a46c2a7138fddb16769daed1fc5e8711faf6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2645ad24c2c7e100de8d60802503690392a3e514`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OfNatModule/Variantf28af12aa57d8060f9471fda2f61a46c2a7138fddb16769daed1fc5e8711faf6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OfNatModule/Variantf28af12aa57d8060f9471fda2f61a46c2a7138fddb16769daed1fc5e8711faf6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Grind.Module.OfNatModule` — import line 9; external provider; requires a separately pinned dependency.
- `Init.Grind.Module.NatModuleNorm` — import line 10; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Grind.Diseq` — import line 11; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Grind.Arith.Linear.ToExpr` — import line 12; external provider; requires a separately pinned dependency.
- `Init.Data.Nat.Order` — import line 13; external provider; requires a separately pinned dependency.
- `Init.Data.Order.Lemmas` — import line 14; external provider; requires a separately pinned dependency.
- `Lean.Data.RArray` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [OfNatModuleM.Context](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OfNatModule/Variantf28af12aa57d8060f9471fda2f61a46c2a7138fddb16769daed1fc5e8711faf6.lean/declarations/ofnatmodulem-context--5ab01a3181d6a9e319f61d47.md) | 19 | `declaration-track:5ab01a3181d6a9e319f61d4716eb0c23bf6c6171a7c5a14f86ab7d9db58e9407` |
| 2 | `abbrev` | [OfNatModuleM](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OfNatModule/Variantf28af12aa57d8060f9471fda2f61a46c2a7138fddb16769daed1fc5e8711faf6.lean/declarations/ofnatmodulem--cccd669fbbd1085d9681ad83.md) | 22 | `declaration-track:cccd669fbbd1085d9681ad83349fc64be395768650495b80ecfcf2a0ad304ab8` |
| 3 | `abbrev` | [OfNatModuleM.run](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OfNatModule/Variantf28af12aa57d8060f9471fda2f61a46c2a7138fddb16769daed1fc5e8711faf6.lean/declarations/ofnatmodulem-run--43e519b1e28b379cf493db88.md) | 24 | `declaration-track:43e519b1e28b379cf493db88db1078c9d45c2374243e5c05615019e23b9935b3` |
| 4 | `abbrev` | [getNatStructId](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OfNatModule/Variantf28af12aa57d8060f9471fda2f61a46c2a7138fddb16769daed1fc5e8711faf6.lean/declarations/getnatstructid--bb77d4507c3ece4f009dae47.md) | 27 | `declaration-track:bb77d4507c3ece4f009dae4791ab887c83fb3cf7962c140f08f87eeb6d09f734` |
| 5 | `def` | [getNatStruct](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OfNatModule/Variantf28af12aa57d8060f9471fda2f61a46c2a7138fddb16769daed1fc5e8711faf6.lean/declarations/getnatstruct--ba465d70c75da0a052ffdc3c.md) | 30 | `declaration-track:ba465d70c75da0a052ffdc3cf5377671e86744e61c664c23d8440c4361e87345` |
| 6 | `def` | [OfNatModuleM.getStruct](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OfNatModule/Variantf28af12aa57d8060f9471fda2f61a46c2a7138fddb16769daed1fc5e8711faf6.lean/declarations/ofnatmodulem-getstruct--775319408d515e7b2a4d9f13.md) | 38 | `declaration-track:775319408d515e7b2a4d9f13d4006959cef7f3e0b860acd3018f187bea56ed38` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OfNatModule/Variantf28af12aa57d8060f9471fda2f61a46c2a7138fddb16769daed1fc5e8711faf6.lean/declarations/instance--38b40093e1b8453a42f1706b.md) | 42 | `declaration-track:38b40093e1b8453a42f1706b48475d7ae92ee79a8ee35026d90cd0f08a9f2f01` |
| 8 | `def` | [modifyNatStruct](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OfNatModule/Variantf28af12aa57d8060f9471fda2f61a46c2a7138fddb16769daed1fc5e8711faf6.lean/declarations/modifynatstruct--12c86a801e94b0d2ae06a3ff.md) | 45 | `declaration-track:12c86a801e94b0d2ae06a3ffd5167a8cf3c5dd81a54c7ae2696c42621970f6d4` |
| 9 | `def` | [getTermNatStructId?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OfNatModule/Variantf28af12aa57d8060f9471fda2f61a46c2a7138fddb16769daed1fc5e8711faf6.lean/declarations/gettermnatstructid--3a375750e45fc514df67b53b.md) | 49 | `declaration-track:3a375750e45fc514df67b53b668a8227efd2b50076bbe892e607c3b9c8b6943f` |
| 10 | `def` | [inSameNatStruct?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OfNatModule/Variantf28af12aa57d8060f9471fda2f61a46c2a7138fddb16769daed1fc5e8711faf6.lean/declarations/insamenatstruct--598fd84daa686525390f5855.md) | 53 | `declaration-track:598fd84daa686525390f58556451d750ba201584d4d45d90441cb83a7c5a3e21` |
| 11 | `def` | [setTermNatStructId](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OfNatModule/Variantf28af12aa57d8060f9471fda2f61a46c2a7138fddb16769daed1fc5e8711faf6.lean/declarations/settermnatstructid--0ebd2b940b27b40e47a7179d.md) | 59 | `declaration-track:0ebd2b940b27b40e47a7179d33df5cff933ad7de3d46e98dacfed07fdd44338f` |
| 12 | `def` | [mkOfNatModuleVar](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OfNatModule/Variantf28af12aa57d8060f9471fda2f61a46c2a7138fddb16769daed1fc5e8711faf6.lean/declarations/mkofnatmodulevar--a8a123a3e202028c49b305a7.md) | 67 | `declaration-track:a8a123a3e202028c49b305a7a51ec78cbb0dbbf59bf3fc1d0373c6189b885649` |
| 13 | `def` | [isAddInst](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OfNatModule/Variantf28af12aa57d8060f9471fda2f61a46c2a7138fddb16769daed1fc5e8711faf6.lean/declarations/isaddinst--15094c9daa481479bd599ffc.md) | 80 | `declaration-track:15094c9daa481479bd599ffc5973baff07ff2eef89c90d9ff2bae0ea134f7c6e` |
| 14 | `def` | [isZeroInst](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OfNatModule/Variantf28af12aa57d8060f9471fda2f61a46c2a7138fddb16769daed1fc5e8711faf6.lean/declarations/iszeroinst--d6027ed518e90e4d280019e8.md) | 82 | `declaration-track:d6027ed518e90e4d280019e84d49d8c5364cbf1865e3fd358b348d7bef231b8a` |
| 15 | `def` | [isSMulInst](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OfNatModule/Variantf28af12aa57d8060f9471fda2f61a46c2a7138fddb16769daed1fc5e8711faf6.lean/declarations/issmulinst--af1c8cc77da1d57ffd024823.md) | 84 | `declaration-track:af1c8cc77da1d57ffd02482337947d89ca553e537a83e01ad747a0282eae08be` |
| 16 | `def` | [ofNatModule'](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OfNatModule/Variantf28af12aa57d8060f9471fda2f61a46c2a7138fddb16769daed1fc5e8711faf6.lean/declarations/ofnatmodule--dec0818e975fe2a10ff7cc6f.md) | 87 | `declaration-track:dec0818e975fe2a10ff7cc6fdb3ad73ddfd1e29cb1bec7648839744830e1ed4b` |
| 17 | `def` | [ofNatModule](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OfNatModule/Variantf28af12aa57d8060f9471fda2f61a46c2a7138fddb16769daed1fc5e8711faf6.lean/declarations/ofnatmodule--c4323d29ac485f42c6e125e6.md) | 124 | `declaration-track:c4323d29ac485f42c6e125e6c304858562d5070390a9793825c5b5c652f66239` |
| 18 | `structure` | [ReifyM.State](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OfNatModule/Variantf28af12aa57d8060f9471fda2f61a46c2a7138fddb16769daed1fc5e8711faf6.lean/declarations/reifym-state--3d5131db6d39da7ad47ec135.md) | 138 | `declaration-track:3d5131db6d39da7ad47ec135cbfab2af40f7add4307144eda33e9a349acfe6c2` |
| 19 | `abbrev` | [ReifyM](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OfNatModule/Variantf28af12aa57d8060f9471fda2f61a46c2a7138fddb16769daed1fc5e8711faf6.lean/declarations/reifym--c050b76c9b4c70161787037e.md) | 142 | `declaration-track:c050b76c9b4c70161787037e9df4b96b6bd48f4cbf9699d32e3a6a654f13158f` |
| 20 | `abbrev` | [ReifyM.run](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OfNatModule/Variantf28af12aa57d8060f9471fda2f61a46c2a7138fddb16769daed1fc5e8711faf6.lean/declarations/reifym-run--6f9143f87a0377a0db349b45.md) | 144 | `declaration-track:6f9143f87a0377a0db349b456336791b7571aa2734114d7665396f90e0b24b19` |
| 21 | `def` | [reifyVar](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OfNatModule/Variantf28af12aa57d8060f9471fda2f61a46c2a7138fddb16769daed1fc5e8711faf6.lean/declarations/reifyvar--2529ce69966bef4d4321008b.md) | 147 | `declaration-track:2529ce69966bef4d4321008bb19990c2e608d83799bfb8df3cb14593f7ef0115` |
| 22 | `def` | [reify](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OfNatModule/Variantf28af12aa57d8060f9471fda2f61a46c2a7138fddb16769daed1fc5e8711faf6.lean/declarations/reify--b1e18e60a49b347b7c4bfe91.md) | 155 | `declaration-track:b1e18e60a49b347b7c4bfe9183a97b14ef0447c7bf1cb5f97fa162b5f297e721` |
| 23 | `def` | [normNatModuleDiseq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OfNatModule/Variantf28af12aa57d8060f9471fda2f61a46c2a7138fddb16769daed1fc5e8711faf6.lean/declarations/normnatmodulediseq--7f6bda078054be58332a9c6f.md) | 181 | `declaration-track:7f6bda078054be58332a9c6f2871f385bf26d8a2b254a91697309d6279237e5f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
