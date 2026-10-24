# Verification target: GRWTSK.Topology.GeneralTopology.ENNReal.Variant133c411e440a35da65ea12fa90d634cb696cda90814da9fe140e02b628c161a4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4c069575bfbdc71ab4cff473270180e2d69edb7f",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/ENNReal/Variant133c411e440a35da65ea12fa90d634cb696cda90814da9fe140e02b628c161a4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/ENNReal/Variant133c411e440a35da65ea12fa90d634cb696cda90814da9fe140e02b628c161a4.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/ENNReal/Variant133c411e440a35da65ea12fa90d634cb696cda90814da9fe140e02b628c161a4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4c069575bfbdc71ab4cff473270180e2d69edb7f`.

Source path: `GRWTSK/Topology/GeneralTopology/ENNReal/Variant133c411e440a35da65ea12fa90d634cb696cda90814da9fe140e02b628c161a4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/ENNReal/Variant133c411e440a35da65ea12fa90d634cb696cda90814da9fe140e02b628c161a4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Algebra.Order.LiminfLimsup` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Metrizable.Real` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [limsSup_of_not_isCobounded](../../../../../mathematics/Topology/GeneralTopology/ENNReal/Variant133c411e440a35da65ea12fa90d634cb696cda90814da9fe140e02b628c161a4.lean/declarations/limssup-of-not-iscobounded--e7492f863a11a6bd633e5c9c.md) | 22 | `result-track:e7492f863a11a6bd633e5c9ce785eafa176faea4570abfd50c92599ade55361d` |
| 2 | `lemma` | [limsSup_of_not_isBounded](../../../../../mathematics/Topology/GeneralTopology/ENNReal/Variant133c411e440a35da65ea12fa90d634cb696cda90814da9fe140e02b628c161a4.lean/declarations/limssup-of-not-isbounded--f6030f638021cb4cfd159933.md) | 26 | `result-track:f6030f638021cb4cfd1599334742d694b620f6161693162df8672a088abc5f12` |
| 3 | `lemma` | [limsInf_of_not_isCobounded](../../../../../mathematics/Topology/GeneralTopology/ENNReal/Variant133c411e440a35da65ea12fa90d634cb696cda90814da9fe140e02b628c161a4.lean/declarations/limsinf-of-not-iscobounded--74b3cbae4eedaaca2a2195b3.md) | 32 | `result-track:74b3cbae4eedaaca2a2195b33d9fbf440922b709cfbb83ad2fcf5087f2719d65` |
| 4 | `lemma` | [limsInf_of_not_isBounded](../../../../../mathematics/Topology/GeneralTopology/ENNReal/Variant133c411e440a35da65ea12fa90d634cb696cda90814da9fe140e02b628c161a4.lean/declarations/limsinf-of-not-isbounded--c5c66e63e42570da8b156da0.md) | 36 | `result-track:c5c66e63e42570da8b156da0bd8506cf74bc675123355264d12418a159f70441` |
| 5 | `lemma` | [limsup_of_not_isCoboundedUnder](../../../../../mathematics/Topology/GeneralTopology/ENNReal/Variant133c411e440a35da65ea12fa90d634cb696cda90814da9fe140e02b628c161a4.lean/declarations/limsup-of-not-iscoboundedunder--b9f8e1f0192ac0cf7078a399.md) | 42 | `result-track:b9f8e1f0192ac0cf7078a399c5204231ceea6adec351812a1215e7ae388c3cd4` |
| 6 | `lemma` | [limsup_of_not_isBoundedUnder](../../../../../mathematics/Topology/GeneralTopology/ENNReal/Variant133c411e440a35da65ea12fa90d634cb696cda90814da9fe140e02b628c161a4.lean/declarations/limsup-of-not-isboundedunder--a43fe2729831ca08359988a7.md) | 46 | `result-track:a43fe2729831ca08359988a710b41e40e71c5e7ce8dc1c4ec552b0b18c28612a` |
| 7 | `lemma` | [liminf_of_not_isCoboundedUnder](../../../../../mathematics/Topology/GeneralTopology/ENNReal/Variant133c411e440a35da65ea12fa90d634cb696cda90814da9fe140e02b628c161a4.lean/declarations/liminf-of-not-iscoboundedunder--ad3b4e27d8cf065e201dbdf9.md) | 50 | `result-track:ad3b4e27d8cf065e201dbdf9605181b9317955ee255babe13e0f9ed269912977` |
| 8 | `lemma` | [liminf_of_not_isBoundedUnder](../../../../../mathematics/Topology/GeneralTopology/ENNReal/Variant133c411e440a35da65ea12fa90d634cb696cda90814da9fe140e02b628c161a4.lean/declarations/liminf-of-not-isboundedunder--77db73521176140de1267ae4.md) | 54 | `result-track:77db73521176140de1267ae4d00e8f2b464d83182074ebb6f341f7e78a383693` |
| 9 | `lemma` | [isBoundedUnder_le_toReal](../../../../../mathematics/Topology/GeneralTopology/ENNReal/Variant133c411e440a35da65ea12fa90d634cb696cda90814da9fe140e02b628c161a4.lean/declarations/isboundedunder-le-toreal--2e8dafbf4be565949c23790a.md) | 62 | `result-track:2e8dafbf4be565949c23790a530e261a2e5b006116fa3aa016a7caac40023bd7` |
| 10 | `lemma` | [isBoundedUnder_ge_toReal](../../../../../mathematics/Topology/GeneralTopology/ENNReal/Variant133c411e440a35da65ea12fa90d634cb696cda90814da9fe140e02b628c161a4.lean/declarations/isboundedunder-ge-toreal--0f3ac3bb5c903ba87d76b006.md) | 71 | `result-track:0f3ac3bb5c903ba87d76b00678fef570bee080f54e951054e47071ce4987d50f` |
| 11 | `lemma` | [isCoboundedUnder_le_toReal](../../../../../mathematics/Topology/GeneralTopology/ENNReal/Variant133c411e440a35da65ea12fa90d634cb696cda90814da9fe140e02b628c161a4.lean/declarations/iscoboundedunder-le-toreal--48ecd868bed3ac252f201ed3.md) | 80 | `result-track:48ecd868bed3ac252f201ed3da73282ab655c731c7940c7ab58fce8f41ff8bef` |
| 12 | `lemma` | [isCoboundedUnder_ge_toReal](../../../../../mathematics/Topology/GeneralTopology/ENNReal/Variant133c411e440a35da65ea12fa90d634cb696cda90814da9fe140e02b628c161a4.lean/declarations/iscoboundedunder-ge-toreal--6e315e431d69bd644f634239.md) | 90 | `result-track:6e315e431d69bd644f63423983017314428a2278120d1373bc259332326ff1c1` |
| 13 | `lemma` | [limsSup_of_not_isBounded](../../../../../mathematics/Topology/GeneralTopology/ENNReal/Variant133c411e440a35da65ea12fa90d634cb696cda90814da9fe140e02b628c161a4.lean/declarations/limssup-of-not-isbounded--1b0f1715dc099199340cec0e.md) | 104 | `result-track:1b0f1715dc099199340cec0e58a7a5d3658cd7021c7790b76bbf0003d5f955b9` |
| 14 | `lemma` | [limsInf_of_not_isCobounded](../../../../../mathematics/Topology/GeneralTopology/ENNReal/Variant133c411e440a35da65ea12fa90d634cb696cda90814da9fe140e02b628c161a4.lean/declarations/limsinf-of-not-iscobounded--f2314dc5b5529ea89753094a.md) | 110 | `result-track:f2314dc5b5529ea89753094af984a1a9691afa7c932f3e7c210a867377d5939e` |
| 15 | `lemma` | [limsup_of_not_isBoundedUnder](../../../../../mathematics/Topology/GeneralTopology/ENNReal/Variant133c411e440a35da65ea12fa90d634cb696cda90814da9fe140e02b628c161a4.lean/declarations/limsup-of-not-isboundedunder--83656c817a584a905ad1eeae.md) | 114 | `result-track:83656c817a584a905ad1eeae5116327091db993c6acd0443ff39939af3f0488a` |
| 16 | `lemma` | [liminf_of_not_isCoboundedUnder](../../../../../mathematics/Topology/GeneralTopology/ENNReal/Variant133c411e440a35da65ea12fa90d634cb696cda90814da9fe140e02b628c161a4.lean/declarations/liminf-of-not-iscoboundedunder--1e88af3cdfdf8ee2ca6f3679.md) | 118 | `result-track:1e88af3cdfdf8ee2ca6f3679d570391a399e2c52d013df8cdfe9f61e4ea01ea4` |
| 17 | `lemma` | [toReal_liminf](../../../../../mathematics/Topology/GeneralTopology/ENNReal/Variant133c411e440a35da65ea12fa90d634cb696cda90814da9fe140e02b628c161a4.lean/declarations/toreal-liminf--d1d8377f8e3ed46f3168e9e2.md) | 122 | `result-track:d1d8377f8e3ed46f3168e9e2799d9b008edee5ad418e2a7c52ac4998af87c43b` |
| 18 | `lemma` | [toReal_limsup](../../../../../mathematics/Topology/GeneralTopology/ENNReal/Variant133c411e440a35da65ea12fa90d634cb696cda90814da9fe140e02b628c161a4.lean/declarations/toreal-limsup--feb9fc9c95425e7d42ef60b9.md) | 133 | `result-track:feb9fc9c95425e7d42ef60b921fb88d78cf1a8069272f8eff3d5bf37572e8d8f` |
| 19 | `theorem` | [eventually_le_limsup](../../../../../mathematics/Topology/GeneralTopology/ENNReal/Variant133c411e440a35da65ea12fa90d634cb696cda90814da9fe140e02b628c161a4.lean/declarations/eventually-le-limsup--08622a62c6b7f17609adaee3.md) | 152 | `result-track:08622a62c6b7f17609adaee352de54cb850586f15abf8f65e62f88fe581579ca` |
| 20 | `theorem` | [limsup_eq_zero_iff](../../../../../mathematics/Topology/GeneralTopology/ENNReal/Variant133c411e440a35da65ea12fa90d634cb696cda90814da9fe140e02b628c161a4.lean/declarations/limsup-eq-zero-iff--b90a97bf09525240e4ac814e.md) | 156 | `result-track:b90a97bf09525240e4ac814e8ceea048e77053a55f9b046debf2bb4646b49b02` |
| 21 | `theorem` | [limsup_const_mul_of_ne_top](../../../../../mathematics/Topology/GeneralTopology/ENNReal/Variant133c411e440a35da65ea12fa90d634cb696cda90814da9fe140e02b628c161a4.lean/declarations/limsup-const-mul-of-ne-top--8178505cac404a6ec0be83d7.md) | 160 | `result-track:8178505cac404a6ec0be83d70e6b9f9d228758da4b4ee53ca1bdddfdbbf75ae4` |
| 22 | `theorem` | [limsup_const_mul](../../../../../mathematics/Topology/GeneralTopology/ENNReal/Variant133c411e440a35da65ea12fa90d634cb696cda90814da9fe140e02b628c161a4.lean/declarations/limsup-const-mul--ee561637d0c2f486ec361e65.md) | 176 | `result-track:ee561637d0c2f486ec361e6571a299af7ca17d7b6ff71a73897facb14af906ee` |
| 23 | `theorem` | [limsup_mul_le](../../../../../mathematics/Topology/GeneralTopology/ENNReal/Variant133c411e440a35da65ea12fa90d634cb696cda90814da9fe140e02b628c161a4.lean/declarations/limsup-mul-le--a8549e6977242303f99cc4b4.md) | 197 | `result-track:a8549e6977242303f99cc4b48cfbd03ecd37125171f0b8d4e2a33a02e30dca96` |
| 24 | `theorem` | [limsup_add_le](../../../../../mathematics/Topology/GeneralTopology/ENNReal/Variant133c411e440a35da65ea12fa90d634cb696cda90814da9fe140e02b628c161a4.lean/declarations/limsup-add-le--ad335e961c6dacef43756d44.md) | 205 | `result-track:ad335e961c6dacef43756d4469dfbe0724c4d10e99b266410f36cb71b10c2d27` |
| 25 | `theorem` | [limsup_liminf_le_liminf_limsup](../../../../../mathematics/Topology/GeneralTopology/ENNReal/Variant133c411e440a35da65ea12fa90d634cb696cda90814da9fe140e02b628c161a4.lean/declarations/limsup-liminf-le-liminf-limsup--ff10dcd63853c1a28b0e4860.md) | 210 | `result-track:ff10dcd63853c1a28b0e4860763399a5bd940a2e767caa0d8c03898b7e2df313` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
