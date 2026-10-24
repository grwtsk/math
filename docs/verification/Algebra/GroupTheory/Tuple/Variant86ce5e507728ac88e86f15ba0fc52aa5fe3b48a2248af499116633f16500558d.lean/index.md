# Verification target: GRWTSK.Algebra.GroupTheory.Tuple.Variant86ce5e507728ac88e86f15ba0fc52aa5fe3b48a2248af499116633f16500558d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1248ba9bd6495546ede6bd09f55f59094dbdbc0c",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Tuple/Variant86ce5e507728ac88e86f15ba0fc52aa5fe3b48a2248af499116633f16500558d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Tuple/Variant86ce5e507728ac88e86f15ba0fc52aa5fe3b48a2248af499116633f16500558d.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Tuple/Variant86ce5e507728ac88e86f15ba0fc52aa5fe3b48a2248af499116633f16500558d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1248ba9bd6495546ede6bd09f55f59094dbdbc0c`.

Source path: `GRWTSK/Algebra/GroupTheory/Tuple/Variant86ce5e507728ac88e86f15ba0fc52aa5fe3b48a2248af499116633f16500558d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Tuple/Variant86ce5e507728ac88e86f15ba0fc52aa5fe3b48a2248af499116633f16500558d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Pi.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fin.VecNotation` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [insertNth_one_right](../../../../../mathematics/Algebra/GroupTheory/Tuple/Variant86ce5e507728ac88e86f15ba0fc52aa5fe3b48a2248af499116633f16500558d.lean/declarations/insertnth-one-right--afadce7f749c0717e678c08b.md) | 26 | `result-track:afadce7f749c0717e678c08b5755c334c777ab10ca8b3de2aef94e100dfae115` |
| 2 | `lemma` | [insertNth_mul](../../../../../mathematics/Algebra/GroupTheory/Tuple/Variant86ce5e507728ac88e86f15ba0fc52aa5fe3b48a2248af499116633f16500558d.lean/declarations/insertnth-mul--0ab775cb54438004b537b305.md) | 31 | `result-track:0ab775cb54438004b537b305e0f496bf8ad8376ce2ac1a311bed325a6d4b4e2c` |
| 3 | `lemma` | [insertNth_div](../../../../../mathematics/Algebra/GroupTheory/Tuple/Variant86ce5e507728ac88e86f15ba0fc52aa5fe3b48a2248af499116633f16500558d.lean/declarations/insertnth-div--867a8d679308012bb54b5905.md) | 36 | `result-track:867a8d679308012bb54b59056adb358b33e7eede125a310833f2f597ce37ec6f` |
| 4 | `lemma` | [insertNth_div_same](../../../../../mathematics/Algebra/GroupTheory/Tuple/Variant86ce5e507728ac88e86f15ba0fc52aa5fe3b48a2248af499116633f16500558d.lean/declarations/insertnth-div-same--0a131e7d5d2f1560e3dea9ba.md) | 41 | `result-track:0a131e7d5d2f1560e3dea9bad38b1117287eeaec0ecab12483f5c983936b3cf5` |
| 5 | `lemma` | [smul_empty](../../../../../mathematics/Algebra/GroupTheory/Tuple/Variant86ce5e507728ac88e86f15ba0fc52aa5fe3b48a2248af499116633f16500558d.lean/declarations/smul-empty--d53ea6aec8ae2e9319b38b27.md) | 54 | `result-track:d53ea6aec8ae2e9319b38b27cce135b6ee348472ea9a3ca387d39ace478f15cf` |
| 6 | `lemma` | [smul_cons](../../../../../mathematics/Algebra/GroupTheory/Tuple/Variant86ce5e507728ac88e86f15ba0fc52aa5fe3b48a2248af499116633f16500558d.lean/declarations/smul-cons--208a65ac9709749e821b9a32.md) | 56 | `result-track:208a65ac9709749e821b9a32afc1f02e149eb94e7287a21639b133ccf92cfd8a` |
| 7 | `lemma` | [empty_add_empty](../../../../../mathematics/Algebra/GroupTheory/Tuple/Variant86ce5e507728ac88e86f15ba0fc52aa5fe3b48a2248af499116633f16500558d.lean/declarations/empty-add-empty--3c652c8f28e6b5513a307646.md) | 64 | `result-track:3c652c8f28e6b5513a307646d502127b010e83dbeb73ccc20bd537bb995b0043` |
| 8 | `lemma` | [cons_add](../../../../../mathematics/Algebra/GroupTheory/Tuple/Variant86ce5e507728ac88e86f15ba0fc52aa5fe3b48a2248af499116633f16500558d.lean/declarations/cons-add--bd72b32c1f0155ac85e7d145.md) | 66 | `result-track:bd72b32c1f0155ac85e7d1457221de434a8881786cbd4ee6b004b7f98bb92263` |
| 9 | `lemma` | [add_cons](../../../../../mathematics/Algebra/GroupTheory/Tuple/Variant86ce5e507728ac88e86f15ba0fc52aa5fe3b48a2248af499116633f16500558d.lean/declarations/add-cons--82e8adadf34a903091ec3fe2.md) | 70 | `result-track:82e8adadf34a903091ec3fe24d27cc4b76fc917c023550ef19dd29ed00ec25ae` |
| 10 | `lemma` | [cons_add_cons](../../../../../mathematics/Algebra/GroupTheory/Tuple/Variant86ce5e507728ac88e86f15ba0fc52aa5fe3b48a2248af499116633f16500558d.lean/declarations/cons-add-cons--1059d6d956c51c01a0983a45.md) | 74 | `result-track:1059d6d956c51c01a0983a4588f75c4d441df975118618c01e983e70792703bb` |
| 11 | `lemma` | [head_add](../../../../../mathematics/Algebra/GroupTheory/Tuple/Variant86ce5e507728ac88e86f15ba0fc52aa5fe3b48a2248af499116633f16500558d.lean/declarations/head-add--ae9873db409d0962e995c822.md) | 77 | `result-track:ae9873db409d0962e995c822133aff062437e38e95607134092c5d0faddbe150` |
| 12 | `lemma` | [tail_add](../../../../../mathematics/Algebra/GroupTheory/Tuple/Variant86ce5e507728ac88e86f15ba0fc52aa5fe3b48a2248af499116633f16500558d.lean/declarations/tail-add--fe6452f2e185a2401ae80908.md) | 79 | `result-track:fe6452f2e185a2401ae80908a868dce5dc7aa1657b106145b6effd9e8bed23de` |
| 13 | `lemma` | [empty_sub_empty](../../../../../mathematics/Algebra/GroupTheory/Tuple/Variant86ce5e507728ac88e86f15ba0fc52aa5fe3b48a2248af499116633f16500558d.lean/declarations/empty-sub-empty--8b9437571be72bdd757aa8f2.md) | 86 | `result-track:8b9437571be72bdd757aa8f26a9193e3ab64bb3e9a4068836a649939a0d0ab62` |
| 14 | `lemma` | [cons_sub](../../../../../mathematics/Algebra/GroupTheory/Tuple/Variant86ce5e507728ac88e86f15ba0fc52aa5fe3b48a2248af499116633f16500558d.lean/declarations/cons-sub--31e2d4d99a6c10a63a22e30d.md) | 88 | `result-track:31e2d4d99a6c10a63a22e30d12799bac83f079225a573d6db0b696637a54aa48` |
| 15 | `lemma` | [sub_cons](../../../../../mathematics/Algebra/GroupTheory/Tuple/Variant86ce5e507728ac88e86f15ba0fc52aa5fe3b48a2248af499116633f16500558d.lean/declarations/sub-cons--7825efebd1cc1981d1643f35.md) | 92 | `result-track:7825efebd1cc1981d1643f35789ff157155e1db1b929f3e27dba8cce9860d002` |
| 16 | `lemma` | [cons_sub_cons](../../../../../mathematics/Algebra/GroupTheory/Tuple/Variant86ce5e507728ac88e86f15ba0fc52aa5fe3b48a2248af499116633f16500558d.lean/declarations/cons-sub-cons--8fd6c2195dbeb2eacd4966e6.md) | 96 | `result-track:8fd6c2195dbeb2eacd4966e6a679b98c366b2baaf15b9cb7c5c7bb1f9df7e3fd` |
| 17 | `lemma` | [head_sub](../../../../../mathematics/Algebra/GroupTheory/Tuple/Variant86ce5e507728ac88e86f15ba0fc52aa5fe3b48a2248af499116633f16500558d.lean/declarations/head-sub--cc96f2c7e94678ecdbf0d0d8.md) | 99 | `result-track:cc96f2c7e94678ecdbf0d0d855676ef8d9fd4a96fb9359a8875339aa9f7ff834` |
| 18 | `lemma` | [tail_sub](../../../../../mathematics/Algebra/GroupTheory/Tuple/Variant86ce5e507728ac88e86f15ba0fc52aa5fe3b48a2248af499116633f16500558d.lean/declarations/tail-sub--0c8272daeed01324494b70a6.md) | 101 | `result-track:0c8272daeed01324494b70a69733ea03b30ef7ac411dfe5dfc4c8b6f9bb01b14` |
| 19 | `lemma` | [zero_empty](../../../../../mathematics/Algebra/GroupTheory/Tuple/Variant86ce5e507728ac88e86f15ba0fc52aa5fe3b48a2248af499116633f16500558d.lean/declarations/zero-empty--254292b47a8a580473ca9ddc.md) | 108 | `result-track:254292b47a8a580473ca9ddceef8ea5d4c98c643d0584bf06482168e2c3c1242` |
| 20 | `lemma` | [cons_zero_zero](../../../../../mathematics/Algebra/GroupTheory/Tuple/Variant86ce5e507728ac88e86f15ba0fc52aa5fe3b48a2248af499116633f16500558d.lean/declarations/cons-zero-zero--01b423871ebb228a0c6218a7.md) | 110 | `result-track:01b423871ebb228a0c6218a7b62dc48ed33e1c0d9339e4a12bb9e23c95939b47` |
| 21 | `lemma` | [head_zero](../../../../../mathematics/Algebra/GroupTheory/Tuple/Variant86ce5e507728ac88e86f15ba0fc52aa5fe3b48a2248af499116633f16500558d.lean/declarations/head-zero--7a110eee081e8432caf1d654.md) | 113 | `result-track:7a110eee081e8432caf1d6541bba9a5264d78899e6fa19072501ecc2cb9ddbed` |
| 22 | `lemma` | [tail_zero](../../../../../mathematics/Algebra/GroupTheory/Tuple/Variant86ce5e507728ac88e86f15ba0fc52aa5fe3b48a2248af499116633f16500558d.lean/declarations/tail-zero--a49c1eb0e714a08aee5cda16.md) | 115 | `result-track:a49c1eb0e714a08aee5cda169d2f712b63891647a831416dc62cae61030674f3` |
| 23 | `lemma` | [cons_eq_zero_iff](../../../../../mathematics/Algebra/GroupTheory/Tuple/Variant86ce5e507728ac88e86f15ba0fc52aa5fe3b48a2248af499116633f16500558d.lean/declarations/cons-eq-zero-iff--d5885fc5159c524ae257d1cc.md) | 117 | `result-track:d5885fc5159c524ae257d1cc8d02644dd4fb507ff16f1ee49a62c15fdd7ce1c4` |
| 24 | `lemma` | [cons_nonzero_iff](../../../../../mathematics/Algebra/GroupTheory/Tuple/Variant86ce5e507728ac88e86f15ba0fc52aa5fe3b48a2248af499116633f16500558d.lean/declarations/cons-nonzero-iff--ed938c4a93f8cc3d5aad7ee2.md) | 121 | `result-track:ed938c4a93f8cc3d5aad7ee2ec33e1d7066cdef588e90cfeb1db39c0cd61a939` |
| 25 | `lemma` | [neg_empty](../../../../../mathematics/Algebra/GroupTheory/Tuple/Variant86ce5e507728ac88e86f15ba0fc52aa5fe3b48a2248af499116633f16500558d.lean/declarations/neg-empty--395c2ea97912d69537a2c4a0.md) | 130 | `result-track:395c2ea97912d69537a2c4a09dddf7887dabbb23fafd0bb311d928ae2890756d` |
| 26 | `lemma` | [neg_cons](../../../../../mathematics/Algebra/GroupTheory/Tuple/Variant86ce5e507728ac88e86f15ba0fc52aa5fe3b48a2248af499116633f16500558d.lean/declarations/neg-cons--33ff05cb441ec3a9ca7c9071.md) | 132 | `result-track:33ff05cb441ec3a9ca7c90719f3a927f5a4dd7dc7408819940e0f5b4238c3e85` |
| 27 | `lemma` | [head_neg](../../../../../mathematics/Algebra/GroupTheory/Tuple/Variant86ce5e507728ac88e86f15ba0fc52aa5fe3b48a2248af499116633f16500558d.lean/declarations/head-neg--6b600f71855dea1ac29c2ef7.md) | 135 | `result-track:6b600f71855dea1ac29c2ef7b37ef0fec16e5fa6202b7e9b36c64e0d172c8558` |
| 28 | `lemma` | [tail_neg](../../../../../mathematics/Algebra/GroupTheory/Tuple/Variant86ce5e507728ac88e86f15ba0fc52aa5fe3b48a2248af499116633f16500558d.lean/declarations/tail-neg--086260fbf6a855583aea3e25.md) | 137 | `result-track:086260fbf6a855583aea3e259c0669a6fee8a5dd4576aa22e2a935f16a8ef661` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
