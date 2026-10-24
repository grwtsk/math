# Verification target: GRWTSK.Topology.GeneralTopology.Ordered.Variantc797e695882d1927d4e5261dd866db18361d3380378dcd3db6ab19d2f51a7707

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c4ccca0e18af1ee47f0063820c6f5574393086fb",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Ordered/Variantc797e695882d1927d4e5261dd866db18361d3380378dcd3db6ab19d2f51a7707.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Ordered/Variantc797e695882d1927d4e5261dd866db18361d3380378dcd3db6ab19d2f51a7707.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Ordered/Variantc797e695882d1927d4e5261dd866db18361d3380378dcd3db6ab19d2f51a7707.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c4ccca0e18af1ee47f0063820c6f5574393086fb`.

Source path: `GRWTSK/Topology/GeneralTopology/Ordered/Variantc797e695882d1927d4e5261dd866db18361d3380378dcd3db6ab19d2f51a7707.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Ordered/Variantc797e695882d1927d4e5261dd866db18361d3380378dcd3db6ab19d2f51a7707.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Order.Lattice` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Order.ProjIcc` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.ContinuousMap.Defs` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [partialOrder](../../../../../mathematics/Topology/GeneralTopology/Ordered/Variantc797e695882d1927d4e5261dd866db18361d3380378dcd3db6ab19d2f51a7707.lean/declarations/partialorder--429f6cd86481a41ea1f7abc8.md) | 33 | `declaration-track:429f6cd86481a41ea1f7abc8199ccb505108b4985bbb308a4addbc1496732d7e` |
| 2 | `theorem` | [le_def](../../../../../mathematics/Topology/GeneralTopology/Ordered/Variantc797e695882d1927d4e5261dd866db18361d3380378dcd3db6ab19d2f51a7707.lean/declarations/le-def--0026fb5838c7e9172c268dea.md) | 36 | `result-track:0026fb5838c7e9172c268deac48ec901b0456bdfe404030eecdb6de9884d04aa` |
| 3 | `theorem` | [lt_def](../../../../../mathematics/Topology/GeneralTopology/Ordered/Variantc797e695882d1927d4e5261dd866db18361d3380378dcd3db6ab19d2f51a7707.lean/declarations/lt-def--1c78ba92e638f9c9bff1218d.md) | 39 | `result-track:1c78ba92e638f9c9bff1218d554c729ab8f119b325cffae41fb80b57b5c76779` |
| 4 | `instance` | [sup](../../../../../mathematics/Topology/GeneralTopology/Ordered/Variantc797e695882d1927d4e5261dd866db18361d3380378dcd3db6ab19d2f51a7707.lean/declarations/sup--b331f5e9993926d84170c8d8.md) | 45 | `declaration-track:b331f5e9993926d84170c8d89b3dbc7a70692b515ec15b7aa83a922bbec6a2ca` |
| 5 | `lemma` | [coe_sup](../../../../../mathematics/Topology/GeneralTopology/Ordered/Variantc797e695882d1927d4e5261dd866db18361d3380378dcd3db6ab19d2f51a7707.lean/declarations/coe-sup--51c1392ed74bda3144c9947a.md) | 47 | `result-track:51c1392ed74bda3144c9947a47ffa6dcc7fffcde8d7239faf0caa3b221532e76` |
| 6 | `lemma` | [sup_apply](../../../../../mathematics/Topology/GeneralTopology/Ordered/Variantc797e695882d1927d4e5261dd866db18361d3380378dcd3db6ab19d2f51a7707.lean/declarations/sup-apply--9a502652f9887e998cb1357a.md) | 49 | `result-track:9a502652f9887e998cb1357a5ad46bfecf4e989f6dca8ca5c728bf7085de4d5a` |
| 7 | `instance` | [semilatticeSup](../../../../../mathematics/Topology/GeneralTopology/Ordered/Variantc797e695882d1927d4e5261dd866db18361d3380378dcd3db6ab19d2f51a7707.lean/declarations/semilatticesup--2a3de573a48b39143ecf6754.md) | 51 | `declaration-track:2a3de573a48b39143ecf6754b9c108efc45b4f69e5111591196eefbcf961c0e8` |
| 8 | `lemma` | [sup'_apply](../../../../../mathematics/Topology/GeneralTopology/Ordered/Variantc797e695882d1927d4e5261dd866db18361d3380378dcd3db6ab19d2f51a7707.lean/declarations/sup-apply--f5aa5970a5fd83a28ce2b0a9.md) | 54 | `result-track:f5aa5970a5fd83a28ce2b0a993ab098e0e0f25e17f93a35164717d91543553f9` |
| 9 | `lemma` | [coe_sup'](../../../../../mathematics/Topology/GeneralTopology/Ordered/Variantc797e695882d1927d4e5261dd866db18361d3380378dcd3db6ab19d2f51a7707.lean/declarations/coe-sup--fab34695f5413390f374214d.md) | 59 | `result-track:fab34695f5413390f374214d7c74ce0ffc010e9a9df4be9876cf5f165d46722d` |
| 10 | `instance` | [inf](../../../../../mathematics/Topology/GeneralTopology/Ordered/Variantc797e695882d1927d4e5261dd866db18361d3380378dcd3db6ab19d2f51a7707.lean/declarations/inf--221e36ff41b1185faec7e0a6.md) | 67 | `declaration-track:221e36ff41b1185faec7e0a6fe18b91ea664ac178f8fca250c8c5b7c01c54221` |
| 11 | `lemma` | [coe_inf](../../../../../mathematics/Topology/GeneralTopology/Ordered/Variantc797e695882d1927d4e5261dd866db18361d3380378dcd3db6ab19d2f51a7707.lean/declarations/coe-inf--cd6c41bf955e05b07c4b0259.md) | 69 | `result-track:cd6c41bf955e05b07c4b025976a5aa59047b015b97d193ad08863547e9c3eb13` |
| 12 | `lemma` | [inf_apply](../../../../../mathematics/Topology/GeneralTopology/Ordered/Variantc797e695882d1927d4e5261dd866db18361d3380378dcd3db6ab19d2f51a7707.lean/declarations/inf-apply--e53d45616145fdee66165c58.md) | 71 | `result-track:e53d45616145fdee66165c5866a2a7ae90cc633dcf329c4fe2a22b95a5698f3d` |
| 13 | `instance` | [semilatticeInf](../../../../../mathematics/Topology/GeneralTopology/Ordered/Variantc797e695882d1927d4e5261dd866db18361d3380378dcd3db6ab19d2f51a7707.lean/declarations/semilatticeinf--14e240826824fb9666e42e7c.md) | 73 | `declaration-track:14e240826824fb9666e42e7cef5df7a03f4c9ede6d9974cbcdab0d981dc3d038` |
| 14 | `lemma` | [inf'_apply](../../../../../mathematics/Topology/GeneralTopology/Ordered/Variantc797e695882d1927d4e5261dd866db18361d3380378dcd3db6ab19d2f51a7707.lean/declarations/inf-apply--81993d498148dc5e457750b9.md) | 76 | `result-track:81993d498148dc5e457750b9cc4054ab24b9dfbdc98c6571797e3df5851b00ee` |
| 15 | `lemma` | [coe_inf'](../../../../../mathematics/Topology/GeneralTopology/Ordered/Variantc797e695882d1927d4e5261dd866db18361d3380378dcd3db6ab19d2f51a7707.lean/declarations/coe-inf--e316a35a18af5c6763cb5a03.md) | 81 | `result-track:e316a35a18af5c6763cb5a039784fb3ba43aa2d2dad704b371c669aafe19bb7d` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Ordered/Variantc797e695882d1927d4e5261dd866db18361d3380378dcd3db6ab19d2f51a7707.lean/declarations/instance--e31190fcd477aaeaa021fd9c.md) | 86 | `declaration-track:e31190fcd477aaeaa021fd9cba1f4cf6959ee8c692076147b55ede88f2dccbc3` |
| 17 | `def` | [IccExtend](../../../../../mathematics/Topology/GeneralTopology/Ordered/Variantc797e695882d1927d4e5261dd866db18361d3380378dcd3db6ab19d2f51a7707.lean/declarations/iccextend--70173127a06019ab36e6e6b8.md) | 96 | `declaration-track:70173127a06019ab36e6e6b81bec32dbcd2d099302f543c119ad1c466306cfe6` |
| 18 | `theorem` | [coe_IccExtend](../../../../../mathematics/Topology/GeneralTopology/Ordered/Variantc797e695882d1927d4e5261dd866db18361d3380378dcd3db6ab19d2f51a7707.lean/declarations/coe-iccextend--f3750e876006f4c8b9ad051c.md) | 100 | `result-track:f3750e876006f4c8b9ad051c3ab4812b0edd9c87ce00e578b4da555887807142` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
