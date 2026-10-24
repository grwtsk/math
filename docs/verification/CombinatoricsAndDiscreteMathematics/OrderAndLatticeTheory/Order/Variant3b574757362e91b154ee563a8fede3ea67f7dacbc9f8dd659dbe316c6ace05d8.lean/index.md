# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.Order.Variant3b574757362e91b154ee563a8fede3ea67f7dacbc9f8dd659dbe316c6ace05d8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d0e7dcbc276c10381488beb6f4d6b98340f397d5",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant3b574757362e91b154ee563a8fede3ea67f7dacbc9f8dd659dbe316c6ace05d8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant3b574757362e91b154ee563a8fede3ea67f7dacbc9f8dd659dbe316c6ace05d8.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant3b574757362e91b154ee563a8fede3ea67f7dacbc9f8dd659dbe316c6ace05d8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d0e7dcbc276c10381488beb6f4d6b98340f397d5`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant3b574757362e91b154ee563a8fede3ea67f7dacbc9f8dd659dbe316c6ace05d8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant3b574757362e91b154ee563a8fede3ea67f7dacbc9f8dd659dbe316c6ace05d8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.UpperLower.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Sets.Closeds` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [ClopenUpperSet](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant3b574757362e91b154ee563a8fede3ea67f7dacbc9f8dd659dbe316c6ace05d8.lean/declarations/clopenupperset--847bff5a28a1e91716e10d4c.md) | 34 | `declaration-track:847bff5a28a1e91716e10d4cc86183ac1c3d2f92e3decc81b8cf291e1f7fc9bb` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant3b574757362e91b154ee563a8fede3ea67f7dacbc9f8dd659dbe316c6ace05d8.lean/declarations/instance--b90b5db0e64a2d5dd027ffac.md) | 40 | `declaration-track:b90b5db0e64a2d5dd027ffac809ed6d0bf1a2ad5c6ad44949b9af34520c3a9f9` |
| 3 | `def` | [Simps.coe](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant3b574757362e91b154ee563a8fede3ea67f7dacbc9f8dd659dbe316c6ace05d8.lean/declarations/simps-coe--5fd8fe340e1a674f32f234ef.md) | 48 | `declaration-track:5fd8fe340e1a674f32f234ef8ce23b7aa6b359682e93f3d2d7bc8a4936f08b60` |
| 4 | `theorem` | [upper](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant3b574757362e91b154ee563a8fede3ea67f7dacbc9f8dd659dbe316c6ace05d8.lean/declarations/upper--2a1f7443077acf29a7e965bd.md) | 52 | `result-track:2a1f7443077acf29a7e965bdfc9370f13edaa2953f22b41a05aa64b8cf681506` |
| 5 | `theorem` | [clopen](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant3b574757362e91b154ee563a8fede3ea67f7dacbc9f8dd659dbe316c6ace05d8.lean/declarations/clopen--3dc5f67fc5ee163d76bd7481.md) | 56 | `result-track:3dc5f67fc5ee163d76bd74812305d0cc6514481beb1b80766e7dbb4256ad8b50` |
| 6 | `def` | [toUpperSet](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant3b574757362e91b154ee563a8fede3ea67f7dacbc9f8dd659dbe316c6ace05d8.lean/declarations/toupperset--c9f182c8d449adaee5b0773b.md) | 62 | `declaration-track:c9f182c8d449adaee5b0773bccfa3c6a9e0c90ed477fc5c26e9f58af1e4ab7a4` |
| 7 | `theorem` | [ext](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant3b574757362e91b154ee563a8fede3ea67f7dacbc9f8dd659dbe316c6ace05d8.lean/declarations/ext--61a5dcd89ba245aff779290f.md) | 67 | `result-track:61a5dcd89ba245aff779290f17dbdbd47dfce7dc1ad929439cc084a86b869ad8` |
| 8 | `theorem` | [coe_mk](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant3b574757362e91b154ee563a8fede3ea67f7dacbc9f8dd659dbe316c6ace05d8.lean/declarations/coe-mk--0e7f0d7152637b415896e888.md) | 72 | `result-track:0e7f0d7152637b415896e888269523dc101ad2f1918535390b00e86a8f7b1438` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant3b574757362e91b154ee563a8fede3ea67f7dacbc9f8dd659dbe316c6ace05d8.lean/declarations/instance--9cf63014cd3311016eff3a7c.md) | 76 | `declaration-track:9cf63014cd3311016eff3a7cc18404df0b30f66d08189d970a638681ddebe550` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant3b574757362e91b154ee563a8fede3ea67f7dacbc9f8dd659dbe316c6ace05d8.lean/declarations/instance--19be0d7a5d5bacd2db91ec06.md) | 79 | `declaration-track:19be0d7a5d5bacd2db91ec06d94c04cb40c1b0d4ecc213eb9b8b1df3e8ebf543` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant3b574757362e91b154ee563a8fede3ea67f7dacbc9f8dd659dbe316c6ace05d8.lean/declarations/instance--b12207a6d18d59a443025f19.md) | 82 | `declaration-track:b12207a6d18d59a443025f19fc157adb09c5ded6482d3199679f9891e2e6ea66` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant3b574757362e91b154ee563a8fede3ea67f7dacbc9f8dd659dbe316c6ace05d8.lean/declarations/instance--53bc02f592aa90536f015dda.md) | 85 | `declaration-track:53bc02f592aa90536f015dda1bf67fc7491b25c7173d9876ad4f8ce12fa85089` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant3b574757362e91b154ee563a8fede3ea67f7dacbc9f8dd659dbe316c6ace05d8.lean/declarations/instance--761777b28a3643ecfee8b6e1.md) | 88 | `declaration-track:761777b28a3643ecfee8b6e16e3efcb71466de6379c9efa8c508238b5d122aed` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant3b574757362e91b154ee563a8fede3ea67f7dacbc9f8dd659dbe316c6ace05d8.lean/declarations/instance--e18e082d2ebb3a040e465bdd.md) | 91 | `declaration-track:e18e082d2ebb3a040e465bdde9e9810e847ea57b134b19525803ca27d58c3559` |
| 15 | `theorem` | [coe_sup](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant3b574757362e91b154ee563a8fede3ea67f7dacbc9f8dd659dbe316c6ace05d8.lean/declarations/coe-sup--cc1bae58615d333adb59e6c4.md) | 95 | `result-track:cc1bae58615d333adb59e6c46b594a851f6eb878fc3fbb4432f20060bc9aa304` |
| 16 | `theorem` | [coe_inf](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant3b574757362e91b154ee563a8fede3ea67f7dacbc9f8dd659dbe316c6ace05d8.lean/declarations/coe-inf--bf2e96ba1aa25f74a2d760dc.md) | 100 | `result-track:bf2e96ba1aa25f74a2d760dc9803b45ebb4dac7c0940f31fb952dc3520a6f23d` |
| 17 | `theorem` | [coe_top](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant3b574757362e91b154ee563a8fede3ea67f7dacbc9f8dd659dbe316c6ace05d8.lean/declarations/coe-top--826d2e015327344c5752a819.md) | 105 | `result-track:826d2e015327344c5752a819d9cde03d7331ea9fb9551152bad261e104dbd378` |
| 18 | `theorem` | [coe_bot](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant3b574757362e91b154ee563a8fede3ea67f7dacbc9f8dd659dbe316c6ace05d8.lean/declarations/coe-bot--119e3f8752d08d65c12ea678.md) | 110 | `result-track:119e3f8752d08d65c12ea6781991518e493b80309e577c3bc7f1d2ad47027841` |
| 19 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant3b574757362e91b154ee563a8fede3ea67f7dacbc9f8dd659dbe316c6ace05d8.lean/declarations/instance--e3e0248301bc171f9c47f232.md) | 114 | `declaration-track:e3e0248301bc171f9c47f23278ba902963262722239b79222322a2296c156088` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
