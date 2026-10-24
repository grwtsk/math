# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Defs.Varianta1a8fdac0fc503310a8e13256c7756aba8470f003de3f18b8a2d64cb7bfb5adb

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "422c189f3b438c8f66586333f2c0bfbaf374b59e",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Defs/Varianta1a8fdac0fc503310a8e13256c7756aba8470f003de3f18b8a2d64cb7bfb5adb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Varianta1a8fdac0fc503310a8e13256c7756aba8470f003de3f18b8a2d64cb7bfb5adb.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Varianta1a8fdac0fc503310a8e13256c7756aba8470f003de3f18b8a2d64cb7bfb5adb.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `422c189f3b438c8f66586333f2c0bfbaf374b59e`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Defs/Varianta1a8fdac0fc503310a8e13256c7756aba8470f003de3f18b8a2d64cb7bfb5adb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Defs/Varianta1a8fdac0fc503310a8e13256c7756aba8470f003de3f18b8a2d64cb7bfb5adb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.BigOperators.Group.List.Defs` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Multiset.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Multiset.Filter` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [prod](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Varianta1a8fdac0fc503310a8e13256c7756aba8470f003de3f18b8a2d64cb7bfb5adb.lean/declarations/prod--0a876f41d18888dc49c6468d.md) | 39 | `declaration-track:0a876f41d18888dc49c6468d2635a4075c0c7dcf53808f47e7c1c3f4fe260d7b` |
| 2 | `theorem` | [prod_eq_foldr](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Varianta1a8fdac0fc503310a8e13256c7756aba8470f003de3f18b8a2d64cb7bfb5adb.lean/declarations/prod-eq-foldr--226af994537080f3e6c79eee.md) | 43 | `result-track:226af994537080f3e6c79eee778facb94f816f3815a7a07d33d321a0c5486c7f` |
| 3 | `theorem` | [prod_eq_foldl](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Varianta1a8fdac0fc503310a8e13256c7756aba8470f003de3f18b8a2d64cb7bfb5adb.lean/declarations/prod-eq-foldl--1a63f2a16df30e7c993e2c2c.md) | 48 | `result-track:1a63f2a16df30e7c993e2c2cda39d2fbfeff47d31e6d1a651e5a36006d50c679` |
| 4 | `theorem` | [prod_coe](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Varianta1a8fdac0fc503310a8e13256c7756aba8470f003de3f18b8a2d64cb7bfb5adb.lean/declarations/prod-coe--9fa228fa7a9a1c7b24ab9d0a.md) | 53 | `result-track:9fa228fa7a9a1c7b24ab9d0a80ac11beae236eced95836421e558cac1ecc4ae4` |
| 5 | `theorem` | [prod_toList](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Varianta1a8fdac0fc503310a8e13256c7756aba8470f003de3f18b8a2d64cb7bfb5adb.lean/declarations/prod-tolist--c90d61ef72b80b6c7a317d7f.md) | 56 | `result-track:c90d61ef72b80b6c7a317d7f8f16755bee139e5d905e79db94777b8246d1e3e4` |
| 6 | `theorem` | [prod_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Varianta1a8fdac0fc503310a8e13256c7756aba8470f003de3f18b8a2d64cb7bfb5adb.lean/declarations/prod-zero--df81b934e2364ee2ceeb5da2.md) | 61 | `result-track:df81b934e2364ee2ceeb5da2336bec5549d9c4551a6cac119579e21240898065` |
| 7 | `theorem` | [prod_cons](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Varianta1a8fdac0fc503310a8e13256c7756aba8470f003de3f18b8a2d64cb7bfb5adb.lean/declarations/prod-cons--0496f989eef7f8a1b8be665a.md) | 65 | `result-track:0496f989eef7f8a1b8be665ad6367b679afc44410eb86b7c9e9be92ab26753a8` |
| 8 | `theorem` | [prod_singleton](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Varianta1a8fdac0fc503310a8e13256c7756aba8470f003de3f18b8a2d64cb7bfb5adb.lean/declarations/prod-singleton--c5ef526c11a363e22c7ea090.md) | 69 | `result-track:c5ef526c11a363e22c7ea0909c7564aed0aa9f19bf80528a033a34b940eb364b` |
| 9 | `theorem` | [prod_pair](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Varianta1a8fdac0fc503310a8e13256c7756aba8470f003de3f18b8a2d64cb7bfb5adb.lean/declarations/prod-pair--34f929f74db3243bfff91e01.md) | 73 | `result-track:34f929f74db3243bfff91e016a526d3d8d1ef37af710857177c21a67d5c0b57a` |
| 10 | `theorem` | [prod_replicate](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Varianta1a8fdac0fc503310a8e13256c7756aba8470f003de3f18b8a2d64cb7bfb5adb.lean/declarations/prod-replicate--9c3183d6c69da39cb7aa0b76.md) | 77 | `result-track:9c3183d6c69da39cb7aa0b76f7cc33b5887121e848cf7d638265f2860047e204` |
| 11 | `theorem` | [pow_count](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Varianta1a8fdac0fc503310a8e13256c7756aba8470f003de3f18b8a2d64cb7bfb5adb.lean/declarations/pow-count--758970f834d46fa8126624d1.md) | 81 | `result-track:758970f834d46fa8126624d198ba1034627230d3e0c1151e2b8ae1117629e98f` |
| 12 | `theorem` | [prod_hom_rel](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Varianta1a8fdac0fc503310a8e13256c7756aba8470f003de3f18b8a2d64cb7bfb5adb.lean/declarations/prod-hom-rel--2f1961c6f2774c80fbc03ed2.md) | 85 | `result-track:2f1961c6f2774c80fbc03ed21dbde69f62d0b1be681a5757fbe75292d468e3b2` |
| 13 | `theorem` | [prod_map_one](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Varianta1a8fdac0fc503310a8e13256c7756aba8470f003de3f18b8a2d64cb7bfb5adb.lean/declarations/prod-map-one--a3b605f87e5a36cd33f8a84a.md) | 92 | `result-track:a3b605f87e5a36cd33f8a84a028fe97e51317b2b50ff8db3144a35e5111e8944` |
| 14 | `theorem` | [prod_induction](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Varianta1a8fdac0fc503310a8e13256c7756aba8470f003de3f18b8a2d64cb7bfb5adb.lean/declarations/prod-induction--5925168d28adb61ea61f3c06.md) | 96 | `result-track:5925168d28adb61ea61f3c0642c828d39799ac7b19b920092456d7c9ac055040` |
| 15 | `theorem` | [prod_induction_nonempty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Varianta1a8fdac0fc503310a8e13256c7756aba8470f003de3f18b8a2d64cb7bfb5adb.lean/declarations/prod-induction-nonempty--fd2b5964b010a908253d1edb.md) | 102 | `result-track:fd2b5964b010a908253d1edb889af463a87fb27ee3c6509e604b5e330e3d7a5f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
