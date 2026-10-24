# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.Finite.Variantdd1ebd8756d8e965ac75fda957821be840cfda3a952483c4365b037a72414b82

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1616fc288394be8bd955844dfb9e2c4390fe5cd1",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Finite/Variantdd1ebd8756d8e965ac75fda957821be840cfda3a952483c4365b037a72414b82.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Finite/Variantdd1ebd8756d8e965ac75fda957821be840cfda3a952483c4365b037a72414b82.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Finite/Variantdd1ebd8756d8e965ac75fda957821be840cfda3a952483c4365b037a72414b82.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1616fc288394be8bd955844dfb9e2c4390fe5cd1`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Finite/Variantdd1ebd8756d8e965ac75fda957821be840cfda3a952483c4365b037a72414b82.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Finite/Variantdd1ebd8756d8e965ac75fda957821be840cfda3a952483c4365b037a72414b82.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Set.Finite.Lattice` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Atoms` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Interval.Finset.Defs` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Preorder.Finite` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Finite/Variantdd1ebd8756d8e965ac75fda957821be840cfda3a952483c4365b037a72414b82.lean/declarations/instance--cb56042d3f80b105cffdec6c.md) | 33 | `declaration-track:cb56042d3f80b105cffdec6c609d9a47ed753916b5c6e837f21c575ee5868356` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Finite/Variantdd1ebd8756d8e965ac75fda957821be840cfda3a952483c4365b037a72414b82.lean/declarations/instance--91fb5ccfe78e546a46e5419c.md) | 38 | `declaration-track:91fb5ccfe78e546a46e5419cdb28a4a2899682123595429bf60536490134aab4` |
| 3 | `theorem` | [univ](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Finite/Variantdd1ebd8756d8e965ac75fda957821be840cfda3a952483c4365b037a72414b82.lean/declarations/univ--8a30f4062aee03b62f081502.md) | 48 | `result-track:8a30f4062aee03b62f081502653267ee807d0634907ca5c990debb310a123c99` |
| 4 | `theorem` | [card](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Finite/Variantdd1ebd8756d8e965ac75fda957821be840cfda3a952483c4365b037a72414b82.lean/declarations/card--1bf3f52e741fd1edc6fcdb72.md) | 54 | `result-track:1bf3f52e741fd1edc6fcdb724e0d13915cb8ef86e70a7e152f67301050b7165f` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Finite/Variantdd1ebd8756d8e965ac75fda957821be840cfda3a952483c4365b037a72414b82.lean/declarations/instance--d807c1e926dbf6875f99b29d.md) | 63 | `declaration-track:d807c1e926dbf6875f99b29d5bdffefa4c6862780bcd2457555c01bfba714c53` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Finite/Variantdd1ebd8756d8e965ac75fda957821be840cfda3a952483c4365b037a72414b82.lean/declarations/instance--3b023fd3caa675a3d81f065d.md) | 76 | `declaration-track:3b023fd3caa675a3d81f065dd499417bf6e39bb47814c3cc68eaa2e3e1381f07` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Finite/Variantdd1ebd8756d8e965ac75fda957821be840cfda3a952483c4365b037a72414b82.lean/declarations/instance--1462a692e3a062bc327284ff.md) | 86 | `declaration-track:1462a692e3a062bc327284ff6dda5493f8ae22f8fd319f10976f8ce9e9edb62e` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Finite/Variantdd1ebd8756d8e965ac75fda957821be840cfda3a952483c4365b037a72414b82.lean/declarations/instance--82de79754c036744c43317c6.md) | 96 | `declaration-track:82de79754c036744c43317c670ae114b9abdc62ac792b9e31130444203aaa4fa` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Finite/Variantdd1ebd8756d8e965ac75fda957821be840cfda3a952483c4365b037a72414b82.lean/declarations/instance--9bbc04a3075891214c69b078.md) | 103 | `declaration-track:9bbc04a3075891214c69b078911684b9df2ffa15f4beefed4e723f77888c345d` |
| 10 | `theorem` | [exists_covby_infinite_Ici_of_infinite_Ici](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Finite/Variantdd1ebd8756d8e965ac75fda957821be840cfda3a952483c4365b037a72414b82.lean/declarations/exists-covby-infinite-ici-of-infinite-ici--3f2a5dae09a9cb2f250e34d7.md) | 112 | `result-track:3f2a5dae09a9cb2f250e34d7938a9273c7f87e75a285d924be2e9b3b0f368998` |
| 11 | `theorem` | [exists_covby_infinite_Iic_of_infinite_Iic](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Finite/Variantdd1ebd8756d8e965ac75fda957821be840cfda3a952483c4365b037a72414b82.lean/declarations/exists-covby-infinite-iic-of-infinite-iic--51a40b15b28a257c52bbe860.md) | 121 | `result-track:51a40b15b28a257c52bbe8604aa2ab89fe99e66ef77c6d91cba456918f1ca3bb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
