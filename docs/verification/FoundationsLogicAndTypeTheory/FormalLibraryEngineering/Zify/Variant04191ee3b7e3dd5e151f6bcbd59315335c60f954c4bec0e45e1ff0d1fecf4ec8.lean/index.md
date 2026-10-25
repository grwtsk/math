# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Zify.Variant04191ee3b7e3dd5e151f6bcbd59315335c60f954c4bec0e45e1ff0d1fecf4ec8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "32ac64722080365c39d94aa4cc00ace32ed483f7",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Zify/Variant04191ee3b7e3dd5e151f6bcbd59315335c60f954c4bec0e45e1ff0d1fecf4ec8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Zify/Variant04191ee3b7e3dd5e151f6bcbd59315335c60f954c4bec0e45e1ff0d1fecf4ec8.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Zify/Variant04191ee3b7e3dd5e151f6bcbd59315335c60f954c4bec0e45e1ff0d1fecf4ec8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `32ac64722080365c39d94aa4cc00ace32ed483f7`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Zify/Variant04191ee3b7e3dd5e151f6bcbd59315335c60f954c4bec0e45e1ff0d1fecf4ec8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Zify/Variant04191ee3b7e3dd5e151f6bcbd59315335c60f954c4bec0e45e1ff0d1fecf4ec8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.NormCast` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Int.Basic` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Zify/Variant04191ee3b7e3dd5e151f6bcbd59315335c60f954c4bec0e45e1ff0d1fecf4ec8.lean/declarations/syntax--64c23921ab87633fb1976b1a.md) | 67 | `declaration-track:64c23921ab87633fb1976b1a77cf1812b9dc0ef2b3619127fbe5839d8951c96f` |
| 2 | `macro_rules` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Zify/Variant04191ee3b7e3dd5e151f6bcbd59315335c60f954c4bec0e45e1ff0d1fecf4ec8.lean/declarations/macro-rules--09a3313d56f887d1dd5feab7.md) | 69 | `declaration-track:09a3313d56f887d1dd5feab7b0ac2aa9b8336a7faa7c00aa6ff57b23c34387f3` |
| 3 | `def` | [mkZifyContext](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Zify/Variant04191ee3b7e3dd5e151f6bcbd59315335c60f954c4bec0e45e1ff0d1fecf4ec8.lean/declarations/mkzifycontext--127220690dd0fa73e84bda59.md) | 76 | `declaration-track:127220690dd0fa73e84bda590bf85970925696ff61ae59f6cbf80416a993e132` |
| 4 | `def` | [applySimpResultToProp'](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Zify/Variant04191ee3b7e3dd5e151f6bcbd59315335c60f954c4bec0e45e1ff0d1fecf4ec8.lean/declarations/applysimpresulttoprop--6c231f3b7deda95187e65ba2.md) | 84 | `declaration-track:6c231f3b7deda95187e65ba240e5f546e8c587085fb787a3316e778a9c8e49b3` |
| 5 | `def` | [zifyProof](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Zify/Variant04191ee3b7e3dd5e151f6bcbd59315335c60f954c4bec0e45e1ff0d1fecf4ec8.lean/declarations/zifyproof--16668853e8cbfb35ce274da8.md) | 95 | `declaration-track:16668853e8cbfb35ce274da8d86137c7c50aa4f39de4452e4ad6c731b43f73ee` |
| 6 | `lemma` | [nat_cast_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Zify/Variant04191ee3b7e3dd5e151f6bcbd59315335c60f954c4bec0e45e1ff0d1fecf4ec8.lean/declarations/nat-cast-eq--eb301e2184bca77ce9273e78.md) | 101 | `result-track:eb301e2184bca77ce9273e78d0fe6e071398ba377fb329cf5cd2657c8bdb1590` |
| 7 | `lemma` | [nat_cast_le](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Zify/Variant04191ee3b7e3dd5e151f6bcbd59315335c60f954c4bec0e45e1ff0d1fecf4ec8.lean/declarations/nat-cast-le--7987bb09d04c77844b091ae5.md) | 102 | `result-track:7987bb09d04c77844b091ae5ca637d780f711a754b78d7aa6f60a8b23fdcd562` |
| 8 | `lemma` | [nat_cast_lt](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Zify/Variant04191ee3b7e3dd5e151f6bcbd59315335c60f954c4bec0e45e1ff0d1fecf4ec8.lean/declarations/nat-cast-lt--99dbe5b09e7b705775372931.md) | 103 | `result-track:99dbe5b09e7b70577537293106b55c8dc06ecdc085d45a331fe432ead4540fde` |
| 9 | `lemma` | [nat_cast_ne](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Zify/Variant04191ee3b7e3dd5e151f6bcbd59315335c60f954c4bec0e45e1ff0d1fecf4ec8.lean/declarations/nat-cast-ne--c04573b03406bdb3d6a92088.md) | 104 | `result-track:c04573b03406bdb3d6a92088154a12717199e08c795bc3c69e85b3325239cbc1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
