# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Functor.Variant2c0a52fae807002b2ada18bd7ec72071e258b7e4bf6042fc213cb02bd380cc67

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "303b2cbc5eea0eee3dfe7c4a9e53e422c90ebc65",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Functor/Variant2c0a52fae807002b2ada18bd7ec72071e258b7e4bf6042fc213cb02bd380cc67.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Functor/Variant2c0a52fae807002b2ada18bd7ec72071e258b7e4bf6042fc213cb02bd380cc67.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Functor/Variant2c0a52fae807002b2ada18bd7ec72071e258b7e4bf6042fc213cb02bd380cc67.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `303b2cbc5eea0eee3dfe7c4a9e53e422c90ebc65`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Functor/Variant2c0a52fae807002b2ada18bd7ec72071e258b7e4bf6042fc213cb02bd380cc67.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Functor/Variant2c0a52fae807002b2ada18bd7ec72071e258b7e4bf6042fc213cb02bd380cc67.lean.json)

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
| 1 | `instance` | [functor](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Functor/Variant2c0a52fae807002b2ada18bd7ec72071e258b7e4bf6042fc213cb02bd380cc67.lean/declarations/functor--da369781a62231c5518a7074.md) | 42 | `declaration-track:da369781a62231c5518a707494cb97fa364d0db34712c1a8c17cd2be81e597dd` |
| 2 | `instance` | [lawfulFunctor](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Functor/Variant2c0a52fae807002b2ada18bd7ec72071e258b7e4bf6042fc213cb02bd380cc67.lean/declarations/lawfulfunctor--de92ed4f35c8b86a639894df.md) | 44 | `declaration-track:de92ed4f35c8b86a639894df32586e601fd4d44e0496049665708bdbfb857c51` |
| 3 | `theorem` | [fmap_def](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Functor/Variant2c0a52fae807002b2ada18bd7ec72071e258b7e4bf6042fc213cb02bd380cc67.lean/declarations/fmap-def--b47fd11cd2953659e5bbb682.md) | 50 | `result-track:b47fd11cd2953659e5bbb682790e541fb186a2ee23632caf17516394a1406b5f` |
| 4 | `instance` | [pure](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Functor/Variant2c0a52fae807002b2ada18bd7ec72071e258b7e4bf6042fc213cb02bd380cc67.lean/declarations/pure--fb05403a14c1ab84e56ee9b2.md) | 57 | `declaration-track:fb05403a14c1ab84e56ee9b2735d394419dff70b58cb933c2a3d9cc9f43db3ce` |
| 5 | `theorem` | [pure_def](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Functor/Variant2c0a52fae807002b2ada18bd7ec72071e258b7e4bf6042fc213cb02bd380cc67.lean/declarations/pure-def--40eaa7dde006d130d6aea426.md) | 61 | `result-track:40eaa7dde006d130d6aea426ec54f15c460936b298001dfe6339cfcbfa390025` |
| 6 | `instance` | [applicative](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Functor/Variant2c0a52fae807002b2ada18bd7ec72071e258b7e4bf6042fc213cb02bd380cc67.lean/declarations/applicative--4727404eb4994d0c895ff3a7.md) | 70 | `declaration-track:4727404eb4994d0c895ff3a75dd1c22705176895740369b5442346adaa2cc8e9` |
| 7 | `theorem` | [seq_def](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Functor/Variant2c0a52fae807002b2ada18bd7ec72071e258b7e4bf6042fc213cb02bd380cc67.lean/declarations/seq-def--d29fdb1a9f5151b079ea8a92.md) | 77 | `result-track:d29fdb1a9f5151b079ea8a9262a2928cbab0b7361b35d71481d0733b885e6602` |
| 8 | `theorem` | [seqLeft_def](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Functor/Variant2c0a52fae807002b2ada18bd7ec72071e258b7e4bf6042fc213cb02bd380cc67.lean/declarations/seqleft-def--05a42814162b8966a7639a27.md) | 81 | `result-track:05a42814162b8966a7639a2711c408c1f08c0b713295c3ab77cd4773c1b7b820` |
| 9 | `theorem` | [seqRight_def](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Functor/Variant2c0a52fae807002b2ada18bd7ec72071e258b7e4bf6042fc213cb02bd380cc67.lean/declarations/seqright-def--619182df62010008f8104e74.md) | 85 | `result-track:619182df62010008f8104e742e6e7ac991e37bf8f51cbbe28f7c704b62493262` |
| 10 | `theorem` | [image₂_def](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Functor/Variant2c0a52fae807002b2ada18bd7ec72071e258b7e4bf6042fc213cb02bd380cc67.lean/declarations/image-def--82a6817e3b00fe7b38a5ada3.md) | 90 | `result-track:82a6817e3b00fe7b38a5ada3a1c578bea789710dae89877f0eadba8a29410f50` |
| 11 | `instance` | [lawfulApplicative](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Functor/Variant2c0a52fae807002b2ada18bd7ec72071e258b7e4bf6042fc213cb02bd380cc67.lean/declarations/lawfulapplicative--fd48c6c87626eeeafea37778.md) | 95 | `declaration-track:fd48c6c87626eeeafea37778dbf60942e52f7950a13b4568cca4d7571bf29e22` |
| 12 | `instance` | [commApplicative](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Functor/Variant2c0a52fae807002b2ada18bd7ec72071e258b7e4bf6042fc213cb02bd380cc67.lean/declarations/commapplicative--4ea2fbfa2a10c91c1c857eee.md) | 135 | `declaration-track:4ea2fbfa2a10c91c1c857eeecc25f4db6d552fd067cc3061c9d678e5a653a84f` |
| 13 | `instance` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Functor/Variant2c0a52fae807002b2ada18bd7ec72071e258b7e4bf6042fc213cb02bd380cc67.lean/declarations/instance--53dd244b059a1fdbfb8d1e37.md) | 152 | `declaration-track:53dd244b059a1fdbfb8d1e37065ff28d4c19f035d41a515af8ae788048c37a46` |
| 14 | `theorem` | [bind_def](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Functor/Variant2c0a52fae807002b2ada18bd7ec72071e258b7e4bf6042fc213cb02bd380cc67.lean/declarations/bind-def--1b811982ae5cef3968844241.md) | 156 | `result-track:1b811982ae5cef39688442418891e585d8d4fee64530e57b76b7b46919249c3b` |
| 15 | `instance` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Functor/Variant2c0a52fae807002b2ada18bd7ec72071e258b7e4bf6042fc213cb02bd380cc67.lean/declarations/instance--8b00a02c7c8f0c26c033c966.md) | 159 | `declaration-track:8b00a02c7c8f0c26c033c9660b1739332934ac96a2e39aa0896c351c524a9610` |
| 16 | `instance` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Functor/Variant2c0a52fae807002b2ada18bd7ec72071e258b7e4bf6042fc213cb02bd380cc67.lean/declarations/instance--249e0a13473bdb0fa1c08d7d.md) | 175 | `declaration-track:249e0a13473bdb0fa1c08d7df445dfa18c520f1b974db94972e2cfe003949997` |
| 17 | `instance` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Functor/Variant2c0a52fae807002b2ada18bd7ec72071e258b7e4bf6042fc213cb02bd380cc67.lean/declarations/instance--1941b35945d7078b5e5bf720.md) | 179 | `declaration-track:1941b35945d7078b5e5bf720d41b8a94f4599036982e6639434346ad7ab4bd07` |
| 18 | `def` | [traverse](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Functor/Variant2c0a52fae807002b2ada18bd7ec72071e258b7e4bf6042fc213cb02bd380cc67.lean/declarations/traverse--9d12bca52cfc5cf2c4cec735.md) | 198 | `declaration-track:9d12bca52cfc5cf2c4cec735cef78df91c8980321a24a67bae640406a1902bbd` |
| 19 | `theorem` | [id_traverse](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Functor/Variant2c0a52fae807002b2ada18bd7ec72071e258b7e4bf6042fc213cb02bd380cc67.lean/declarations/id-traverse--e79a2a912477fd63e1cbd609.md) | 202 | `result-track:e79a2a912477fd63e1cbd60908e704580f3256ae99ebb51e0fe38b952344e7a1` |
| 20 | `theorem` | [map_comp_coe](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Functor/Variant2c0a52fae807002b2ada18bd7ec72071e258b7e4bf6042fc213cb02bd380cc67.lean/declarations/map-comp-coe--90c47ca743a9faa0c5044bcf.md) | 208 | `result-track:90c47ca743a9faa0c5044bcf426926ecf387d6a639fddc4df75b9512fc8d04e6` |
| 21 | `theorem` | [map_comp_coe_apply](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Functor/Variant2c0a52fae807002b2ada18bd7ec72071e258b7e4bf6042fc213cb02bd380cc67.lean/declarations/map-comp-coe-apply--8cfecce66eeda269a9f7e53e.md) | 214 | `result-track:8cfecce66eeda269a9f7e53eadfa41305e70f609f62d0b8ad1186db3cbbcef53` |
| 22 | `theorem` | [map_traverse](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Functor/Variant2c0a52fae807002b2ada18bd7ec72071e258b7e4bf6042fc213cb02bd380cc67.lean/declarations/map-traverse--dc8be078b5f7982f1e2fd48c.md) | 219 | `result-track:dc8be078b5f7982f1e2fd48c18e9ce5f24678fa25c24804fd89ed73bc01538ad` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
