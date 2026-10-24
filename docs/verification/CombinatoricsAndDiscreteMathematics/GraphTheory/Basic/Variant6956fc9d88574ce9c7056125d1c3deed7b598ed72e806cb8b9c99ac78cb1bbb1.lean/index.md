# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.Basic.Variant6956fc9d88574ce9c7056125d1c3deed7b598ed72e806cb8b9c99ac78cb1bbb1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "62aa6b1b5c1f527423979dd43bc6b5d7b4fa2346",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Basic/Variant6956fc9d88574ce9c7056125d1c3deed7b598ed72e806cb8b9c99ac78cb1bbb1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Basic/Variant6956fc9d88574ce9c7056125d1c3deed7b598ed72e806cb8b9c99ac78cb1bbb1.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Basic/Variant6956fc9d88574ce9c7056125d1c3deed7b598ed72e806cb8b9c99ac78cb1bbb1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `62aa6b1b5c1f527423979dd43bc6b5d7b4fa2346`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Basic/Variant6956fc9d88574ce9c7056125d1c3deed7b598ed72e806cb8b9c99ac78cb1bbb1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/GraphTheory/Basic/Variant6956fc9d88574ce9c7056125d1c3deed7b598ed72e806cb8b9c99ac78cb1bbb1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [Quiver](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Basic/Variant6956fc9d88574ce9c7056125d1c3deed7b598ed72e806cb8b9c99ac78cb1bbb1.lean/declarations/quiver--487a05d79436c9a9f5a41bde.md) | 46 | `declaration-track:487a05d79436c9a9f5a41bde362330c9bf4b9e1bf9202af519a36e56a5572ccc` |
| 2 | `instance` | [opposite](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Basic/Variant6956fc9d88574ce9c7056125d1c3deed7b598ed72e806cb8b9c99ac78cb1bbb1.lean/declarations/opposite--9b0b153bd781b9f82debd73f.md) | 62 | `declaration-track:9b0b153bd781b9f82debd73f774026c69db7c0826816387ef512bc5cf4df842a` |
| 3 | `def` | [Hom.op](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Basic/Variant6956fc9d88574ce9c7056125d1c3deed7b598ed72e806cb8b9c99ac78cb1bbb1.lean/declarations/hom-op--fb26c7154383c01890cf5d7a.md) | 67 | `declaration-track:fb26c7154383c01890cf5d7a19cdf6bd2ef743e92084719d4b0b7c14b1f4d224` |
| 4 | `def` | [Hom.unop](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Basic/Variant6956fc9d88574ce9c7056125d1c3deed7b598ed72e806cb8b9c99ac78cb1bbb1.lean/declarations/hom-unop--efed472a68f59509a1148c0c.md) | 71 | `declaration-track:efed472a68f59509a1148c0c141899bdfdef1ee04f2898799fd5cc1497438d61` |
| 5 | `def` | [Hom.opEquiv](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Basic/Variant6956fc9d88574ce9c7056125d1c3deed7b598ed72e806cb8b9c99ac78cb1bbb1.lean/declarations/hom-opequiv--d96f461287b79748d2a52a0e.md) | 75 | `declaration-track:d96f461287b79748d2a52a0e2a3e76305a0e781f1502deb23b7e01659ec29e1c` |
| 6 | `theorem` | [Hom.unop_ext](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Basic/Variant6956fc9d88574ce9c7056125d1c3deed7b598ed72e806cb8b9c99ac78cb1bbb1.lean/declarations/hom-unop-ext--10339849567146c8c53070aa.md) | 82 | `result-track:10339849567146c8c53070aa1e8213f1edac64c7144ae8494f5fd62e62028acd` |
| 7 | `def` | [Empty](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Basic/Variant6956fc9d88574ce9c7056125d1c3deed7b598ed72e806cb8b9c99ac78cb1bbb1.lean/declarations/empty--d1b59b968ee76afba5d3b366.md) | 86 | `declaration-track:d1b59b968ee76afba5d3b3666d37a28e9e7fcc4eff7c872336b93ce74cd53395` |
| 8 | `instance` | [emptyQuiver](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Basic/Variant6956fc9d88574ce9c7056125d1c3deed7b598ed72e806cb8b9c99ac78cb1bbb1.lean/declarations/emptyquiver--8f1f5fdac109a396a052b026.md) | 88 | `declaration-track:8f1f5fdac109a396a052b026a10938e39c59502e5ec154b2ea6d67b87c603e6d` |
| 9 | `theorem` | [empty_arrow](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Basic/Variant6956fc9d88574ce9c7056125d1c3deed7b598ed72e806cb8b9c99ac78cb1bbb1.lean/declarations/empty-arrow--fd9798e1e1b1611b7dc08f25.md) | 91 | `result-track:fd9798e1e1b1611b7dc08f25f2507078961d075e6940bf0c259017cda011251c` |
| 10 | `abbrev` | [IsThin](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Basic/Variant6956fc9d88574ce9c7056125d1c3deed7b598ed72e806cb8b9c99ac78cb1bbb1.lean/declarations/isthin--14f79b262a129805ecbcb7c8.md) | 94 | `declaration-track:14f79b262a129805ecbcb7c8b530ab6e9a56a2889f9d1ef7092b14805cd5e113` |
| 11 | `def` | [homOfEq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Basic/Variant6956fc9d88574ce9c7056125d1c3deed7b598ed72e806cb8b9c99ac78cb1bbb1.lean/declarations/homofeq--d966ab5dbc992c2f654931ff.md) | 106 | `declaration-track:d966ab5dbc992c2f654931ff3010848bb65e18140d6c6559db07f0a5bd0f8ec5` |
| 12 | `lemma` | [homOfEq_trans](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Basic/Variant6956fc9d88574ce9c7056125d1c3deed7b598ed72e806cb8b9c99ac78cb1bbb1.lean/declarations/homofeq-trans--c4e9bcff913516aa4c0df23e.md) | 111 | `result-track:c4e9bcff913516aa4c0df23eaae6bd18c8bebfbb5f9dede8931ad092d2dfb5c7` |
| 13 | `lemma` | [homOfEq_injective](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Basic/Variant6956fc9d88574ce9c7056125d1c3deed7b598ed72e806cb8b9c99ac78cb1bbb1.lean/declarations/homofeq-injective--0625f514f3e2135a6d732f68.md) | 118 | `result-track:0625f514f3e2135a6d732f689a29e2be2e9727ec7b0e95ecdb1deed095f90203` |
| 14 | `lemma` | [homOfEq_rfl](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Basic/Variant6956fc9d88574ce9c7056125d1c3deed7b598ed72e806cb8b9c99ac78cb1bbb1.lean/declarations/homofeq-rfl--baec87b61e2e1c176d74dc20.md) | 124 | `result-track:baec87b61e2e1c176d74dc20814f715de84c868694cc366280b3d432984dabb0` |
| 15 | `lemma` | [heq_of_homOfEq_ext](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Basic/Variant6956fc9d88574ce9c7056125d1c3deed7b598ed72e806cb8b9c99ac78cb1bbb1.lean/declarations/heq-of-homofeq-ext--573efcaedd9002bb52d85b1c.md) | 127 | `result-track:573efcaedd9002bb52d85b1cf24e18d631009d0fe1fad511206881938d9fccce` |
| 16 | `lemma` | [homOfEq_eq_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Basic/Variant6956fc9d88574ce9c7056125d1c3deed7b598ed72e806cb8b9c99ac78cb1bbb1.lean/declarations/homofeq-eq-iff--70bf14e32c504c69b2d43347.md) | 134 | `result-track:70bf14e32c504c69b2d4334736349cd328347dd94e6ea63887c2a72ce2c7c56b` |
| 17 | `lemma` | [eq_homOfEq_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Basic/Variant6956fc9d88574ce9c7056125d1c3deed7b598ed72e806cb8b9c99ac78cb1bbb1.lean/declarations/eq-homofeq-iff--7a96f1199f1355ce8c1f8b2c.md) | 139 | `result-track:7a96f1199f1355ce8c1f8b2c47ed480ff55ea1f86d8b6f1efc820dc80909d343` |
| 18 | `lemma` | [homOfEq_heq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Basic/Variant6956fc9d88574ce9c7056125d1c3deed7b598ed72e806cb8b9c99ac78cb1bbb1.lean/declarations/homofeq-heq--11da416b222f2371660d756e.md) | 144 | `result-track:11da416b222f2371660d756e1ec29cef656030c9b02bd631400f21ff92b0e4cc` |
| 19 | `lemma` | [homOfEq_heq_left_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Basic/Variant6956fc9d88574ce9c7056125d1c3deed7b598ed72e806cb8b9c99ac78cb1bbb1.lean/declarations/homofeq-heq-left-iff--315bea9fe28b3ad0e9e7671b.md) | 148 | `result-track:315bea9fe28b3ad0e9e7671b47f9630104e9d6f3a1af230194e5a7e5848c60f2` |
| 20 | `lemma` | [homOfEq_heq_right_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Basic/Variant6956fc9d88574ce9c7056125d1c3deed7b598ed72e806cb8b9c99ac78cb1bbb1.lean/declarations/homofeq-heq-right-iff--1a14687616c16ec21eabdb63.md) | 153 | `result-track:1a14687616c16ec21eabdb6391021ee68b0ead36d0d9d2a36c93534ae0cb3cf0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
