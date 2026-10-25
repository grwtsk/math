# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Have.Variant0dde26b193925cbcc4f9f285e5ecb1e746e8167bab6159538d08a4ad4d3032fc

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0ed2a6ee84d0cbc2c7a6a9017012c4bb4c314006",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Have/Variant0dde26b193925cbcc4f9f285e5ecb1e746e8167bab6159538d08a4ad4d3032fc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Have/Variant0dde26b193925cbcc4f9f285e5ecb1e746e8167bab6159538d08a4ad4d3032fc.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Have/Variant0dde26b193925cbcc4f9f285e5ecb1e746e8167bab6159538d08a4ad4d3032fc.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0ed2a6ee84d0cbc2c7a6a9017012c4bb4c314006`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Have/Variant0dde26b193925cbcc4f9f285e5ecb1e746e8167bab6159538d08a4ad4d3032fc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Have/Variant0dde26b193925cbcc4f9f285e5ecb1e746e8167bab6159538d08a4ad4d3032fc.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Meta.Sym.InstantiateS` — import line 9; external provider; requires a separately pinned dependency.
- `Lean.Meta.Sym.ReplaceS` — import line 10; external provider; requires a separately pinned dependency.
- `Lean.Meta.Sym.AbstractS` — import line 11; external provider; requires a separately pinned dependency.
- `Lean.Meta.Sym.InferType` — import line 12; external provider; requires a separately pinned dependency.
- `Lean.Meta.AppBuilder` — import line 13; external provider; requires a separately pinned dependency.
- `Lean.Meta.HaveTelescope` — import line 14; external provider; requires a separately pinned dependency.
- `Lean.Util.CollectFVars` — import line 15; external provider; requires a separately pinned dependency.
- `Init.Omega` — import line 16; external provider; requires a separately pinned dependency.
- `Init.While` — import line 17; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [ToBetaAppResult](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Have/Variant0dde26b193925cbcc4f9f285e5ecb1e746e8167bab6159538d08a4ad4d3032fc.lean/declarations/tobetaappresult--3fb95abcb4d3b44a7219a9df.md) | 87 | `declaration-track:3fb95abcb4d3b44a7219a9df481767b9d228f5ee8cd0483f0057c8bce2359d0c` |
| 2 | `def` | [collectFVarIdsAt](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Have/Variant0dde26b193925cbcc4f9f285e5ecb1e746e8167bab6159538d08a4ad4d3032fc.lean/declarations/collectfvaridsat--e4a3551aa91d2c253239000b.md) | 113 | `declaration-track:e4a3551aa91d2c253239000b01abdc6328ecec33a25e17f1d2624b72a5b3b010` |
| 3 | `def` | [mkArrows](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Have/Variant0dde26b193925cbcc4f9f285e5ecb1e746e8167bab6159538d08a4ad4d3032fc.lean/declarations/mkarrows--467a739f72351401efdfe0fb.md) | 126 | `declaration-track:467a739f72351401efdfe0fb76a86103927ab7f735658fbc0b6e273a3613690f` |
| 4 | `def` | [toBetaApp](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Have/Variant0dde26b193925cbcc4f9f285e5ecb1e746e8167bab6159538d08a4ad4d3032fc.lean/declarations/tobetaapp--8804eb8d049945982ad0e166.md) | 150 | `declaration-track:8804eb8d049945982ad0e1662b8dfc56dc07a97b38837d3c293b1c32993eeaa2` |
| 5 | `def` | [consumeForallN](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Have/Variant0dde26b193925cbcc4f9f285e5ecb1e746e8167bab6159538d08a4ad4d3032fc.lean/declarations/consumeforalln--e11a2ae15ff90fc6150dddd9.md) | 199 | `declaration-track:e11a2ae15ff90fc6150dddd97f41f4fba0866188ff02a42eae51f7cf5b729745` |
| 6 | `def` | [elimAuxApps](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Have/Variant0dde26b193925cbcc4f9f285e5ecb1e746e8167bab6159538d08a4ad4d3032fc.lean/declarations/elimauxapps--94cbde96e5f3bdd4dc4fbd64.md) | 219 | `declaration-track:94cbde96e5f3bdd4dc4fbd64bbeff99ce2654c3e1594c6a5f55e5dd94c68aa86` |
| 7 | `def` | [toHave](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Have/Variant0dde26b193925cbcc4f9f285e5ecb1e746e8167bab6159538d08a4ad4d3032fc.lean/declarations/tohave--e9fcded6d738f2700246c2e2.md) | 249 | `declaration-track:e9fcded6d738f2700246c2e2a36e26f3fce5cbf8655fbe7d519842f64de42a14` |
| 8 | `structure` | [GetUnivsResult](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Have/Variant0dde26b193925cbcc4f9f285e5ecb1e746e8167bab6159538d08a4ad4d3032fc.lean/declarations/getunivsresult--166ba5155c72fbf81a4faf59.md) | 268 | `declaration-track:166ba5155c72fbf81a4faf5985e6dfe7933a82f23912c42ccdf0b849d351cd3c` |
| 9 | `def` | [getUnivs](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Have/Variant0dde26b193925cbcc4f9f285e5ecb1e746e8167bab6159538d08a4ad4d3032fc.lean/declarations/getunivs--2ace0253376657d84b971bd2.md) | 284 | `declaration-track:2ace0253376657d84b971bd291586783a20e18a88fa9e3c69ec759551b6210d8` |
| 10 | `def` | [simpBetaApp](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Have/Variant0dde26b193925cbcc4f9f285e5ecb1e746e8167bab6159538d08a4ad4d3032fc.lean/declarations/simpbetaapp--36190746370aee1153445456.md) | 319 | `declaration-track:36190746370aee1153445456310acfc0a95dbc5a5c9bd64b1a449ab89530f39d` |
| 11 | `structure` | [SimpHaveResult](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Have/Variant0dde26b193925cbcc4f9f285e5ecb1e746e8167bab6159538d08a4ad4d3032fc.lean/declarations/simphaveresult--60b800c700391d44e7649e30.md) | 356 | `declaration-track:60b800c700391d44e7649e30f94a9ff39a82488b16468a604f3c5682d7ac1f8b` |
| 12 | `def` | [simpHaveCore](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Have/Variant0dde26b193925cbcc4f9f285e5ecb1e746e8167bab6159538d08a4ad4d3032fc.lean/declarations/simphavecore--11bf50f449f9925ca76fd1f8.md) | 381 | `declaration-track:11bf50f449f9925ca76fd1f87e2812466f0bb9f224e9d77e8398c5cfd2d8bcd2` |
| 13 | `def` | [simpHave](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Have/Variant0dde26b193925cbcc4f9f285e5ecb1e746e8167bab6159538d08a4ad4d3032fc.lean/declarations/simphave--49171e92028b701740932d7d.md) | 403 | `declaration-track:49171e92028b701740932d7dd2e3ef4d4be78403aa8fcfb3f1f170bb954a8e87` |
| 14 | `def` | [simpHaveAndZetaUnused](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Have/Variant0dde26b193925cbcc4f9f285e5ecb1e746e8167bab6159538d08a4ad4d3032fc.lean/declarations/simphaveandzetaunused--fa1000d4054e75b1811370ed.md) | 412 | `declaration-track:fa1000d4054e75b1811370ed587c494d62795fbd25398cd9856faebc1c17e4d9` |
| 15 | `def` | [simpLet'](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Have/Variant0dde26b193925cbcc4f9f285e5ecb1e746e8167bab6159538d08a4ad4d3032fc.lean/declarations/simplet--e00402a2d8c5ee5d78bc2716.md) | 431 | `declaration-track:e00402a2d8c5ee5d78bc2716971fe2849428e300250ba48f3d01644ecf088989` |
| 16 | `def` | [simpLet](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Have/Variant0dde26b193925cbcc4f9f285e5ecb1e746e8167bab6159538d08a4ad4d3032fc.lean/declarations/simplet--eb8cd5aa792e9930bb678699.md) | 441 | `declaration-track:eb8cd5aa792e9930bb6786992496465f6eefa1b9bcd04bcd9d6acaf9f28e9a65` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
