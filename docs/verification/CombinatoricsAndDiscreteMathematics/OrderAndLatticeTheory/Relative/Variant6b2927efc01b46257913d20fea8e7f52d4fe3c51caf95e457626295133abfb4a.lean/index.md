# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.Relative.Variant6b2927efc01b46257913d20fea8e7f52d4fe3c51caf95e457626295133abfb4a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "02d66818df465b41bdf96c14098ea5b5448e1315",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Relative/Variant6b2927efc01b46257913d20fea8e7f52d4fe3c51caf95e457626295133abfb4a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Relative/Variant6b2927efc01b46257913d20fea8e7f52d4fe3c51caf95e457626295133abfb4a.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Relative/Variant6b2927efc01b46257913d20fea8e7f52d4fe3c51caf95e457626295133abfb4a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `02d66818df465b41bdf96c14098ea5b5448e1315`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Relative/Variant6b2927efc01b46257913d20fea8e7f52d4fe3c51caf95e457626295133abfb4a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Relative/Variant6b2927efc01b46257913d20fea8e7f52d4fe3c51caf95e457626295133abfb4a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Set.Image` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.SetLike.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Interval.Set.Defs` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Order.SetNotation` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [IsRelUpperSet.prop_of_mem](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Relative/Variant6b2927efc01b46257913d20fea8e7f52d4fe3c51caf95e457626295133abfb4a.lean/declarations/isrelupperset-prop-of-mem--4f849c00b930945126a0728b.md) | 25 | `result-track:4f849c00b930945126a0728b2dc34e79bd270e7be20fd78b3c69e6005459a8a2` |
| 2 | `lemma` | [IsRelLowerSet.prop_of_mem](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Relative/Variant6b2927efc01b46257913d20fea8e7f52d4fe3c51caf95e457626295133abfb4a.lean/declarations/isrellowerset-prop-of-mem--7ed2fc66377cb6b9180c9062.md) | 26 | `result-track:7ed2fc66377cb6b9180c9062751c1a3cd32c67da86d5c244e3cb8be2a518f861` |
| 3 | `lemma` | [isRelUpperSet_empty](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Relative/Variant6b2927efc01b46257913d20fea8e7f52d4fe3c51caf95e457626295133abfb4a.lean/declarations/isrelupperset-empty--cea74fd69d2793c27f6c763d.md) | 28 | `result-track:cea74fd69d2793c27f6c763d6e9d75a37ef8e023181c69e2fcc98417b05b59d8` |
| 4 | `lemma` | [isRelLowerSet_empty](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Relative/Variant6b2927efc01b46257913d20fea8e7f52d4fe3c51caf95e457626295133abfb4a.lean/declarations/isrellowerset-empty--829e2b1ab2a13c20384ef5be.md) | 29 | `result-track:829e2b1ab2a13c20384ef5bed1ebee5edbed1a78a3e42bd98ae7300467b0c993` |
| 5 | `lemma` | [isRelUpperSet_self](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Relative/Variant6b2927efc01b46257913d20fea8e7f52d4fe3c51caf95e457626295133abfb4a.lean/declarations/isrelupperset-self--a45ccc917c790469137193c3.md) | 31 | `result-track:a45ccc917c790469137193c3c13f016b67939307f64d7b0a579f2ca322828058` |
| 6 | `lemma` | [isRelLowerSet_self](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Relative/Variant6b2927efc01b46257913d20fea8e7f52d4fe3c51caf95e457626295133abfb4a.lean/declarations/isrellowerset-self--02a6991c94089c2222956441.md) | 32 | `result-track:02a6991c94089c22229564419e217fd74688884e63d63da0c4b8351cfafd14cb` |
| 7 | `lemma` | [IsRelUpperSet.union](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Relative/Variant6b2927efc01b46257913d20fea8e7f52d4fe3c51caf95e457626295133abfb4a.lean/declarations/isrelupperset-union--17623c412d7b54704eb3b858.md) | 34 | `result-track:17623c412d7b54704eb3b858c95edd826f7b4db15df8cce0263fbbcaa3998c43` |
| 8 | `lemma` | [IsRelLowerSet.union](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Relative/Variant6b2927efc01b46257913d20fea8e7f52d4fe3c51caf95e457626295133abfb4a.lean/declarations/isrellowerset-union--dde6a0724a1e6c28e39c4e99.md) | 40 | `result-track:dde6a0724a1e6c28e39c4e99978fb8ddbe4e1de1a549c70f2ba6195bbe57ee3e` |
| 9 | `lemma` | [IsRelUpperSet.inter](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Relative/Variant6b2927efc01b46257913d20fea8e7f52d4fe3c51caf95e457626295133abfb4a.lean/declarations/isrelupperset-inter--ad2ec570b7ffef48a5d7e4b2.md) | 46 | `result-track:ad2ec570b7ffef48a5d7e4b2b2b1f2f09708458c48932c7e1293a293653ea4ae` |
| 10 | `lemma` | [IsRelLowerSet.inter](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Relative/Variant6b2927efc01b46257913d20fea8e7f52d4fe3c51caf95e457626295133abfb4a.lean/declarations/isrellowerset-inter--a1f7035e543b056ad83a339b.md) | 51 | `result-track:a1f7035e543b056ad83a339b3e5ebfd62faa8f46495c0ee5fcba389c681e2440` |
| 11 | `lemma` | [IsRelUpperSet.sUnion](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Relative/Variant6b2927efc01b46257913d20fea8e7f52d4fe3c51caf95e457626295133abfb4a.lean/declarations/isrelupperset-sunion--468dbed899e8f088aa767afe.md) | 56 | `result-track:468dbed899e8f088aa767afec16fb4a69f064fe8172bc24f1b865d614167f919` |
| 12 | `lemma` | [IsRelLowerSet.sUnion](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Relative/Variant6b2927efc01b46257913d20fea8e7f52d4fe3c51caf95e457626295133abfb4a.lean/declarations/isrellowerset-sunion--979b4861324d259bc7313902.md) | 60 | `result-track:979b4861324d259bc73139025b4ac5d79928aeff177b87c6bcb1f703aa11981d` |
| 13 | `lemma` | [IsRelUpperSet.iUnion](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Relative/Variant6b2927efc01b46257913d20fea8e7f52d4fe3c51caf95e457626295133abfb4a.lean/declarations/isrelupperset-iunion--203f6c3a20eb8fa462849ef7.md) | 64 | `result-track:203f6c3a20eb8fa462849ef7cc792e37caca8e1c85ecc0f99049e53f23242437` |
| 14 | `lemma` | [IsRelLowerSet.iUnion](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Relative/Variant6b2927efc01b46257913d20fea8e7f52d4fe3c51caf95e457626295133abfb4a.lean/declarations/isrellowerset-iunion--3194590e92a0f828b09b76cf.md) | 68 | `result-track:3194590e92a0f828b09b76cfa0ca5ead5c6a5689057b923f7d0e645e8fab358c` |
| 15 | `lemma` | [IsRelUpperSet.iUnion₂](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Relative/Variant6b2927efc01b46257913d20fea8e7f52d4fe3c51caf95e457626295133abfb4a.lean/declarations/isrelupperset-iunion--bb12b90198ff86a28dac6f0c.md) | 72 | `result-track:bb12b90198ff86a28dac6f0c1408c991dd7f446cb7ba341b11a5f93506203789` |
| 16 | `lemma` | [IsRelLowerSet.iUnion₂](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Relative/Variant6b2927efc01b46257913d20fea8e7f52d4fe3c51caf95e457626295133abfb4a.lean/declarations/isrellowerset-iunion--311bc6e72a48223ef3fb6f0c.md) | 76 | `result-track:311bc6e72a48223ef3fb6f0c27705771c5f993b51417e677bc63c0922d37e37a` |
| 17 | `lemma` | [IsRelUpperSet.sInter](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Relative/Variant6b2927efc01b46257913d20fea8e7f52d4fe3c51caf95e457626295133abfb4a.lean/declarations/isrelupperset-sinter--c7080bf169a0404d8b5d0e9b.md) | 80 | `result-track:c7080bf169a0404d8b5d0e9b57efbcd4b78a48f635432fa1d7f363d0f383208f` |
| 18 | `lemma` | [IsRelLowerSet.sInter](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Relative/Variant6b2927efc01b46257913d20fea8e7f52d4fe3c51caf95e457626295133abfb4a.lean/declarations/isrellowerset-sinter--6a186a24687305d400af4918.md) | 86 | `result-track:6a186a24687305d400af49187becc9244fb5ca37ba324e812b47364227e6cee7` |
| 19 | `lemma` | [IsRelUpperSet.iInter](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Relative/Variant6b2927efc01b46257913d20fea8e7f52d4fe3c51caf95e457626295133abfb4a.lean/declarations/isrelupperset-iinter--6f3b20ee3d1dcac880e5223a.md) | 92 | `result-track:6f3b20ee3d1dcac880e5223aaea89df9ca6fe497a470e3ff8121f87988760962` |
| 20 | `lemma` | [IsRelLowerSet.iInter](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Relative/Variant6b2927efc01b46257913d20fea8e7f52d4fe3c51caf95e457626295133abfb4a.lean/declarations/isrellowerset-iinter--24895939e294c0d5ff6e06e0.md) | 96 | `result-track:24895939e294c0d5ff6e06e0fdb4aea600bf21bd072b21b825e267fe70dc0107` |
| 21 | `lemma` | [IsRelUpperSet.iInter₂](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Relative/Variant6b2927efc01b46257913d20fea8e7f52d4fe3c51caf95e457626295133abfb4a.lean/declarations/isrelupperset-iinter--c81a61071f498d6da4ac6e25.md) | 100 | `result-track:c81a61071f498d6da4ac6e258186908358602163801840ca2bd952219a781d42` |
| 22 | `lemma` | [IsRelLowerSet.iInter₂](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Relative/Variant6b2927efc01b46257913d20fea8e7f52d4fe3c51caf95e457626295133abfb4a.lean/declarations/isrellowerset-iinter--fb12f28ffa877bc674ab5d1c.md) | 105 | `result-track:fb12f28ffa877bc674ab5d1c1514c758732ea28966c68484ab66abab8c7899f8` |
| 23 | `lemma` | [isUpperSet_subtype_iff_isRelUpperSet](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Relative/Variant6b2927efc01b46257913d20fea8e7f52d4fe3c51caf95e457626295133abfb4a.lean/declarations/isupperset-subtype-iff-isrelupperset--e6a3a97a85f0a464b7f5e1aa.md) | 110 | `result-track:e6a3a97a85f0a464b7f5e1aa8cf3f36105eaa44e16a7d1203601c90f1a7d2a7d` |
| 24 | `lemma` | [isLowerSet_subtype_iff_isRelLowerSet](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Relative/Variant6b2927efc01b46257913d20fea8e7f52d4fe3c51caf95e457626295133abfb4a.lean/declarations/islowerset-subtype-iff-isrellowerset--03aa33bad99536041963bcef.md) | 118 | `result-track:03aa33bad99536041963bcef22cba7b6c43118634469419922bd1624e0e88163` |
| 25 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Relative/Variant6b2927efc01b46257913d20fea8e7f52d4fe3c51caf95e457626295133abfb4a.lean/declarations/instance--b5c3f5826e44a897070d0b94.md) | 126 | `declaration-track:b5c3f5826e44a897070d0b940472703fd5eee5bd9d659f7f173995ab6c39063c` |
| 26 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Relative/Variant6b2927efc01b46257913d20fea8e7f52d4fe3c51caf95e457626295133abfb4a.lean/declarations/instance--ad298a6ccf025aaf99c0e8b4.md) | 130 | `declaration-track:ad298a6ccf025aaf99c0e8b4f17456305f89e4aca8af809339efb902998b5c43` |
| 27 | `lemma` | [RelUpperSet.isRelUpperSet](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Relative/Variant6b2927efc01b46257913d20fea8e7f52d4fe3c51caf95e457626295133abfb4a.lean/declarations/relupperset-isrelupperset--16420083b3d0adfc416f3b9a.md) | 134 | `result-track:16420083b3d0adfc416f3b9aeff45fb062da856a9e2ece8626df4c8259e97629` |
| 28 | `lemma` | [RelLowerSet.isRelLowerSet](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Relative/Variant6b2927efc01b46257913d20fea8e7f52d4fe3c51caf95e457626295133abfb4a.lean/declarations/rellowerset-isrellowerset--e89f201dba38c7f02e1bf1ea.md) | 135 | `result-track:e89f201dba38c7f02e1bf1ea27f1352c82a502205c271011c67c278c462a528f` |
| 29 | `lemma` | [isRelUpperSet_Icc_le](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Relative/Variant6b2927efc01b46257913d20fea8e7f52d4fe3c51caf95e457626295133abfb4a.lean/declarations/isrelupperset-icc-le--b275acdfbb698451daea9ef9.md) | 143 | `result-track:b275acdfbb698451daea9ef9087f6f5d9e02e09b9dd65566d2c10a9c7027f852` |
| 30 | `lemma` | [isRelLowerSet_Icc_ge](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Relative/Variant6b2927efc01b46257913d20fea8e7f52d4fe3c51caf95e457626295133abfb4a.lean/declarations/isrellowerset-icc-ge--1a49c88f6c98d0263e244482.md) | 147 | `result-track:1a49c88f6c98d0263e2444824277b6af3e68ca8e70d2a84de106d2cf506e4d7e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
