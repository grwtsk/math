# Verification target: GRWTSK.Algebra.Basic.Variant1f70960f1c4c89a6cbca36e9f7a8dd7b64b86e486c76cf1da7d7f47d995808db

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "dac2480b2bdb00cab4d57cb1270278e3c5c5f742",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Basic/Variant1f70960f1c4c89a6cbca36e9f7a8dd7b64b86e486c76cf1da7d7f47d995808db.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Basic/Variant1f70960f1c4c89a6cbca36e9f7a8dd7b64b86e486c76cf1da7d7f47d995808db.lean/index.md) · [Full source](../../../../mathematics/Algebra/Basic/Variant1f70960f1c4c89a6cbca36e9f7a8dd7b64b86e486c76cf1da7d7f47d995808db.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `dac2480b2bdb00cab4d57cb1270278e3c5c5f742`.

Source path: `GRWTSK/Algebra/Basic/Variant1f70960f1c4c89a6cbca36e9f7a8dd7b64b86e486c76cf1da7d7f47d995808db.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Basic/Variant1f70960f1c4c89a6cbca36e9f7a8dd7b64b86e486c76cf1da7d7f47d995808db.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.NeZero` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Cast.Defs` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fin.Rev` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [addCommSemigroup](../../../../mathematics/Algebra/Basic/Variant1f70960f1c4c89a6cbca36e9f7a8dd7b64b86e486c76cf1da7d7f47d995808db.lean/declarations/addcommsemigroup--04850b36d015b4a0bc403276.md) | 28 | `declaration-track:04850b36d015b4a0bc403276344846bbba97edccfa1847ce35208d67e9b76ee2` |
| 2 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variant1f70960f1c4c89a6cbca36e9f7a8dd7b64b86e486c76cf1da7d7f47d995808db.lean/declarations/instance--8a7dcb5e981149581d8326ee.md) | 32 | `declaration-track:8a7dcb5e981149581d8326eec6dbecfb195aeb3434cce8940a3395de6dee31e1` |
| 3 | `instance` | [addCommMonoid](../../../../mathematics/Algebra/Basic/Variant1f70960f1c4c89a6cbca36e9f7a8dd7b64b86e486c76cf1da7d7f47d995808db.lean/declarations/addcommmonoid--c15c0d5ced3ce58448738052.md) | 36 | `declaration-track:c15c0d5ced3ce58448738052b5d8325701e6c412887512fd1f818e147bbabbe5` |
| 4 | `instance` | [instAddMonoidWithOne](../../../../mathematics/Algebra/Basic/Variant1f70960f1c4c89a6cbca36e9f7a8dd7b64b86e486c76cf1da7d7f47d995808db.lean/declarations/instaddmonoidwithone--987464ed1b4056c1df18d442.md) | 42 | `declaration-track:987464ed1b4056c1df18d4429fd15e67663b9e35e4a2eed68a1379c11c84235d` |
| 5 | `instance` | [addCommGroup](../../../../mathematics/Algebra/Basic/Variant1f70960f1c4c89a6cbca36e9f7a8dd7b64b86e486c76cf1da7d7f47d995808db.lean/declarations/addcommgroup--e6bb495fe9c418afbb510175.md) | 48 | `declaration-track:e6bb495fe9c418afbb51017577f9506114b261dd89f041856e25ee6677605609` |
| 6 | `instance` | [instInvolutiveNeg](../../../../mathematics/Algebra/Basic/Variant1f70960f1c4c89a6cbca36e9f7a8dd7b64b86e486c76cf1da7d7f47d995808db.lean/declarations/instinvolutiveneg--8d4e2826ad7184e61fdf402e.md) | 61 | `declaration-track:8d4e2826ad7184e61fdf402e60550a9b4867013f023fcba1ecdecee2552ec7c5` |
| 7 | `instance` | [instIsCancelAdd](../../../../mathematics/Algebra/Basic/Variant1f70960f1c4c89a6cbca36e9f7a8dd7b64b86e486c76cf1da7d7f47d995808db.lean/declarations/instiscanceladd--5f59a16170791054d2739122.md) | 65 | `declaration-track:5f59a16170791054d2739122550d602cff7b7046266403519411102e5d7bd54d` |
| 8 | `instance` | [instAddLeftCancelSemigroup](../../../../mathematics/Algebra/Basic/Variant1f70960f1c4c89a6cbca36e9f7a8dd7b64b86e486c76cf1da7d7f47d995808db.lean/declarations/instaddleftcancelsemigroup--729d2bd139b4e20b22f5641e.md) | 70 | `declaration-track:729d2bd139b4e20b22f5641e9b0960923bba9425d2ce6f79e732fc67942ce4e1` |
| 9 | `instance` | [instAddRightCancelSemigroup](../../../../mathematics/Algebra/Basic/Variant1f70960f1c4c89a6cbca36e9f7a8dd7b64b86e486c76cf1da7d7f47d995808db.lean/declarations/instaddrightcancelsemigroup--259cb0438e42ed9ccf46a183.md) | 74 | `declaration-track:259cb0438e42ed9ccf46a183c01b0677e5d73a6bc341d938a30bb59437ca3792` |
| 10 | `lemma` | [coe_sub_one](../../../../mathematics/Algebra/Basic/Variant1f70960f1c4c89a6cbca36e9f7a8dd7b64b86e486c76cf1da7d7f47d995808db.lean/declarations/coe-sub-one--aa026dd6005679aed800473d.md) | 79 | `result-track:aa026dd6005679aed800473d56c3c1b3dc5001288bd2d3cd94ff7496e036a431` |
| 11 | `lemma` | [lt_sub_iff](../../../../mathematics/Algebra/Basic/Variant1f70960f1c4c89a6cbca36e9f7a8dd7b64b86e486c76cf1da7d7f47d995808db.lean/declarations/lt-sub-iff--5c5a053d635a55393d6893a7.md) | 90 | `result-track:5c5a053d635a55393d6893a7c7ecded6b71aea1949aba239c801bf29065b29d1` |
| 12 | `lemma` | [sub_le_iff](../../../../mathematics/Algebra/Basic/Variant1f70960f1c4c89a6cbca36e9f7a8dd7b64b86e486c76cf1da7d7f47d995808db.lean/declarations/sub-le-iff--666956a6ccedc229f29a6fc2.md) | 111 | `result-track:666956a6ccedc229f29a6fc2dcd896121fde0371cdb03dfc7377d3fcb57067d3` |
| 13 | `lemma` | [lt_one_iff](../../../../mathematics/Algebra/Basic/Variant1f70960f1c4c89a6cbca36e9f7a8dd7b64b86e486c76cf1da7d7f47d995808db.lean/declarations/lt-one-iff--827b63e3d97e996385bff8d7.md) | 115 | `result-track:827b63e3d97e996385bff8d70d73a2dac354035a358fa577aea9276e1d1551e1` |
| 14 | `lemma` | [lt_sub_one_iff](../../../../mathematics/Algebra/Basic/Variant1f70960f1c4c89a6cbca36e9f7a8dd7b64b86e486c76cf1da7d7f47d995808db.lean/declarations/lt-sub-one-iff--4f00af85c2fdafb0e649a55b.md) | 118 | `result-track:4f00af85c2fdafb0e649a55b719775a24e18cb9f85be7c84242c272e24b480fd` |
| 15 | `lemma` | [le_sub_one_iff](../../../../mathematics/Algebra/Basic/Variant1f70960f1c4c89a6cbca36e9f7a8dd7b64b86e486c76cf1da7d7f47d995808db.lean/declarations/le-sub-one-iff--8bd8cdecf176bd73b35028a9.md) | 121 | `result-track:8bd8cdecf176bd73b35028a90a0b7a391df2e01440428822c940e3657f8fb580` |
| 16 | `lemma` | [sub_one_lt_iff](../../../../mathematics/Algebra/Basic/Variant1f70960f1c4c89a6cbca36e9f7a8dd7b64b86e486c76cf1da7d7f47d995808db.lean/declarations/sub-one-lt-iff--9a67c67bae3454e12b51eb9f.md) | 129 | `result-track:9a67c67bae3454e12b51eb9f6ed4ea9a3df2d6ca2b0020541dc969236b75c34f` |
| 17 | `lemma` | [neg_last](../../../../mathematics/Algebra/Basic/Variant1f70960f1c4c89a6cbca36e9f7a8dd7b64b86e486c76cf1da7d7f47d995808db.lean/declarations/neg-last--6a61729996e714651bf17e67.md) | 132 | `result-track:6a61729996e714651bf17e67a2ee62f556dca0c407a9866fe3f891fa96c7b382` |
| 18 | `lemma` | [neg_natCast_eq_one](../../../../mathematics/Algebra/Basic/Variant1f70960f1c4c89a6cbca36e9f7a8dd7b64b86e486c76cf1da7d7f47d995808db.lean/declarations/neg-natcast-eq-one--de71bad23ef28aa94c21b2db.md) | 134 | `result-track:de71bad23ef28aa94c21b2db19802cbe939d2fe662a568a9f93aa71a78fe4eb4` |
| 19 | `lemma` | [rev_add](../../../../mathematics/Algebra/Basic/Variant1f70960f1c4c89a6cbca36e9f7a8dd7b64b86e486c76cf1da7d7f47d995808db.lean/declarations/rev-add--106f9e9df3786b0ec0e5b34f.md) | 137 | `result-track:106f9e9df3786b0ec0e5b34f7bf2af53ce9dabcc580ecf40f18d63a70c4f03cd` |
| 20 | `lemma` | [rev_sub](../../../../mathematics/Algebra/Basic/Variant1f70960f1c4c89a6cbca36e9f7a8dd7b64b86e486c76cf1da7d7f47d995808db.lean/declarations/rev-sub--c7edfcb282a6a7bbd78488b3.md) | 142 | `result-track:c7edfcb282a6a7bbd78488b355028ac179ff882fda33585a506f777a3db9781c` |
| 21 | `lemma` | [add_lt_left_iff](../../../../mathematics/Algebra/Basic/Variant1f70960f1c4c89a6cbca36e9f7a8dd7b64b86e486c76cf1da7d7f47d995808db.lean/declarations/add-lt-left-iff--ae2c77c9f18b89ee5a27482d.md) | 145 | `result-track:ae2c77c9f18b89ee5a27482dcbc42956262ff159ab9ac01453dab9773ac933ca` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
