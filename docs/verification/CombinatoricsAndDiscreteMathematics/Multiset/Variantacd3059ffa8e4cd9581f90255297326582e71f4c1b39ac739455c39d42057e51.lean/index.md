# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Multiset.Variantacd3059ffa8e4cd9581f90255297326582e71f4c1b39ac739455c39d42057e51

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8dbcf2884058a5706afa885c3a12f1008c3adb8d",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Multiset/Variantacd3059ffa8e4cd9581f90255297326582e71f4c1b39ac739455c39d42057e51.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variantacd3059ffa8e4cd9581f90255297326582e71f4c1b39ac739455c39d42057e51.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variantacd3059ffa8e4cd9581f90255297326582e71f4c1b39ac739455c39d42057e51.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8dbcf2884058a5706afa885c3a12f1008c3adb8d`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Multiset/Variantacd3059ffa8e4cd9581f90255297326582e71f4c1b39ac739455c39d42057e51.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Multiset/Variantacd3059ffa8e4cd9581f90255297326582e71f4c1b39ac739455c39d42057e51.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.DFinsupp.BigOperators` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.DFinsupp.Order` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [addZeroClass'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variantacd3059ffa8e4cd9581f90255297326582e71f4c1b39ac739455c39d42057e51.lean/declarations/addzeroclass--71b5a317f91c7945e82e0e5b.md) | 23 | `declaration-track:71b5a317f91c7945e82e0e5b6bf6fd628d528f9ef9b5ee951dcb05af7976c859` |
| 2 | `def` | [toMultiset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variantacd3059ffa8e4cd9581f90255297326582e71f4c1b39ac739455c39d42057e51.lean/declarations/tomultiset--19f21fc7b7f27676a3961dfd.md) | 29 | `declaration-track:19f21fc7b7f27676a3961dfd6f0279a98be15b0aefeda07f9528bdd4fa5d18e3` |
| 3 | `theorem` | [toMultiset_single](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variantacd3059ffa8e4cd9581f90255297326582e71f4c1b39ac739455c39d42057e51.lean/declarations/tomultiset-single--dce1185b92bc75d1f8792ddd.md) | 33 | `result-track:dce1185b92bc75d1f8792ddd84dabb93e132c7ef0ce65cffdec24aed6c2dd020` |
| 4 | `def` | [toDFinsupp](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variantacd3059ffa8e4cd9581f90255297326582e71f4c1b39ac739455c39d42057e51.lean/declarations/todfinsupp--45f4d4049c978ed95535236a.md) | 44 | `declaration-track:45f4d4049c978ed95535236a72a779f5f9be081276375531b945eeec569b60b9` |
| 5 | `theorem` | [toDFinsupp_apply](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variantacd3059ffa8e4cd9581f90255297326582e71f4c1b39ac739455c39d42057e51.lean/declarations/todfinsupp-apply--d487056f660c39071a79e578.md) | 52 | `result-track:d487056f660c39071a79e5782c2723e073df310f59f2b2afa330d70831a623d3` |
| 6 | `theorem` | [toDFinsupp_support](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variantacd3059ffa8e4cd9581f90255297326582e71f4c1b39ac739455c39d42057e51.lean/declarations/todfinsupp-support--53b5df8aefb9dae7452f9230.md) | 56 | `result-track:53b5df8aefb9dae7452f923035d984b3957708df1fb36a5d32c09a87e7cc6476` |
| 7 | `theorem` | [toDFinsupp_replicate](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variantacd3059ffa8e4cd9581f90255297326582e71f4c1b39ac739455c39d42057e51.lean/declarations/todfinsupp-replicate--7a89fe355811a8e870bc50bc.md) | 60 | `result-track:7a89fe355811a8e870bc50bcdf1b3f87287cc0735023dfffa8db403062b5efd4` |
| 8 | `theorem` | [toDFinsupp_singleton](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variantacd3059ffa8e4cd9581f90255297326582e71f4c1b39ac739455c39d42057e51.lean/declarations/todfinsupp-singleton--0129edba1935e518155ff5dd.md) | 67 | `result-track:0129edba1935e518155ff5dd697e44f3d1079abf41112c2162ad04e6d896cc65` |
| 9 | `def` | [equivDFinsupp](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variantacd3059ffa8e4cd9581f90255297326582e71f4c1b39ac739455c39d42057e51.lean/declarations/equivdfinsupp--42ced61052796ab2a9bc7e0b.md) | 72 | `declaration-track:42ced61052796ab2a9bc7e0bdcc87b6014eedf18c7ee0eb04e623473fb1f05b0` |
| 10 | `theorem` | [toDFinsupp_toMultiset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variantacd3059ffa8e4cd9581f90255297326582e71f4c1b39ac739455c39d42057e51.lean/declarations/todfinsupp-tomultiset--fc01199198eab70267e8684e.md) | 76 | `result-track:fc01199198eab70267e8684efa656fc241b92c6f0c5ea4425366c74cf3baca2e` |
| 11 | `theorem` | [toDFinsupp_injective](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variantacd3059ffa8e4cd9581f90255297326582e71f4c1b39ac739455c39d42057e51.lean/declarations/todfinsupp-injective--6da7baa881e9689b4d8019a4.md) | 79 | `result-track:6da7baa881e9689b4d8019a4b9a83d1ef8112720cad8d88af3f1f3e30172e563` |
| 12 | `theorem` | [toDFinsupp_inj](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variantacd3059ffa8e4cd9581f90255297326582e71f4c1b39ac739455c39d42057e51.lean/declarations/todfinsupp-inj--4aad6ce08fe3d5a756d7b13c.md) | 83 | `result-track:4aad6ce08fe3d5a756d7b13c8960479044286e3dfa9d16f0fc248aaab6cd39c7` |
| 13 | `theorem` | [toDFinsupp_le_toDFinsupp](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variantacd3059ffa8e4cd9581f90255297326582e71f4c1b39ac739455c39d42057e51.lean/declarations/todfinsupp-le-todfinsupp--701288adb4f6026df0311db6.md) | 87 | `result-track:701288adb4f6026df0311db6d69aaf344e9e7d663a00622f4a92272f83d33d73` |
| 14 | `theorem` | [toDFinsupp_lt_toDFinsupp](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variantacd3059ffa8e4cd9581f90255297326582e71f4c1b39ac739455c39d42057e51.lean/declarations/todfinsupp-lt-todfinsupp--8dbe1e0146f5470f573cc82d.md) | 91 | `result-track:8dbe1e0146f5470f573cc82d847da76d21cb130a5bfeda1e4eed5f402075ad91` |
| 15 | `theorem` | [toDFinsupp_inter](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variantacd3059ffa8e4cd9581f90255297326582e71f4c1b39ac739455c39d42057e51.lean/declarations/todfinsupp-inter--50541b0f16c2b585663aaee7.md) | 95 | `result-track:50541b0f16c2b585663aaee74252aa547266622f18fbe13d93d11f603e413f7c` |
| 16 | `theorem` | [toDFinsupp_union](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variantacd3059ffa8e4cd9581f90255297326582e71f4c1b39ac739455c39d42057e51.lean/declarations/todfinsupp-union--a0721b11b2c71bd057103d0f.md) | 99 | `result-track:a0721b11b2c71bd057103d0fce289807cf9be4375c423f7d58822a8b9eb2b6d8` |
| 17 | `theorem` | [toMultiset_toDFinsupp](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variantacd3059ffa8e4cd9581f90255297326582e71f4c1b39ac739455c39d42057e51.lean/declarations/tomultiset-todfinsupp--835271c148978d9eec6ad626.md) | 110 | `result-track:835271c148978d9eec6ad6265aa2c878cf1ab313930db40dc43d96eee0bb3ab7` |
| 18 | `theorem` | [toMultiset_injective](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variantacd3059ffa8e4cd9581f90255297326582e71f4c1b39ac739455c39d42057e51.lean/declarations/tomultiset-injective--c17b936256d57d00bc405351.md) | 114 | `result-track:c17b936256d57d00bc405351ece3b3ff53c25a0849d0a8d6a03c7d92c218a3eb` |
| 19 | `theorem` | [toMultiset_inj](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variantacd3059ffa8e4cd9581f90255297326582e71f4c1b39ac739455c39d42057e51.lean/declarations/tomultiset-inj--b294abb59593ed41c490c29d.md) | 118 | `result-track:b294abb59593ed41c490c29d86302b7c07efaecb1a920a36c391908f7cfb92c4` |
| 20 | `theorem` | [toMultiset_le_toMultiset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variantacd3059ffa8e4cd9581f90255297326582e71f4c1b39ac739455c39d42057e51.lean/declarations/tomultiset-le-tomultiset--98c4fa6d06e0103d02c4aa2d.md) | 122 | `result-track:98c4fa6d06e0103d02c4aa2de1021a0aebcf2d1db747925ea6fcb00e2b183558` |
| 21 | `theorem` | [toMultiset_lt_toMultiset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variantacd3059ffa8e4cd9581f90255297326582e71f4c1b39ac739455c39d42057e51.lean/declarations/tomultiset-lt-tomultiset--3c43e4f36f5990b347d04830.md) | 126 | `result-track:3c43e4f36f5990b347d048302da14efa4bc7f1cbaa41c96b9d96544f46f4c01e` |
| 22 | `theorem` | [toMultiset_inf](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variantacd3059ffa8e4cd9581f90255297326582e71f4c1b39ac739455c39d42057e51.lean/declarations/tomultiset-inf--a8031f5fc9d47fb513993fe6.md) | 132 | `result-track:a8031f5fc9d47fb513993fe68e1a133d46aa4708619bf8d6adc2e371539a4856` |
| 23 | `theorem` | [toMultiset_sup](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variantacd3059ffa8e4cd9581f90255297326582e71f4c1b39ac739455c39d42057e51.lean/declarations/tomultiset-sup--ff9214f5fe4de96658395231.md) | 136 | `result-track:ff9214f5fe4de966583952318905dbf173980e5cabbfe607407d600952be4bf2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
