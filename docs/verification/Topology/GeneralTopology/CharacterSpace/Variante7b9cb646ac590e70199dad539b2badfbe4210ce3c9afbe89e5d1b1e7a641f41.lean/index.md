# Verification target: GRWTSK.Topology.GeneralTopology.CharacterSpace.Variante7b9cb646ac590e70199dad539b2badfbe4210ce3c9afbe89e5d1b1e7a641f41

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "52921dc782f76178eba15c999ba01705a22a8bbc",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/CharacterSpace/Variante7b9cb646ac590e70199dad539b2badfbe4210ce3c9afbe89e5d1b1e7a641f41.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/CharacterSpace/Variante7b9cb646ac590e70199dad539b2badfbe4210ce3c9afbe89e5d1b1e7a641f41.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/CharacterSpace/Variante7b9cb646ac590e70199dad539b2badfbe4210ce3c9afbe89e5d1b1e7a641f41.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `52921dc782f76178eba15c999ba01705a22a8bbc`.

Source path: `GRWTSK/Topology/GeneralTopology/CharacterSpace/Variante7b9cb646ac590e70199dad539b2badfbe4210ce3c9afbe89e5d1b1e7a641f41.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/CharacterSpace/Variante7b9cb646ac590e70199dad539b2badfbe4210ce3c9afbe89e5d1b1e7a641f41.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Algebra.Module.WeakDual` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Algebra.Spectrum.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.ContinuousMap.Algebra` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Lattice` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [characterSpace](../../../../../mathematics/Topology/GeneralTopology/CharacterSpace/Variante7b9cb646ac590e70199dad539b2badfbe4210ce3c9afbe89e5d1b1e7a641f41.lean/declarations/characterspace--b64b11288e594e7827a6928a.md) | 48 | `declaration-track:b64b11288e594e7827a6928a245aeefba8b5717b4d668f487d839ba34fd1c46e` |
| 2 | `instance` | [instFunLike](../../../../../mathematics/Topology/GeneralTopology/CharacterSpace/Variante7b9cb646ac590e70199dad539b2badfbe4210ce3c9afbe89e5d1b1e7a641f41.lean/declarations/instfunlike--217345411f2c673954fffab4.md) | 63 | `declaration-track:217345411f2c673954fffab41e01beda5abcda5960ab1e044ae9f1714c9d2071` |
| 3 | `instance` | [instContinuousLinearMapClass](../../../../../mathematics/Topology/GeneralTopology/CharacterSpace/Variante7b9cb646ac590e70199dad539b2badfbe4210ce3c9afbe89e5d1b1e7a641f41.lean/declarations/instcontinuouslinearmapclass--2d47b2a7161eeebf9e4db347.md) | 68 | `declaration-track:2d47b2a7161eeebf9e4db34781fa496514703ddf7b095d4d06388c94aa9b299f` |
| 4 | `theorem` | [coe_coe](../../../../../mathematics/Topology/GeneralTopology/CharacterSpace/Variante7b9cb646ac590e70199dad539b2badfbe4210ce3c9afbe89e5d1b1e7a641f41.lean/declarations/coe-coe--0b6227e8f21b6c997537283a.md) | 76 | `result-track:0b6227e8f21b6c997537283a9cb0be4302d3ea7491aa41303ab57c4ee49f4da7` |
| 5 | `theorem` | [ext](../../../../../mathematics/Topology/GeneralTopology/CharacterSpace/Variante7b9cb646ac590e70199dad539b2badfbe4210ce3c9afbe89e5d1b1e7a641f41.lean/declarations/ext--63d9da8f0e4b7dc363f72cc6.md) | 80 | `result-track:63d9da8f0e4b7dc363f72cc64df48d9bb40b22869f27cb78a48b701c5d8c2b95` |
| 6 | `def` | [toCLM](../../../../../mathematics/Topology/GeneralTopology/CharacterSpace/Variante7b9cb646ac590e70199dad539b2badfbe4210ce3c9afbe89e5d1b1e7a641f41.lean/declarations/toclm--72f0e6a68f2dd1d3af4e696e.md) | 84 | `declaration-track:72f0e6a68f2dd1d3af4e696ebc331258a870a74b8ba5ffce53fa2edb39dcd21c` |
| 7 | `theorem` | [coe_toCLM](../../../../../mathematics/Topology/GeneralTopology/CharacterSpace/Variante7b9cb646ac590e70199dad539b2badfbe4210ce3c9afbe89e5d1b1e7a641f41.lean/declarations/coe-toclm--cfcd6c84c41b5e405f5b8ee2.md) | 88 | `result-track:cfcd6c84c41b5e405f5b8ee29f1da4faa458e1be5e916faf7fcd77b0a14909b0` |
| 8 | `instance` | [instNonUnitalAlgHomClass](../../../../../mathematics/Topology/GeneralTopology/CharacterSpace/Variante7b9cb646ac590e70199dad539b2badfbe4210ce3c9afbe89e5d1b1e7a641f41.lean/declarations/instnonunitalalghomclass--1bf6d46ba4f31d49d1806f33.md) | 92 | `declaration-track:1bf6d46ba4f31d49d1806f33aedcdc58f9dcccd8054cdce16bf19e1ddfe5b0e4` |
| 9 | `def` | [toNonUnitalAlgHom](../../../../../mathematics/Topology/GeneralTopology/CharacterSpace/Variante7b9cb646ac590e70199dad539b2badfbe4210ce3c9afbe89e5d1b1e7a641f41.lean/declarations/tononunitalalghom--75f0d0cdc65b9407c5227d09.md) | 99 | `declaration-track:75f0d0cdc65b9407c5227d094fa286513f7708afeaa2cb0a86ae9107e1b09f57` |
| 10 | `theorem` | [coe_toNonUnitalAlgHom](../../../../../mathematics/Topology/GeneralTopology/CharacterSpace/Variante7b9cb646ac590e70199dad539b2badfbe4210ce3c9afbe89e5d1b1e7a641f41.lean/declarations/coe-tononunitalalghom--3b747555eb0e91e4763f9907.md) | 107 | `result-track:3b747555eb0e91e4763f9907432fbfff1666ce1baca16164836d4d61c3c81451` |
| 11 | `instance` | [instIsEmpty](../../../../../mathematics/Topology/GeneralTopology/CharacterSpace/Variante7b9cb646ac590e70199dad539b2badfbe4210ce3c9afbe89e5d1b1e7a641f41.lean/declarations/instisempty--7a8d3a65dcb9ca075fd40391.md) | 110 | `declaration-track:7a8d3a65dcb9ca075fd40391c608255f6893993adfcb5af06798d08495486a9f` |
| 12 | `theorem` | [union_zero](../../../../../mathematics/Topology/GeneralTopology/CharacterSpace/Variante7b9cb646ac590e70199dad539b2badfbe4210ce3c9afbe89e5d1b1e7a641f41.lean/declarations/union-zero--0cbd6f343ca1838f412356d7.md) | 117 | `result-track:0cbd6f343ca1838f412356d7c09874c7336b8c6a333e4ad88d4221efaccd92bd` |
| 13 | `theorem` | [union_zero_isClosed](../../../../../mathematics/Topology/GeneralTopology/CharacterSpace/Variante7b9cb646ac590e70199dad539b2badfbe4210ce3c9afbe89e5d1b1e7a641f41.lean/declarations/union-zero-isclosed--fc518661058a5fda130bd175.md) | 126 | `result-track:fc518661058a5fda130bd1755261902e5142d90ab88bcebad12f1d7002bbd766` |
| 14 | `instance` | [instAlgHomClass](../../../../../mathematics/Topology/GeneralTopology/CharacterSpace/Variante7b9cb646ac590e70199dad539b2badfbe4210ce3c9afbe89e5d1b1e7a641f41.lean/declarations/instalghomclass--1215da94a46692d7b2a1289a.md) | 142 | `declaration-track:1215da94a46692d7b2a1289abfc2f69f9ec38a19b789694222ec17118717b1db` |
| 15 | `def` | [toAlgHom](../../../../../mathematics/Topology/GeneralTopology/CharacterSpace/Variante7b9cb646ac590e70199dad539b2badfbe4210ce3c9afbe89e5d1b1e7a641f41.lean/declarations/toalghom--0cf17cbbcc64070ff1f174ab.md) | 157 | `declaration-track:0cf17cbbcc64070ff1f174ab3acd7c918a8edf68c71250cd2cf7be21665a3795` |
| 16 | `theorem` | [eq_set_map_one_map_mul](../../../../../mathematics/Topology/GeneralTopology/CharacterSpace/Variante7b9cb646ac590e70199dad539b2badfbe4210ce3c9afbe89e5d1b1e7a641f41.lean/declarations/eq-set-map-one-map-mul--aa14dedf711d4e1124fb06ff.md) | 162 | `result-track:aa14dedf711d4e1124fb06ff75e68c9ebe6c48dd3477d58c55e2400ac0117bb8` |
| 17 | `theorem` | [isClosed](../../../../../mathematics/Topology/GeneralTopology/CharacterSpace/Variante7b9cb646ac590e70199dad539b2badfbe4210ce3c9afbe89e5d1b1e7a641f41.lean/declarations/isclosed--e26fd9c60db125819352add2.md) | 176 | `result-track:e26fd9c60db125819352add2481ce3036f4c07bce3d4192a381b2be93bc39252` |
| 18 | `theorem` | [apply_mem_spectrum](../../../../../mathematics/Topology/GeneralTopology/CharacterSpace/Variante7b9cb646ac590e70199dad539b2badfbe4210ce3c9afbe89e5d1b1e7a641f41.lean/declarations/apply-mem-spectrum--b092db402af05da2d724602e.md) | 189 | `result-track:b092db402af05da2d724602edffb5960b9730d58db9ec361054fa994f7cf5eeb` |
| 19 | `theorem` | [ext_ker](../../../../../mathematics/Topology/GeneralTopology/CharacterSpace/Variante7b9cb646ac590e70199dad539b2badfbe4210ce3c9afbe89e5d1b1e7a641f41.lean/declarations/ext-ker--0c4abfb5c27d9d0ad87cbb5c.md) | 192 | `result-track:0c4abfb5c27d9d0ad87cbb5c5886599df235dcd619db3ba8f8aea530e4764a08` |
| 20 | `instance` | [ker_isMaximal](../../../../../mathematics/Topology/GeneralTopology/CharacterSpace/Variante7b9cb646ac590e70199dad539b2badfbe4210ce3c9afbe89e5d1b1e7a641f41.lean/declarations/ker-ismaximal--42cba55750df593f8652f891.md) | 208 | `declaration-track:42cba55750df593f8652f891746880238c731e2b0690c8629f1f88b2b1c3aed8` |
| 21 | `def` | [gelfandTransform](../../../../../mathematics/Topology/GeneralTopology/CharacterSpace/Variante7b9cb646ac590e70199dad539b2badfbe4210ce3c9afbe89e5d1b1e7a641f41.lean/declarations/gelfandtransform--c4d3cba53ceb99b2cb9ce2d7.md) | 225 | `declaration-track:c4d3cba53ceb99b2cb9ce2d7837346f3897a5ac7a9ec5817e0ac11afac8db3fd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
