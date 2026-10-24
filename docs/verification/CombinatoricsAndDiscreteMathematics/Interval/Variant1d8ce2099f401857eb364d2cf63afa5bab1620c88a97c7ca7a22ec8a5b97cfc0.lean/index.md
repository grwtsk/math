# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Interval.Variant1d8ce2099f401857eb364d2cf63afa5bab1620c88a97c7ca7a22ec8a5b97cfc0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "eab21e2b4c0dae6bc6ead6a2223d7509d93a1f9b",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Interval/Variant1d8ce2099f401857eb364d2cf63afa5bab1620c88a97c7ca7a22ec8a5b97cfc0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant1d8ce2099f401857eb364d2cf63afa5bab1620c88a97c7ca7a22ec8a5b97cfc0.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant1d8ce2099f401857eb364d2cf63afa5bab1620c88a97c7ca7a22ec8a5b97cfc0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `eab21e2b4c0dae6bc6ead6a2223d7509d93a1f9b`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Interval/Variant1d8ce2099f401857eb364d2cf63afa5bab1620c88a97c7ca7a22ec8a5b97cfc0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Interval/Variant1d8ce2099f401857eb364d2cf63afa5bab1620c88a97c7ca7a22ec8a5b97cfc0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [instLocallyFiniteOrder](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant1d8ce2099f401857eb364d2cf63afa5bab1620c88a97c7ca7a22ec8a5b97cfc0.lean/declarations/instlocallyfiniteorder--fb2147d6178966dc40c80eb5.md) | 35 | `declaration-track:fb2147d6178966dc40c80eb57db2981a3e466a494d6ea90d61b5af800efb4f58` |
| 2 | `theorem` | [Icc_eq_finset_subtype](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant1d8ce2099f401857eb364d2cf63afa5bab1620c88a97c7ca7a22ec8a5b97cfc0.lean/declarations/icc-eq-finset-subtype--80f780844613ac452e2da629.md) | 38 | `result-track:80f780844613ac452e2da629601281c1f9280440f249471798b23417143e5a4e` |
| 3 | `theorem` | [Ico_eq_finset_subtype](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant1d8ce2099f401857eb364d2cf63afa5bab1620c88a97c7ca7a22ec8a5b97cfc0.lean/declarations/ico-eq-finset-subtype--027f73f657e3ec3b50f5de28.md) | 41 | `result-track:027f73f657e3ec3b50f5de281dc66a24d7966bdda9e35ddf6f938ad9aee47f79` |
| 4 | `theorem` | [Ioc_eq_finset_subtype](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant1d8ce2099f401857eb364d2cf63afa5bab1620c88a97c7ca7a22ec8a5b97cfc0.lean/declarations/ioc-eq-finset-subtype--4b205770a1c4e622b4a4c403.md) | 44 | `result-track:4b205770a1c4e622b4a4c4038ceb3204475f825a5db57d704bc4cf21b7d52297` |
| 5 | `theorem` | [Ioo_eq_finset_subtype](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant1d8ce2099f401857eb364d2cf63afa5bab1620c88a97c7ca7a22ec8a5b97cfc0.lean/declarations/ioo-eq-finset-subtype--6cb035a9c0230c8692b7d70d.md) | 47 | `result-track:6cb035a9c0230c8692b7d70d9f819a6480af74b172eee958b07e288ed9c0244b` |
| 6 | `theorem` | [uIcc_eq_finset_subtype](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant1d8ce2099f401857eb364d2cf63afa5bab1620c88a97c7ca7a22ec8a5b97cfc0.lean/declarations/uicc-eq-finset-subtype--685b2998f649665aeb4a3373.md) | 50 | `result-track:685b2998f649665aeb4a3373c55a126335cbad256d965bbfaee2dfc81249473b` |
| 7 | `theorem` | [map_subtype_embedding_Icc](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant1d8ce2099f401857eb364d2cf63afa5bab1620c88a97c7ca7a22ec8a5b97cfc0.lean/declarations/map-subtype-embedding-icc--20c00f2a883d19f39a83a041.md) | 52 | `result-track:20c00f2a883d19f39a83a041693408cb3976ddebb28b097eb2d16eadea09c604` |
| 8 | `theorem` | [map_subtype_embedding_Ico](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant1d8ce2099f401857eb364d2cf63afa5bab1620c88a97c7ca7a22ec8a5b97cfc0.lean/declarations/map-subtype-embedding-ico--2f88b512ab892ac73962b818.md) | 55 | `result-track:2f88b512ab892ac73962b8188b81d18d59c0643a2beeb4a993214a4625fa7259` |
| 9 | `theorem` | [map_subtype_embedding_Ioc](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant1d8ce2099f401857eb364d2cf63afa5bab1620c88a97c7ca7a22ec8a5b97cfc0.lean/declarations/map-subtype-embedding-ioc--1aeec4eb32fa103865d6752f.md) | 58 | `result-track:1aeec4eb32fa103865d6752f848bdf8c793db14bb67ab7e7f0e8ccc193a15edb` |
| 10 | `theorem` | [map_subtype_embedding_Ioo](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant1d8ce2099f401857eb364d2cf63afa5bab1620c88a97c7ca7a22ec8a5b97cfc0.lean/declarations/map-subtype-embedding-ioo--fd574ff752c2af1ab5f06c0f.md) | 61 | `result-track:fd574ff752c2af1ab5f06c0f99d6678f7e479de5db89116f3d94db6fa64f12a5` |
| 11 | `theorem` | [map_subtype_embedding_uIcc](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant1d8ce2099f401857eb364d2cf63afa5bab1620c88a97c7ca7a22ec8a5b97cfc0.lean/declarations/map-subtype-embedding-uicc--60e98c9adcf0de6ffdbd4850.md) | 64 | `result-track:60e98c9adcf0de6ffdbd48504c7ff05ce1d2d595103a49c4c258e430ecfe5ac7` |
| 12 | `theorem` | [card_Icc](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant1d8ce2099f401857eb364d2cf63afa5bab1620c88a97c7ca7a22ec8a5b97cfc0.lean/declarations/card-icc--d4790dc0a068d90f75650090.md) | 69 | `result-track:d4790dc0a068d90f75650090b579440649d2b0b6be8388d18d46e4da49fbe739` |
| 13 | `theorem` | [card_Ico](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant1d8ce2099f401857eb364d2cf63afa5bab1620c88a97c7ca7a22ec8a5b97cfc0.lean/declarations/card-ico--1a4ef4db3e44733fb88cca9e.md) | 74 | `result-track:1a4ef4db3e44733fb88cca9eb134f28515efb5ce8769bef05531fb126ffc1f17` |
| 14 | `theorem` | [card_Ioc](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant1d8ce2099f401857eb364d2cf63afa5bab1620c88a97c7ca7a22ec8a5b97cfc0.lean/declarations/card-ioc--86c1360ed69d844470a4ea38.md) | 79 | `result-track:86c1360ed69d844470a4ea3847192de3ca4d7203147041c664d411c8433f10bb` |
| 15 | `theorem` | [card_Ioo](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant1d8ce2099f401857eb364d2cf63afa5bab1620c88a97c7ca7a22ec8a5b97cfc0.lean/declarations/card-ioo--91ff1327f80c8f508cc93d53.md) | 84 | `result-track:91ff1327f80c8f508cc93d535855ff364e7e8a82a0bcde11c652638435ab354e` |
| 16 | `theorem` | [card_uIcc](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant1d8ce2099f401857eb364d2cf63afa5bab1620c88a97c7ca7a22ec8a5b97cfc0.lean/declarations/card-uicc--b8e38cb18ebfa4baa6c64859.md) | 89 | `result-track:b8e38cb18ebfa4baa6c64859a652c096bc2d6fc59071aebfea37b7e50bc94afc` |
| 17 | `theorem` | [card_fintype_Icc](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant1d8ce2099f401857eb364d2cf63afa5bab1620c88a97c7ca7a22ec8a5b97cfc0.lean/declarations/card-fintype-icc--6ded37ef0b90fa82edef1605.md) | 92 | `result-track:6ded37ef0b90fa82edef16056740ab5e9a8df93dd95a4afcca8101cce88d2471` |
| 18 | `theorem` | [card_fintype_Ico](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant1d8ce2099f401857eb364d2cf63afa5bab1620c88a97c7ca7a22ec8a5b97cfc0.lean/declarations/card-fintype-ico--dd846117a7b1eba7b10ea454.md) | 95 | `result-track:dd846117a7b1eba7b10ea454a6ea438eefb866400ea43e9bf6c910a9eebf55c6` |
| 19 | `theorem` | [card_fintype_Ioc](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant1d8ce2099f401857eb364d2cf63afa5bab1620c88a97c7ca7a22ec8a5b97cfc0.lean/declarations/card-fintype-ioc--95fe5dd14163c6c003c597e3.md) | 98 | `result-track:95fe5dd14163c6c003c597e37450feb700183084259063b30e4f4c3ceb65f44f` |
| 20 | `theorem` | [card_fintype_Ioo](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant1d8ce2099f401857eb364d2cf63afa5bab1620c88a97c7ca7a22ec8a5b97cfc0.lean/declarations/card-fintype-ioo--2d6a30ef9243b73fc87b6001.md) | 101 | `result-track:2d6a30ef9243b73fc87b600117d5b1dc9d7a282ce6f2a0e0eaa662aefb10afb5` |
| 21 | `theorem` | [card_fintype_uIcc](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant1d8ce2099f401857eb364d2cf63afa5bab1620c88a97c7ca7a22ec8a5b97cfc0.lean/declarations/card-fintype-uicc--8989b6174717c1c456bb00b5.md) | 105 | `result-track:8989b6174717c1c456bb00b5fdf0eed852c4849923b7349aedfb53c49dd95519` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
