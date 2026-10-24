# Verification target: GRWTSK.Algebra.GroupTheory.Tuple.Variant7c1bcbeeca1b6fa267991307b98d161e4a8f5d0a4f12700b06d18d04b96311d0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c462454f9d843ca84bffc8fefce030ec1db690b3",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Tuple/Variant7c1bcbeeca1b6fa267991307b98d161e4a8f5d0a4f12700b06d18d04b96311d0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Tuple/Variant7c1bcbeeca1b6fa267991307b98d161e4a8f5d0a4f12700b06d18d04b96311d0.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Tuple/Variant7c1bcbeeca1b6fa267991307b98d161e4a8f5d0a4f12700b06d18d04b96311d0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c462454f9d843ca84bffc8fefce030ec1db690b3`.

Source path: `GRWTSK/Algebra/GroupTheory/Tuple/Variant7c1bcbeeca1b6fa267991307b98d161e4a8f5d0a4f12700b06d18d04b96311d0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Tuple/Variant7c1bcbeeca1b6fa267991307b98d161e4a8f5d0a4f12700b06d18d04b96311d0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Pi.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fin.VecNotation` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [insertNth_one_right](../../../../../mathematics/Algebra/GroupTheory/Tuple/Variant7c1bcbeeca1b6fa267991307b98d161e4a8f5d0a4f12700b06d18d04b96311d0.lean/declarations/insertnth-one-right--b174353925165dba4dba2dad.md) | 18 | `result-track:b174353925165dba4dba2dadd6698e3eaa55d9e8ddf77e2b0b96b6cbb5f1f039` |
| 2 | `lemma` | [insertNth_mul](../../../../../mathematics/Algebra/GroupTheory/Tuple/Variant7c1bcbeeca1b6fa267991307b98d161e4a8f5d0a4f12700b06d18d04b96311d0.lean/declarations/insertnth-mul--6de6967b59efb9ef05edfc71.md) | 23 | `result-track:6de6967b59efb9ef05edfc716d789d0d40c8af74d3e4718efc0d14bcfcb2ac69` |
| 3 | `lemma` | [insertNth_div](../../../../../mathematics/Algebra/GroupTheory/Tuple/Variant7c1bcbeeca1b6fa267991307b98d161e4a8f5d0a4f12700b06d18d04b96311d0.lean/declarations/insertnth-div--26ba45e0de82d7402e9d04a7.md) | 28 | `result-track:26ba45e0de82d7402e9d04a7ae86821874f8ab0223f70bb55bedebc6a81f1f94` |
| 4 | `lemma` | [insertNth_div_same](../../../../../mathematics/Algebra/GroupTheory/Tuple/Variant7c1bcbeeca1b6fa267991307b98d161e4a8f5d0a4f12700b06d18d04b96311d0.lean/declarations/insertnth-div-same--f502ee9658bf740fe0bb63de.md) | 33 | `result-track:f502ee9658bf740fe0bb63de5da1cabaa62a53449138aee19b3ddcaa3c1c08ab` |
| 5 | `lemma` | [smul_empty](../../../../../mathematics/Algebra/GroupTheory/Tuple/Variant7c1bcbeeca1b6fa267991307b98d161e4a8f5d0a4f12700b06d18d04b96311d0.lean/declarations/smul-empty--d77c6aa7349e4e20c3a11756.md) | 46 | `result-track:d77c6aa7349e4e20c3a117560742fa779625c80195fc4780ba67a2641a1ccbe5` |
| 6 | `lemma` | [smul_cons](../../../../../mathematics/Algebra/GroupTheory/Tuple/Variant7c1bcbeeca1b6fa267991307b98d161e4a8f5d0a4f12700b06d18d04b96311d0.lean/declarations/smul-cons--a8a792091c48538ebd3102ee.md) | 48 | `result-track:a8a792091c48538ebd3102eee1c7346e99619aa577214c7cd0630be386d67cb8` |
| 7 | `lemma` | [empty_add_empty](../../../../../mathematics/Algebra/GroupTheory/Tuple/Variant7c1bcbeeca1b6fa267991307b98d161e4a8f5d0a4f12700b06d18d04b96311d0.lean/declarations/empty-add-empty--89aa853087c92a51f749004c.md) | 56 | `result-track:89aa853087c92a51f749004cf19e13954fec36e34ac7454fa29523509569b4b8` |
| 8 | `lemma` | [cons_add](../../../../../mathematics/Algebra/GroupTheory/Tuple/Variant7c1bcbeeca1b6fa267991307b98d161e4a8f5d0a4f12700b06d18d04b96311d0.lean/declarations/cons-add--277ede4dc096ff0b76708351.md) | 58 | `result-track:277ede4dc096ff0b767083511d49d3ed238d0f7d8dd6a448b09833841f78b828` |
| 9 | `lemma` | [add_cons](../../../../../mathematics/Algebra/GroupTheory/Tuple/Variant7c1bcbeeca1b6fa267991307b98d161e4a8f5d0a4f12700b06d18d04b96311d0.lean/declarations/add-cons--825e88757d339fc499c792db.md) | 62 | `result-track:825e88757d339fc499c792dbc59daa755947507140865b6ac093b1550116b6d8` |
| 10 | `lemma` | [cons_add_cons](../../../../../mathematics/Algebra/GroupTheory/Tuple/Variant7c1bcbeeca1b6fa267991307b98d161e4a8f5d0a4f12700b06d18d04b96311d0.lean/declarations/cons-add-cons--402b57f24ca608f4642e9ac9.md) | 66 | `result-track:402b57f24ca608f4642e9ac938572e7e024d10453a74a0fa79fef2f08c98ce76` |
| 11 | `lemma` | [head_add](../../../../../mathematics/Algebra/GroupTheory/Tuple/Variant7c1bcbeeca1b6fa267991307b98d161e4a8f5d0a4f12700b06d18d04b96311d0.lean/declarations/head-add--4fdb7487ef4497f37892d80c.md) | 69 | `result-track:4fdb7487ef4497f37892d80c10f2cb0fdd1412780d3c85e1a25f0bd980214f0f` |
| 12 | `lemma` | [tail_add](../../../../../mathematics/Algebra/GroupTheory/Tuple/Variant7c1bcbeeca1b6fa267991307b98d161e4a8f5d0a4f12700b06d18d04b96311d0.lean/declarations/tail-add--1107bbe74c31ba7393825eed.md) | 71 | `result-track:1107bbe74c31ba7393825eed9ecbbf07f2387907a5e05e763a2fc3eaba845835` |
| 13 | `lemma` | [empty_sub_empty](../../../../../mathematics/Algebra/GroupTheory/Tuple/Variant7c1bcbeeca1b6fa267991307b98d161e4a8f5d0a4f12700b06d18d04b96311d0.lean/declarations/empty-sub-empty--3077f0fb82c716f4a0384343.md) | 78 | `result-track:3077f0fb82c716f4a038434302060635d167aa54cf652e34d4fca5cf5bec46a9` |
| 14 | `lemma` | [cons_sub](../../../../../mathematics/Algebra/GroupTheory/Tuple/Variant7c1bcbeeca1b6fa267991307b98d161e4a8f5d0a4f12700b06d18d04b96311d0.lean/declarations/cons-sub--cb3bc37fd8545da069affaa0.md) | 80 | `result-track:cb3bc37fd8545da069affaa029f80ad22aadbc3b9bc408fea17b17e112b2bd2d` |
| 15 | `lemma` | [sub_cons](../../../../../mathematics/Algebra/GroupTheory/Tuple/Variant7c1bcbeeca1b6fa267991307b98d161e4a8f5d0a4f12700b06d18d04b96311d0.lean/declarations/sub-cons--d555e539592da2b657de8b6f.md) | 84 | `result-track:d555e539592da2b657de8b6fa2e32b80e1d34d5f0f336f20a864b38d752bc82e` |
| 16 | `lemma` | [cons_sub_cons](../../../../../mathematics/Algebra/GroupTheory/Tuple/Variant7c1bcbeeca1b6fa267991307b98d161e4a8f5d0a4f12700b06d18d04b96311d0.lean/declarations/cons-sub-cons--8e996febdbc28f9a20b4c93b.md) | 88 | `result-track:8e996febdbc28f9a20b4c93be0bb968abbee337839f885500f711804b512487a` |
| 17 | `lemma` | [head_sub](../../../../../mathematics/Algebra/GroupTheory/Tuple/Variant7c1bcbeeca1b6fa267991307b98d161e4a8f5d0a4f12700b06d18d04b96311d0.lean/declarations/head-sub--872dda6f6b9d90e204c9a613.md) | 91 | `result-track:872dda6f6b9d90e204c9a6134c5b0a7e782b1fcd4749177db00f3731e36bce21` |
| 18 | `lemma` | [tail_sub](../../../../../mathematics/Algebra/GroupTheory/Tuple/Variant7c1bcbeeca1b6fa267991307b98d161e4a8f5d0a4f12700b06d18d04b96311d0.lean/declarations/tail-sub--d30acacad29aade46d0d4deb.md) | 93 | `result-track:d30acacad29aade46d0d4debbb0b4c6a0d9e35e2a06d300a42ade9617140cd97` |
| 19 | `lemma` | [zero_empty](../../../../../mathematics/Algebra/GroupTheory/Tuple/Variant7c1bcbeeca1b6fa267991307b98d161e4a8f5d0a4f12700b06d18d04b96311d0.lean/declarations/zero-empty--2840bdb9f38261c660efc20c.md) | 100 | `result-track:2840bdb9f38261c660efc20c4240665d9f7ff7c44adb9f7d1d98cbb04cbae666` |
| 20 | `lemma` | [cons_zero_zero](../../../../../mathematics/Algebra/GroupTheory/Tuple/Variant7c1bcbeeca1b6fa267991307b98d161e4a8f5d0a4f12700b06d18d04b96311d0.lean/declarations/cons-zero-zero--534a5cc44106f87ff70b3a18.md) | 102 | `result-track:534a5cc44106f87ff70b3a1827ab35ee83be18ff022ad7c645946b4a71dec6b0` |
| 21 | `lemma` | [head_zero](../../../../../mathematics/Algebra/GroupTheory/Tuple/Variant7c1bcbeeca1b6fa267991307b98d161e4a8f5d0a4f12700b06d18d04b96311d0.lean/declarations/head-zero--a713b4ce2db0e7e277c63c28.md) | 105 | `result-track:a713b4ce2db0e7e277c63c280111ce44022e90dced14986c1a58dd93deacc4dc` |
| 22 | `lemma` | [tail_zero](../../../../../mathematics/Algebra/GroupTheory/Tuple/Variant7c1bcbeeca1b6fa267991307b98d161e4a8f5d0a4f12700b06d18d04b96311d0.lean/declarations/tail-zero--f86610426c2227131e8b0f81.md) | 107 | `result-track:f86610426c2227131e8b0f81ae56721cf335ddcde5d09b32a5eb9cdb4c0afdf5` |
| 23 | `lemma` | [cons_eq_zero_iff](../../../../../mathematics/Algebra/GroupTheory/Tuple/Variant7c1bcbeeca1b6fa267991307b98d161e4a8f5d0a4f12700b06d18d04b96311d0.lean/declarations/cons-eq-zero-iff--6f462d16993b1ce4a5b69526.md) | 109 | `result-track:6f462d16993b1ce4a5b6952639b220f847ec3b48d20097e86887acbf0768ed84` |
| 24 | `lemma` | [cons_nonzero_iff](../../../../../mathematics/Algebra/GroupTheory/Tuple/Variant7c1bcbeeca1b6fa267991307b98d161e4a8f5d0a4f12700b06d18d04b96311d0.lean/declarations/cons-nonzero-iff--62d05a06abc0c8e397403e44.md) | 113 | `result-track:62d05a06abc0c8e397403e44576a8d3abd968861b280db3000a7a71a7aa695a7` |
| 25 | `lemma` | [neg_empty](../../../../../mathematics/Algebra/GroupTheory/Tuple/Variant7c1bcbeeca1b6fa267991307b98d161e4a8f5d0a4f12700b06d18d04b96311d0.lean/declarations/neg-empty--78b3f4f57974ddbe5e268901.md) | 122 | `result-track:78b3f4f57974ddbe5e268901c8359adb4aab476de1d90790a019b729fb8b1f0a` |
| 26 | `lemma` | [neg_cons](../../../../../mathematics/Algebra/GroupTheory/Tuple/Variant7c1bcbeeca1b6fa267991307b98d161e4a8f5d0a4f12700b06d18d04b96311d0.lean/declarations/neg-cons--5defc4b506afcfa5682bf381.md) | 124 | `result-track:5defc4b506afcfa5682bf3818c17ec9a10793eedc328f7b2cd0d7eb03c3ac4bc` |
| 27 | `lemma` | [head_neg](../../../../../mathematics/Algebra/GroupTheory/Tuple/Variant7c1bcbeeca1b6fa267991307b98d161e4a8f5d0a4f12700b06d18d04b96311d0.lean/declarations/head-neg--68de025fd65ddf3729859ea6.md) | 127 | `result-track:68de025fd65ddf3729859ea603f8d86d15bdf22c6dfee623ee86d4f4cfbda6ed` |
| 28 | `lemma` | [tail_neg](../../../../../mathematics/Algebra/GroupTheory/Tuple/Variant7c1bcbeeca1b6fa267991307b98d161e4a8f5d0a4f12700b06d18d04b96311d0.lean/declarations/tail-neg--705414c1d26cbe20f12f2298.md) | 129 | `result-track:705414c1d26cbe20f12f2298d346b406704c0667d4e8ad2555cdff5b78090508` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
