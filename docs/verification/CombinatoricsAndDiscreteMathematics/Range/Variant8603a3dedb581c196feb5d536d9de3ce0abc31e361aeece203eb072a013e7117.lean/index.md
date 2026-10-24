# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Range.Variant8603a3dedb581c196feb5d536d9de3ce0abc31e361aeece203eb072a013e7117

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "32378b7115ac940ed33bfa6034c42cb10d8cd7e9",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Range/Variant8603a3dedb581c196feb5d536d9de3ce0abc31e361aeece203eb072a013e7117.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Range/Variant8603a3dedb581c196feb5d536d9de3ce0abc31e361aeece203eb072a013e7117.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Range/Variant8603a3dedb581c196feb5d536d9de3ce0abc31e361aeece203eb072a013e7117.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `32378b7115ac940ed33bfa6034c42cb10d8cd7e9`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Range/Variant8603a3dedb581c196feb5d536d9de3ce0abc31e361aeece203eb072a013e7117.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Range/Variant8603a3dedb581c196feb5d536d9de3ce0abc31e361aeece203eb072a013e7117.lean.json)

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
| 1 | `def` | [range](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Range/Variant8603a3dedb581c196feb5d536d9de3ce0abc31e361aeece203eb072a013e7117.lean/declarations/range--1d9fa7ab47743676bc191355.md) | 61 | `declaration-track:1d9fa7ab47743676bc19135523a75f26212e47b8417dbafbb1f5b43121185459` |
| 2 | `theorem` | [range_val](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Range/Variant8603a3dedb581c196feb5d536d9de3ce0abc31e361aeece203eb072a013e7117.lean/declarations/range-val--9ba4e55cf68be5ac7825226e.md) | 65 | `result-track:9ba4e55cf68be5ac7825226e7fd79230e5c1200b7798cd71801189ca6944a6b8` |
| 3 | `lemma` | [_root_.GRWTSK.CombinatoricsAndDiscreteMathematics.Range.Variant558338b4d2aafb16975268881803408ffa50d44abc7b9d9eee418e1590094576.Multiset.toFinset_range](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Range/Variant8603a3dedb581c196feb5d536d9de3ce0abc31e361aeece203eb072a013e7117.lean/declarations/root-grwtsk-combinatoricsanddiscretemathematics-range-variant558338b4d2a--6046ea83da6e05dd30e2e080.md) | 68 | `result-track:6046ea83da6e05dd30e2e080ed5d0e0e8a2d30c71313f836b0f303ae27f13376` |
| 4 | `theorem` | [mem_range](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Range/Variant8603a3dedb581c196feb5d536d9de3ce0abc31e361aeece203eb072a013e7117.lean/declarations/mem-range--98bdcb6a80084d4a86fcec8f.md) | 72 | `result-track:98bdcb6a80084d4a86fcec8f706ad9e5be74edb3abb9bcd73f9ec5d88991879c` |
| 5 | `theorem` | [coe_range](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Range/Variant8603a3dedb581c196feb5d536d9de3ce0abc31e361aeece203eb072a013e7117.lean/declarations/coe-range--db741002ae510591a825eabe.md) | 76 | `result-track:db741002ae510591a825eabe19995b90793cce3e3f350f507229e5886ea63e62` |
| 6 | `theorem` | [range_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Range/Variant8603a3dedb581c196feb5d536d9de3ce0abc31e361aeece203eb072a013e7117.lean/declarations/range-zero--b2b1e1de232619751b20af43.md) | 80 | `result-track:b2b1e1de232619751b20af4376e6740ccd600e3f870c7f7beb3982d3e88cdbee` |
| 7 | `theorem` | [range_one](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Range/Variant8603a3dedb581c196feb5d536d9de3ce0abc31e361aeece203eb072a013e7117.lean/declarations/range-one--bd76f01b46bdb80338cd358e.md) | 84 | `result-track:bd76f01b46bdb80338cd358ed77e7507a54112cbc09928acb3aca1f656b008a9` |
| 8 | `theorem` | [range_add_one](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Range/Variant8603a3dedb581c196feb5d536d9de3ce0abc31e361aeece203eb072a013e7117.lean/declarations/range-add-one--aed2c71b74eb04903b66714f.md) | 87 | `result-track:aed2c71b74eb04903b66714ff9522f484f9de127e5721f580a77a67113678aca` |
| 9 | `theorem` | [notMem_range_self](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Range/Variant8603a3dedb581c196feb5d536d9de3ce0abc31e361aeece203eb072a013e7117.lean/declarations/notmem-range-self--0e1d043f5bd893af96d607cb.md) | 89 | `result-track:0e1d043f5bd893af96d607cbd965fd70cb9602070c53adbf0748e4f7b0a76ab5` |
| 10 | `theorem` | [self_mem_range_succ](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Range/Variant8603a3dedb581c196feb5d536d9de3ce0abc31e361aeece203eb072a013e7117.lean/declarations/self-mem-range-succ--2abf0b316a3116f79b73a9c3.md) | 91 | `result-track:2abf0b316a3116f79b73a9c31374ba3735aad6822efe07f26c0ba57ac15b06a5` |
| 11 | `theorem` | [range_subset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Range/Variant8603a3dedb581c196feb5d536d9de3ce0abc31e361aeece203eb072a013e7117.lean/declarations/range-subset--ae40bced7e9b2bc1923b9bff.md) | 94 | `result-track:ae40bced7e9b2bc1923b9bff0015a780058b27c2a157c393f0e781babbe82f7f` |
| 12 | `theorem` | [subset_range](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Range/Variant8603a3dedb581c196feb5d536d9de3ce0abc31e361aeece203eb072a013e7117.lean/declarations/subset-range--8b05878a00705e597249049e.md) | 96 | `result-track:8b05878a00705e597249049e01499bad85567058d95e73640809379dd952ba3f` |
| 13 | `theorem` | [range_subset_range](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Range/Variant8603a3dedb581c196feb5d536d9de3ce0abc31e361aeece203eb072a013e7117.lean/declarations/range-subset-range--654bc461b8f1908cccbb2f9b.md) | 99 | `result-track:654bc461b8f1908cccbb2f9b3700a5ebf040d5d8a1d0c8c02d8f9d5ebf397cdc` |
| 14 | `theorem` | [range_mono](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Range/Variant8603a3dedb581c196feb5d536d9de3ce0abc31e361aeece203eb072a013e7117.lean/declarations/range-mono--f3942fa0beaa74045eb5d7db.md) | 101 | `result-track:f3942fa0beaa74045eb5d7db943bf2b912189f9a7dcb3ea06f40569b7773a7c5` |
| 15 | `theorem` | [strictMono_range](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Range/Variant8603a3dedb581c196feb5d536d9de3ce0abc31e361aeece203eb072a013e7117.lean/declarations/strictmono-range--ea5e754e3dc6e91621c4aa64.md) | 103 | `result-track:ea5e754e3dc6e91621c4aa6408848fbd6d59c76ac5cff401e42590cc454387cc` |
| 16 | `theorem` | [mem_range_succ_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Range/Variant8603a3dedb581c196feb5d536d9de3ce0abc31e361aeece203eb072a013e7117.lean/declarations/mem-range-succ-iff--98c1dcdf55b608ee47b404ee.md) | 106 | `result-track:98c1dcdf55b608ee47b404ee6aac976d98f416425490cc5b98727cc249b26a12` |
| 17 | `theorem` | [mem_range_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Range/Variant8603a3dedb581c196feb5d536d9de3ce0abc31e361aeece203eb072a013e7117.lean/declarations/mem-range-le--2e8d15e2121828ed3dc88ec9.md) | 108 | `result-track:2e8d15e2121828ed3dc88ec9b041b809f23cecf8feedf2ab4999e726277d1a74` |
| 18 | `theorem` | [mem_range_sub_ne_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Range/Variant8603a3dedb581c196feb5d536d9de3ce0abc31e361aeece203eb072a013e7117.lean/declarations/mem-range-sub-ne-zero--5ac2b7ddc0bf9e8396360219.md) | 110 | `result-track:5ac2b7ddc0bf9e8396360219553f679b4913884f8ff33a8eb1b936bb0cf1219a` |
| 19 | `theorem` | [nonempty_range_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Range/Variant8603a3dedb581c196feb5d536d9de3ce0abc31e361aeece203eb072a013e7117.lean/declarations/nonempty-range-iff--d34690c14a9db469da36484a.md) | 113 | `result-track:d34690c14a9db469da36484adeb4c66403b52fda422f01961854997a93b2bdc8` |
| 20 | `theorem` | [range_eq_empty_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Range/Variant8603a3dedb581c196feb5d536d9de3ce0abc31e361aeece203eb072a013e7117.lean/declarations/range-eq-empty-iff--a89e140dcffa44208cda00f5.md) | 120 | `result-track:a89e140dcffa44208cda00f53f9cd2d94bd50286725d7d77a1441cba53382415` |
| 21 | `theorem` | [nonempty_range_add_one](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Range/Variant8603a3dedb581c196feb5d536d9de3ce0abc31e361aeece203eb072a013e7117.lean/declarations/nonempty-range-add-one--165e7c0f9be3f804e1aa8fd1.md) | 124 | `result-track:165e7c0f9be3f804e1aa8fd14d2d2ab91e67a1b42b7884fbe871ebc7579fd001` |
| 22 | `lemma` | [range_nontrivial](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Range/Variant8603a3dedb581c196feb5d536d9de3ce0abc31e361aeece203eb072a013e7117.lean/declarations/range-nontrivial--83bc10af9365f4374f1dd0b2.md) | 127 | `result-track:83bc10af9365f4374f1dd0b2da9c4db7632ca25d31152c8c01901bfe49f55216` |
| 23 | `theorem` | [exists_nat_subset_range](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Range/Variant8603a3dedb581c196feb5d536d9de3ce0abc31e361aeece203eb072a013e7117.lean/declarations/exists-nat-subset-range--ca8ebb22e80ed4aab6bcbf96.md) | 131 | `result-track:ca8ebb22e80ed4aab6bcbf968fe6ebeb928964fe28a49e93c76cc558f52fc082` |
| 24 | `def` | [notMemRangeEquiv](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Range/Variant8603a3dedb581c196feb5d536d9de3ce0abc31e361aeece203eb072a013e7117.lean/declarations/notmemrangeequiv--85bde23a6d77fffd68b75bab.md) | 141 | `declaration-track:85bde23a6d77fffd68b75bab0c624c90c7a5f5bf0978b515b0f4890c4ae1c2a9` |
| 25 | `theorem` | [coe_notMemRangeEquiv](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Range/Variant8603a3dedb581c196feb5d536d9de3ce0abc31e361aeece203eb072a013e7117.lean/declarations/coe-notmemrangeequiv--4e71f442fa3fa000deb4d06b.md) | 148 | `result-track:4e71f442fa3fa000deb4d06b775e9e2d8e7c6e569bea878c5cd8dcf6a114e0e5` |
| 26 | `theorem` | [coe_notMemRangeEquiv_symm](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Range/Variant8603a3dedb581c196feb5d536d9de3ce0abc31e361aeece203eb072a013e7117.lean/declarations/coe-notmemrangeequiv-symm--bb710270865ea7595efa98cd.md) | 153 | `result-track:bb710270865ea7595efa98cd3b23e9cd9f552ed2bc9d96adf7fc30469e756c00` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
