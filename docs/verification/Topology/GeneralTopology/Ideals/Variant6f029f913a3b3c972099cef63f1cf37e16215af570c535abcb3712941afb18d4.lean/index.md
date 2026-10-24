# Verification target: GRWTSK.Topology.GeneralTopology.Ideals.Variant6f029f913a3b3c972099cef63f1cf37e16215af570c535abcb3712941afb18d4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3a82c1178597718c1111c380bcdf28d328897e81",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Ideals/Variant6f029f913a3b3c972099cef63f1cf37e16215af570c535abcb3712941afb18d4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Ideals/Variant6f029f913a3b3c972099cef63f1cf37e16215af570c535abcb3712941afb18d4.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Ideals/Variant6f029f913a3b3c972099cef63f1cf37e16215af570c535abcb3712941afb18d4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3a82c1178597718c1111c380bcdf28d328897e81`.

Source path: `GRWTSK/Topology/GeneralTopology/Ideals/Variant6f029f913a3b3c972099cef63f1cf37e16215af570c535abcb3712941afb18d4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Ideals/Variant6f029f913a3b3c972099cef63f1cf37e16215af570c535abcb3712941afb18d4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Algebra.Algebra` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.ContinuousMap.Compact` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.UrysohnsLemma` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.RCLike.Basic` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Ring.Units` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Module.CharacterSpace` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [idealOfSet](../../../../../mathematics/Topology/GeneralTopology/Ideals/Variant6f029f913a3b3c972099cef63f1cf37e16215af570c535abcb3712941afb18d4.lean/declarations/idealofset--7c1ad26098dfe6745177f0c7.md) | 93 | `declaration-track:7c1ad26098dfe6745177f0c7e17e0733ef3b7364fbf8c8fc4a98d2ed62528c0a` |
| 2 | `theorem` | [idealOfSet_closed](../../../../../mathematics/Topology/GeneralTopology/Ideals/Variant6f029f913a3b3c972099cef63f1cf37e16215af570c535abcb3712941afb18d4.lean/declarations/idealofset-closed--eead5da1676adb14d8640560.md) | 99 | `result-track:eead5da1676adb14d8640560673601069705555883c40b9e1ecbf27bc05363d9` |
| 3 | `theorem` | [mem_idealOfSet](../../../../../mathematics/Topology/GeneralTopology/Ideals/Variant6f029f913a3b3c972099cef63f1cf37e16215af570c535abcb3712941afb18d4.lean/declarations/mem-idealofset--1232ec43ab2ac87242785ee1.md) | 107 | `result-track:1232ec43ab2ac87242785ee1a58dd46abfee163c313e5ed702e98e95d88dc171` |
| 4 | `theorem` | [notMem_idealOfSet](../../../../../mathematics/Topology/GeneralTopology/Ideals/Variant6f029f913a3b3c972099cef63f1cf37e16215af570c535abcb3712941afb18d4.lean/declarations/notmem-idealofset--6ff12df2be2c9b0817015f5b.md) | 111 | `result-track:6ff12df2be2c9b0817015f5b0762a485daa2c43ecab9bd342410e460164e2cab` |
| 5 | `def` | [setOfIdeal](../../../../../mathematics/Topology/GeneralTopology/Ideals/Variant6f029f913a3b3c972099cef63f1cf37e16215af570c535abcb3712941afb18d4.lean/declarations/setofideal--8a2a841548d0b843e4cd0b76.md) | 118 | `declaration-track:8a2a841548d0b843e4cd0b76b937b3b792d86d25b34c204422828fd9414d604b` |
| 6 | `theorem` | [notMem_setOfIdeal](../../../../../mathematics/Topology/GeneralTopology/Ideals/Variant6f029f913a3b3c972099cef63f1cf37e16215af570c535abcb3712941afb18d4.lean/declarations/notmem-setofideal--349c71472a62cb656140ffa7.md) | 121 | `result-track:349c71472a62cb656140ffa7402901e354d100c46a675ab3acac84ab28b20c91` |
| 7 | `theorem` | [mem_setOfIdeal](../../../../../mathematics/Topology/GeneralTopology/Ideals/Variant6f029f913a3b3c972099cef63f1cf37e16215af570c535abcb3712941afb18d4.lean/declarations/mem-setofideal--25661e6a50a03e530ba94b33.md) | 127 | `result-track:25661e6a50a03e530ba94b33cf8d2c433a800cc9878761a89a4dd76d068b4492` |
| 8 | `theorem` | [setOfIdeal_open](../../../../../mathematics/Topology/GeneralTopology/Ideals/Variant6f029f913a3b3c972099cef63f1cf37e16215af570c535abcb3712941afb18d4.lean/declarations/setofideal-open--bbe5e925c56924131f183804.md) | 131 | `result-track:bbe5e925c56924131f183804ffd3f64d0dbe7b44a2fc5d398ea61bcc2899779f` |
| 9 | `def` | [opensOfIdeal](../../../../../mathematics/Topology/GeneralTopology/Ideals/Variant6f029f913a3b3c972099cef63f1cf37e16215af570c535abcb3712941afb18d4.lean/declarations/opensofideal--ca375087e2c1ecd33d16d595.md) | 139 | `declaration-track:ca375087e2c1ecd33d16d5954891950b4c4c83c6de232534ac247665288860e2` |
| 10 | `theorem` | [setOfTop_eq_univ](../../../../../mathematics/Topology/GeneralTopology/Ideals/Variant6f029f913a3b3c972099cef63f1cf37e16215af570c535abcb3712941afb18d4.lean/declarations/setoftop-eq-univ--5cc8c4008d3e1524d6d550e7.md) | 143 | `result-track:5cc8c4008d3e1524d6d550e7c5605f6905af4ce489e2117d2978d1c45e6cab65` |
| 11 | `theorem` | [idealOfEmpty_eq_bot](../../../../../mathematics/Topology/GeneralTopology/Ideals/Variant6f029f913a3b3c972099cef63f1cf37e16215af570c535abcb3712941afb18d4.lean/declarations/idealofempty-eq-bot--5f51b7ed48dd536284af4caa.md) | 147 | `result-track:5f51b7ed48dd536284af4caa98134228d1091b599a843fb402c845b3490575ba` |
| 12 | `theorem` | [mem_idealOfSet_compl_singleton](../../../../../mathematics/Topology/GeneralTopology/Ideals/Variant6f029f913a3b3c972099cef63f1cf37e16215af570c535abcb3712941afb18d4.lean/declarations/mem-idealofset-compl-singleton--797ce0fa8459ee3c4fe18b64.md) | 153 | `result-track:797ce0fa8459ee3c4fe18b64e488ab14d5264a90d6aacd5a37515a0a607fe42a` |
| 13 | `theorem` | [ideal_gc](../../../../../mathematics/Topology/GeneralTopology/Ideals/Variant6f029f913a3b3c972099cef63f1cf37e16215af570c535abcb3712941afb18d4.lean/declarations/ideal-gc--c35efaaeeed1c1935b43a33e.md) | 159 | `result-track:c35efaaeeed1c1935b43a33ee26ee5b2a10fe331c0bfc8dcf2c4fcfdbcf8cd81` |
| 14 | `theorem` | [exists_mul_le_one_eqOn_ge](../../../../../mathematics/Topology/GeneralTopology/Ideals/Variant6f029f913a3b3c972099cef63f1cf37e16215af570c535abcb3712941afb18d4.lean/declarations/exists-mul-le-one-eqon-ge--646d8dc52259512635e0088c.md) | 178 | `result-track:646d8dc52259512635e0088ca07f2593cfb43047ee5012225cac0ab402c787fe` |
| 15 | `theorem` | [idealOfSet_ofIdeal_eq_closure](../../../../../mathematics/Topology/GeneralTopology/Ideals/Variant6f029f913a3b3c972099cef63f1cf37e16215af570c535abcb3712941afb18d4.lean/declarations/idealofset-ofideal-eq-closure--ce7a238d0ab52ade44c25e3b.md) | 193 | `result-track:ce7a238d0ab52ade44c25e3b82de13dcfe314dc9d566f82d33ba15018a99cef9` |
| 16 | `theorem` | [idealOfSet_ofIdeal_isClosed](../../../../../mathematics/Topology/GeneralTopology/Ideals/Variant6f029f913a3b3c972099cef63f1cf37e16215af570c535abcb3712941afb18d4.lean/declarations/idealofset-ofideal-isclosed--6bd3bee756a2964ab57ad823.md) | 299 | `result-track:6bd3bee756a2964ab57ad823a1ad454fca4e9dbce1181c4e1a35e94919a0fce5` |
| 17 | `theorem` | [setOfIdeal_ofSet_eq_interior](../../../../../mathematics/Topology/GeneralTopology/Ideals/Variant6f029f913a3b3c972099cef63f1cf37e16215af570c535abcb3712941afb18d4.lean/declarations/setofideal-ofset-eq-interior--4479123819b404201d19f55c.md) | 306 | `result-track:4479123819b404201d19f55c5f0572e6e166494d102f13b160bc1a23909ba257` |
| 18 | `theorem` | [setOfIdeal_ofSet_of_isOpen](../../../../../mathematics/Topology/GeneralTopology/Ideals/Variant6f029f913a3b3c972099cef63f1cf37e16215af570c535abcb3712941afb18d4.lean/declarations/setofideal-ofset-of-isopen--2ad1a20f7f1ce66712aa6ba6.md) | 327 | `result-track:2ad1a20f7f1ce66712aa6ba60ffe2c10b9e9762f6a4a3c3adbf7f71019810e51` |
| 19 | `def` | [idealOpensGI](../../../../../mathematics/Topology/GeneralTopology/Ideals/Variant6f029f913a3b3c972099cef63f1cf37e16215af570c535abcb3712941afb18d4.lean/declarations/idealopensgi--0635754cf30bf1d7158d2c47.md) | 334 | `declaration-track:0635754cf30bf1d7158d2c47acbcc056445d33b08c400869b5760f3e9d82ea3b` |
| 20 | `theorem` | [idealOfSet_isMaximal_iff](../../../../../mathematics/Topology/GeneralTopology/Ideals/Variant6f029f913a3b3c972099cef63f1cf37e16215af570c535abcb3712941afb18d4.lean/declarations/idealofset-ismaximal-iff--2ac0766080b4a6a878530263.md) | 346 | `result-track:2ac0766080b4a6a878530263c77de786b497493c36d15190c648b3a97cbb6aa2` |
| 21 | `theorem` | [idealOf_compl_singleton_isMaximal](../../../../../mathematics/Topology/GeneralTopology/Ideals/Variant6f029f913a3b3c972099cef63f1cf37e16215af570c535abcb3712941afb18d4.lean/declarations/idealof-compl-singleton-ismaximal--a4310a205e4f10f373eec794.md) | 353 | `result-track:a4310a205e4f10f373eec794638ce45c6becffd522a17fcd2c5a192e0ddd0011` |
| 22 | `theorem` | [setOfIdeal_eq_compl_singleton](../../../../../mathematics/Topology/GeneralTopology/Ideals/Variant6f029f913a3b3c972099cef63f1cf37e16215af570c535abcb3712941afb18d4.lean/declarations/setofideal-eq-compl-singleton--caef287859fdb94ead6cda46.md) | 358 | `result-track:caef287859fdb94ead6cda464fc86b0bdebeec6b82e2a6e3a157b84d5bd241fc` |
| 23 | `theorem` | [ideal_isMaximal_iff](../../../../../mathematics/Topology/GeneralTopology/Ideals/Variant6f029f913a3b3c972099cef63f1cf37e16215af570c535abcb3712941afb18d4.lean/declarations/ideal-ismaximal-iff--4c37654b95e2d975477a121f.md) | 365 | `result-track:4c37654b95e2d975477a121f5bef691b7d7e47b0de0a9d1fc66eeb7ecb0fe081` |
| 24 | `def` | [continuousMapEval](../../../../../mathematics/Topology/GeneralTopology/Ideals/Variant6f029f913a3b3c972099cef63f1cf37e16215af570c535abcb3712941afb18d4.lean/declarations/continuousmapeval--c0d80c393902b43f0b60bcc6.md) | 397 | `declaration-track:c0d80c393902b43f0b60bcc690d08cfc4619ef6638bb22a82d03156e569f69a5` |
| 25 | `theorem` | [continuousMapEval_apply_apply](../../../../../mathematics/Topology/GeneralTopology/Ideals/Variant6f029f913a3b3c972099cef63f1cf37e16215af570c535abcb3712941afb18d4.lean/declarations/continuousmapeval-apply-apply--dc5e075adf01b7b825262333.md) | 408 | `result-track:dc5e075adf01b7b8252623336929602ed7895b0b3aa000028ebb4437338c6d47` |
| 26 | `theorem` | [continuousMapEval_bijective](../../../../../mathematics/Topology/GeneralTopology/Ideals/Variant6f029f913a3b3c972099cef63f1cf37e16215af570c535abcb3712941afb18d4.lean/declarations/continuousmapeval-bijective--a3bae821d681a23db9ecb124.md) | 415 | `result-track:a3bae821d681a23db9ecb124eb4422c3f73bb190c2a6f1e12d5f777516b7a329` |
| 27 | `def` | [homeoEval](../../../../../mathematics/Topology/GeneralTopology/Ideals/Variant6f029f913a3b3c972099cef63f1cf37e16215af570c535abcb3712941afb18d4.lean/declarations/homeoeval--109c30e0d6425855bf29a0d5.md) | 433 | `declaration-track:109c30e0d6425855bf29a0d5a1f27260445d356c74dd0d5c25b8f08b0fdee650` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
