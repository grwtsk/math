# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.UnivLE.Variant19e932058661b19ad7129599d97da1a7e74f7c72db587b635cb69c666ccf70fc

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "28706fb54e8d7f3b5eaa218ba54e3b410fe6ae48",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/UnivLE/Variant19e932058661b19ad7129599d97da1a7e74f7c72db587b635cb69c666ccf70fc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/UnivLE/Variant19e932058661b19ad7129599d97da1a7e74f7c72db587b635cb69c666ccf70fc.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/UnivLE/Variant19e932058661b19ad7129599d97da1a7e74f7c72db587b635cb69c666ccf70fc.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `28706fb54e8d7f3b5eaa218ba54e3b410fe6ae48`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/UnivLE/Variant19e932058661b19ad7129599d97da1a7e74f7c72db587b635cb69c666ccf70fc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/UnivLE/Variant19e932058661b19ad7129599d97da1a7e74f7c72db587b635cb69c666ccf70fc.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Logic.Small.Defs` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [UnivLE](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/UnivLE/Variant19e932058661b19ad7129599d97da1a7e74f7c72db587b635cb69c666ccf70fc.lean/declarations/univle--f5ad1405a8a413f5baeebe3c.md) | 49 | `declaration-track:f5ad1405a8a413f5baeebe3c1f6010a308d1b7ccc78b73a6b255016273a057cf` |
| 2 | `theorem` | [univLE_max](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/UnivLE/Variant19e932058661b19ad7129599d97da1a7e74f7c72db587b635cb69c666ccf70fc.lean/declarations/univle-max--6ef4ff121b8357372e8fc607.md) | 56 | `result-track:6ef4ff121b8357372e8fc607480dd77a9547a7eac51ab84951d316d254e35982` |
| 3 | `theorem` | [Small.trans_univLE](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/UnivLE/Variant19e932058661b19ad7129599d97da1a7e74f7c72db587b635cb69c666ccf70fc.lean/declarations/small-trans-univle--a60898fa23e8149c3d49e3e3.md) | 58 | `result-track:a60898fa23e8149c3d49e3e34efbe5c30c46c854b3bf2dab0fe55354fdc0d2df` |
| 4 | `theorem` | [UnivLE.trans](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/UnivLE/Variant19e932058661b19ad7129599d97da1a7e74f7c72db587b635cb69c666ccf70fc.lean/declarations/univle-trans--4952591992d99a0ec45c09ad.md) | 64 | `result-track:4952591992d99a0ec45c09ada78ab4db4ffd25dacf3c7d693d84a5d1d8e473f0` |
| 5 | `instance` | [UnivLE.self](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/UnivLE/Variant19e932058661b19ad7129599d97da1a7e74f7c72db587b635cb69c666ccf70fc.lean/declarations/univle-self--0d3433ea98b172c0c518c759.md) | 67 | `declaration-track:0d3433ea98b172c0c518c7591d13a6591dccc42786d566f4667253842643fadf` |
| 6 | `instance` | [UnivLE.zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/UnivLE/Variant19e932058661b19ad7129599d97da1a7e74f7c72db587b635cb69c666ccf70fc.lean/declarations/univle-zero--d7516dc2643581c9d593a3b4.md) | 68 | `declaration-track:d7516dc2643581c9d593a3b4997ef059a6ae0fee7f785aca576653838739a15e` |
| 7 | `theorem` | [UnivLE.succ](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/UnivLE/Variant19e932058661b19ad7129599d97da1a7e74f7c72db587b635cb69c666ccf70fc.lean/declarations/univle-succ--4ed936e60dfae0ec8a6289fe.md) | 71 | `result-track:4ed936e60dfae0ec8a6289fe9610ef691e3959845d748f3d459c95b940100a79` |
| 8 | `instance` | [univLE_of_max](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/UnivLE/Variant19e932058661b19ad7129599d97da1a7e74f7c72db587b635cb69c666ccf70fc.lean/declarations/univle-of-max--af72f60d21fda10268ea1c4b.md) | 74 | `declaration-track:af72f60d21fda10268ea1c4bfe0733f22241d1ea3c07f58a44714a2019f93eae` |
| 9 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/UnivLE/Variant19e932058661b19ad7129599d97da1a7e74f7c72db587b635cb69c666ccf70fc.lean/declarations/example--b89c028985540e63fbdebf68.md) | 77 | `declaration-track:b89c028985540e63fbdebf68ef8d3bcb6aa39425d4dc117cac60f4479f52f87e` |
| 10 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/UnivLE/Variant19e932058661b19ad7129599d97da1a7e74f7c72db587b635cb69c666ccf70fc.lean/declarations/example--9ebe07065d32820fab0d8af2.md) | 78 | `declaration-track:9ebe07065d32820fab0d8af2f19eb4e6b3a0ae953bab42c109d17fdf4822d623` |
| 11 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/UnivLE/Variant19e932058661b19ad7129599d97da1a7e74f7c72db587b635cb69c666ccf70fc.lean/declarations/example--09f499ca71bf4ad05e9ef0fa.md) | 79 | `declaration-track:09f499ca71bf4ad05e9ef0fa1121102e1f1a49ad36267d03a2a5080472e15454` |
| 12 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/UnivLE/Variant19e932058661b19ad7129599d97da1a7e74f7c72db587b635cb69c666ccf70fc.lean/declarations/example--61d0f28fad438ca0a80c3eae.md) | 80 | `declaration-track:61d0f28fad438ca0a80c3eae63db89de230118df48a11ca243af502a85ee3159` |
| 13 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/UnivLE/Variant19e932058661b19ad7129599d97da1a7e74f7c72db587b635cb69c666ccf70fc.lean/declarations/example--bfcb2c90a0a30b4b96734c74.md) | 82 | `declaration-track:bfcb2c90a0a30b4b96734c741e219a9fcdf51a92cf4b8b4a4a8ea5e15b95ec14` |
| 14 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/UnivLE/Variant19e932058661b19ad7129599d97da1a7e74f7c72db587b635cb69c666ccf70fc.lean/declarations/example--2b9c64d316a02f91ff5e3475.md) | 83 | `declaration-track:2b9c64d316a02f91ff5e347563e96f15777d3752e2a9bbc5eaaf64ee90f1ab21` |
| 15 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/UnivLE/Variant19e932058661b19ad7129599d97da1a7e74f7c72db587b635cb69c666ccf70fc.lean/declarations/example--5873bc3cb41183ea9dc152b4.md) | 88 | `declaration-track:5873bc3cb41183ea9dc152b46709767881f768a030eecd67125df01af4456f6c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
