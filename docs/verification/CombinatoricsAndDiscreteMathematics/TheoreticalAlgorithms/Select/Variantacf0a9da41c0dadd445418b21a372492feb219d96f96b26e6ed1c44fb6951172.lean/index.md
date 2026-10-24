# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Select.Variantacf0a9da41c0dadd445418b21a372492feb219d96f96b26e6ed1c44fb6951172

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6df08531afd99e4812084fd87637e3e820cf9ce5",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Select/Variantacf0a9da41c0dadd445418b21a372492feb219d96f96b26e6ed1c44fb6951172.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Select/Variantacf0a9da41c0dadd445418b21a372492feb219d96f96b26e6ed1c44fb6951172.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Select/Variantacf0a9da41c0dadd445418b21a372492feb219d96f96b26e6ed1c44fb6951172.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6df08531afd99e4812084fd87637e3e820cf9ce5`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Select/Variantacf0a9da41c0dadd445418b21a372492feb219d96f96b26e6ed1c44fb6951172.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Select/Variantacf0a9da41c0dadd445418b21a372492feb219d96f96b26e6ed1c44fb6951172.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.ByteArray.Extra` — import line 11; external provider; requires a separately pinned dependency.
- `Init.Data.Array.Lemmas` — import line 12; external provider; requires a separately pinned dependency.
- `Init.Omega` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Waiter](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Select/Variantacf0a9da41c0dadd445418b21a372492feb219d96f96b26e6ed1c44fb6951172.lean/declarations/waiter--53b0b3c966b200710e685370.md) | 30 | `declaration-track:53b0b3c966b200710e685370495021d531087d6dc9d1d63b48b202643e2cb6f8` |
| 2 | `def` | [Waiter.withPromise](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Select/Variantacf0a9da41c0dadd445418b21a372492feb219d96f96b26e6ed1c44fb6951172.lean/declarations/waiter-withpromise--26726babdbe4ef27149d4fc7.md) | 40 | `declaration-track:26726babdbe4ef27149d4fc75527e1ec5096660a8285bf9a45bb398190095b3f` |
| 3 | `def` | [Waiter.race](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Select/Variantacf0a9da41c0dadd445418b21a372492feb219d96f96b26e6ed1c44fb6951172.lean/declarations/waiter-race--a3104da4fb86789516441fc2.md) | 49 | `declaration-track:a3104da4fb86789516441fc2162229a8212268b1a1a1a9cabe2eaded2918dcee` |
| 4 | `def` | [Waiter.checkFinished](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Select/Variantacf0a9da41c0dadd445418b21a372492feb219d96f96b26e6ed1c44fb6951172.lean/declarations/waiter-checkfinished--816e417bc4ef1cdcd8223de8.md) | 62 | `declaration-track:816e417bc4ef1cdcd8223de8714d14681eda97efcc90c111e63d3816d1d57943` |
| 5 | `structure` | [Selector](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Select/Variantacf0a9da41c0dadd445418b21a372492feb219d96f96b26e6ed1c44fb6951172.lean/declarations/selector--8a40bb121e27e3fbfce87a0d.md) | 69 | `declaration-track:8a40bb121e27e3fbfce87a0db86d4bd1d99ce86ffa295c31fcf2c871fb967e28` |
| 6 | `structure` | [Selectable](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Select/Variantacf0a9da41c0dadd445418b21a372492feb219d96f96b26e6ed1c44fb6951172.lean/declarations/selectable--bd3b29d082252633b33f231e.md) | 91 | `declaration-track:bd3b29d082252633b33f231e5c09224f9973c9518617ef10c6b7ec31c0682446` |
| 7 | `def` | [shuffleIt](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Select/Variantacf0a9da41c0dadd445418b21a372492feb219d96f96b26e6ed1c44fb6951172.lean/declarations/shuffleit--4f14366afa7c4e34e0b84409.md) | 103 | `declaration-track:4f14366afa7c4e34e0b844098c2e4317d7cfc85e4fc921da182edeaff71ae5b4` |
| 8 | `def` | [Selectable.one](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Select/Variantacf0a9da41c0dadd445418b21a372492feb219d96f96b26e6ed1c44fb6951172.lean/declarations/selectable-one--06667936a8c7528a74348cf0.md) | 125 | `declaration-track:06667936a8c7528a74348cf0f2fb7f1509a7f35eac0568a154cae180fa9fc95d` |
| 9 | `def` | [Selectable.tryOne](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Select/Variantacf0a9da41c0dadd445418b21a372492feb219d96f96b26e6ed1c44fb6951172.lean/declarations/selectable-tryone--037e71172f8675dc41bab5cf.md) | 197 | `declaration-track:037e71172f8675dc41bab5cf37ea83f7e1fdd4107d7754767408c98a004952ee` |
| 10 | `def` | [Selectable.combine](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Select/Variantacf0a9da41c0dadd445418b21a372492feb219d96f96b26e6ed1c44fb6951172.lean/declarations/selectable-combine--4084b3759a350bc36fbab7ff.md) | 217 | `declaration-track:4084b3759a350bc36fbab7ffffc3e0678859f9893bf20be22290f8e8873e1e4e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
