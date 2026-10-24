# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.BigOperators.Variant4d18a71c96875968db31df935980150720122086f9cc49ba2078053e64b0df6b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3bfcc3a0ac42228ee148d0badf8b486ae67d81a2",
  "lexical_observation_count": 32,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/BigOperators/Variant4d18a71c96875968db31df935980150720122086f9cc49ba2078053e64b0df6b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant4d18a71c96875968db31df935980150720122086f9cc49ba2078053e64b0df6b.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant4d18a71c96875968db31df935980150720122086f9cc49ba2078053e64b0df6b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3bfcc3a0ac42228ee148d0badf8b486ae67d81a2`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/BigOperators/Variant4d18a71c96875968db31df935980150720122086f9cc49ba2078053e64b0df6b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/BigOperators/Variant4d18a71c96875968db31df935980150720122086f9cc49ba2078053e64b0df6b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.WithZero` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Polynomial.Monic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [natDegree_list_sum_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant4d18a71c96875968db31df935980150720122086f9cc49ba2078053e64b0df6b.lean/declarations/natdegree-list-sum-le--e1c0cdf58e1496d87774ba58.md) | 48 | `result-track:e1c0cdf58e1496d87774ba585954d5280d0a42bb6794657e195e7b0945ee2333` |
| 2 | `theorem` | [natDegree_multiset_sum_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant4d18a71c96875968db31df935980150720122086f9cc49ba2078053e64b0df6b.lean/declarations/natdegree-multiset-sum-le--d0afadef5456ac27961e285c.md) | 52 | `result-track:d0afadef5456ac27961e285ce77ec102f3d398cea406362c2a8fe7b1e84a093d` |
| 3 | `theorem` | [natDegree_sum_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant4d18a71c96875968db31df935980150720122086f9cc49ba2078053e64b0df6b.lean/declarations/natdegree-sum-le--8e6e93b9dc2c5310c08ae270.md) | 57 | `result-track:8e6e93b9dc2c5310c08ae2707e0e8eb691696619bf1f7e711c139e2100b35ed1` |
| 4 | `theorem` | [degree_list_sum_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant4d18a71c96875968db31df935980150720122086f9cc49ba2078053e64b0df6b.lean/declarations/degree-list-sum-le--7d86ef4f72d2686d6d20ca7f.md) | 62 | `result-track:7d86ef4f72d2686d6d20ca7f9e91ac4630c418b3f46bc121e2c5835817b0faf5` |
| 5 | `theorem` | [natDegree_list_prod_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant4d18a71c96875968db31df935980150720122086f9cc49ba2078053e64b0df6b.lean/declarations/natdegree-list-prod-le--d879af3ff2062b66a63046c3.md) | 76 | `result-track:d879af3ff2062b66a63046c39d049842c462a3472bdbcc6df985728f0e0783c0` |
| 6 | `theorem` | [degree_list_prod_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant4d18a71c96875968db31df935980150720122086f9cc49ba2078053e64b0df6b.lean/declarations/degree-list-prod-le--252e805a01acc911773e9973.md) | 82 | `result-track:252e805a01acc911773e99736b695a20d4d4677f4921e9a3c05eb9a461f87579` |
| 7 | `theorem` | [coeff_list_prod_of_natDegree_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant4d18a71c96875968db31df935980150720122086f9cc49ba2078053e64b0df6b.lean/declarations/coeff-list-prod-of-natdegree-le--e0c6e5fa0af96f57213bf3a9.md) | 88 | `result-track:e0c6e5fa0af96f57213bf3a9f793db50d69492d175bd50acffa221b4081a11b9` |
| 8 | `theorem` | [natDegree_multiset_prod_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant4d18a71c96875968db31df935980150720122086f9cc49ba2078053e64b0df6b.lean/declarations/natdegree-multiset-prod-le--621af4d23c40922a2d6f0336.md) | 116 | `result-track:621af4d23c40922a2d6f03369a02dde4229def5d103dbdf9fde261fa228ade38` |
| 9 | `theorem` | [natDegree_prod_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant4d18a71c96875968db31df935980150720122086f9cc49ba2078053e64b0df6b.lean/declarations/natdegree-prod-le--a1c937e9d39672f3e717732b.md) | 120 | `result-track:a1c937e9d39672f3e717732b68e5acdab1ec3799aaa1a0914d8981a124034356` |
| 10 | `theorem` | [degree_multiset_prod_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant4d18a71c96875968db31df935980150720122086f9cc49ba2078053e64b0df6b.lean/declarations/degree-multiset-prod-le--c61f2d41868a666aef204d1e.md) | 127 | `result-track:c61f2d41868a666aef204d1efb30968bb094918f828dac5aa2c30fa49cf45982` |
| 11 | `theorem` | [degree_prod_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant4d18a71c96875968db31df935980150720122086f9cc49ba2078053e64b0df6b.lean/declarations/degree-prod-le--a3544cb3867fd1131cc4b39f.md) | 131 | `result-track:a3544cb3867fd1131cc4b39f7c7e3492cfdbd8a79dc41903202923312795c04f` |
| 12 | `theorem` | [leadingCoeff_multiset_prod'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant4d18a71c96875968db31df935980150720122086f9cc49ba2078053e64b0df6b.lean/declarations/leadingcoeff-multiset-prod--43858d282cc4e8e84d29c954.md) | 141 | `result-track:43858d282cc4e8e84d29c954e13ca1a43ed1d08b7621834da2dc75354cbd21c1` |
| 13 | `theorem` | [leadingCoeff_prod'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant4d18a71c96875968db31df935980150720122086f9cc49ba2078053e64b0df6b.lean/declarations/leadingcoeff-prod--1739f00abd56e7fe11c6dc4a.md) | 157 | `result-track:1739f00abd56e7fe11c6dc4af79cf417eea52753ddd33407e44888fb67549942` |
| 14 | `theorem` | [natDegree_multiset_prod'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant4d18a71c96875968db31df935980150720122086f9cc49ba2078053e64b0df6b.lean/declarations/natdegree-multiset-prod--0175de989d0f96c0d3bf75b8.md) | 168 | `result-track:0175de989d0f96c0d3bf75b8375d88451daa2c589103129dc0b6e789f91e3ad0` |
| 15 | `theorem` | [natDegree_prod'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant4d18a71c96875968db31df935980150720122086f9cc49ba2078053e64b0df6b.lean/declarations/natdegree-prod--45acc67aef3964a4df2c3ce0.md) | 185 | `result-track:45acc67aef3964a4df2c3ce0251ef61a1ddcbd6a7850b1da1e067b73ee5423d8` |
| 16 | `theorem` | [natDegree_multiset_prod_of_monic](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant4d18a71c96875968db31df935980150720122086f9cc49ba2078053e64b0df6b.lean/declarations/natdegree-multiset-prod-of-monic--28944b00e5a1c684bc2eb24e.md) | 190 | `result-track:28944b00e5a1c684bc2eb24e3693fcce314617f892a578e1bd36a925ba99159b` |
| 17 | `theorem` | [natDegree_prod_of_monic](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant4d18a71c96875968db31df935980150720122086f9cc49ba2078053e64b0df6b.lean/declarations/natdegree-prod-of-monic--70469f9605c262fd6892e6b8.md) | 206 | `result-track:70469f9605c262fd6892e6b87d3ba1a93532445cbc86e3907eb8f778da4dc1c4` |
| 18 | `theorem` | [coeff_multiset_prod_of_natDegree_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant4d18a71c96875968db31df935980150720122086f9cc49ba2078053e64b0df6b.lean/declarations/coeff-multiset-prod-of-natdegree-le--08144c234c8dd2e4e7a3afc2.md) | 211 | `result-track:08144c234c8dd2e4e7a3afc2cbcd9eec580bceaf9f9c3fc0b9d3f4be6866b53d` |
| 19 | `theorem` | [coeff_prod_of_natDegree_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant4d18a71c96875968db31df935980150720122086f9cc49ba2078053e64b0df6b.lean/declarations/coeff-prod-of-natdegree-le--850cd318179d10403170fc36.md) | 217 | `result-track:850cd318179d10403170fc36771e651fbb6a0f20aa4b4acb4afbd430ff001d92` |
| 20 | `theorem` | [coeff_zero_multiset_prod](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant4d18a71c96875968db31df935980150720122086f9cc49ba2078053e64b0df6b.lean/declarations/coeff-zero-multiset-prod--8e3c477e329614c146e3ce01.md) | 226 | `result-track:8e3c477e329614c146e3ce01ae0f2d3f60d840c38907dc3373d91a9d443d3db4` |
| 21 | `theorem` | [coeff_zero_prod](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant4d18a71c96875968db31df935980150720122086f9cc49ba2078053e64b0df6b.lean/declarations/coeff-zero-prod--563c26b90d092c15d7ba416d.md) | 231 | `result-track:563c26b90d092c15d7ba416df17ebac624b999cb917046a022207556f8f5a315` |
| 22 | `theorem` | [multiset_prod_X_sub_C_nextCoeff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant4d18a71c96875968db31df935980150720122086f9cc49ba2078053e64b0df6b.lean/declarations/multiset-prod-x-sub-c-nextcoeff--9b0057acabecd2dbc0dd51ce.md) | 245 | `result-track:9b0057acabecd2dbc0dd51ce27f248dab1fb42697252f436c8b96c0543f5e420` |
| 23 | `theorem` | [prod_X_sub_C_nextCoeff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant4d18a71c96875968db31df935980150720122086f9cc49ba2078053e64b0df6b.lean/declarations/prod-x-sub-c-nextcoeff--67b0bb98c5222d24534a5938.md) | 255 | `result-track:67b0bb98c5222d24534a593848dafb2fa257f13a4be690eec876b08837074876` |
| 24 | `theorem` | [multiset_prod_X_sub_C_coeff_card_pred](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant4d18a71c96875968db31df935980150720122086f9cc49ba2078053e64b0df6b.lean/declarations/multiset-prod-x-sub-c-coeff-card-pred--78915c88562b16e84c79ae66.md) | 261 | `result-track:78915c88562b16e84c79ae6609445ea9439e734583b57e80879a5323cda1c5c1` |
| 25 | `theorem` | [prod_X_sub_C_coeff_card_pred](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant4d18a71c96875968db31df935980150720122086f9cc49ba2078053e64b0df6b.lean/declarations/prod-x-sub-c-coeff-card-pred--0598625d7c9ad1922e653e9c.md) | 278 | `result-track:0598625d7c9ad1922e653e9ca4ebf80e7a39bfaa089b70b0376d9ad55bc8e4e9` |
| 26 | `theorem` | [degree_list_prod](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant4d18a71c96875968db31df935980150720122086f9cc49ba2078053e64b0df6b.lean/declarations/degree-list-prod--e1e1bc6e8e26be4333216537.md) | 296 | `result-track:e1e1bc6e8e26be4333216537d837835430fb11d8bfaca1f19885624a7e828097` |
| 27 | `theorem` | [natDegree_prod](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant4d18a71c96875968db31df935980150720122086f9cc49ba2078053e64b0df6b.lean/declarations/natdegree-prod--1b9709ee93998f98421a89b0.md) | 312 | `result-track:1b9709ee93998f98421a89b017f9733ba4d483c85d7d0f96bc0d16d1570f67c6` |
| 28 | `theorem` | [natDegree_multiset_prod](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant4d18a71c96875968db31df935980150720122086f9cc49ba2078053e64b0df6b.lean/declarations/natdegree-multiset-prod--fe189d5fc5b6a890e2d019ca.md) | 320 | `result-track:fe189d5fc5b6a890e2d019cad7513fbc6d58c88fdd6de4d77e32cd5b98e84719` |
| 29 | `theorem` | [degree_multiset_prod](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant4d18a71c96875968db31df935980150720122086f9cc49ba2078053e64b0df6b.lean/declarations/degree-multiset-prod--f352f3788d1870ece025ecee.md) | 332 | `result-track:f352f3788d1870ece025ecee48df3d3e4025fd4f056512eb91a6eaeaef32c205` |
| 30 | `theorem` | [degree_prod](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant4d18a71c96875968db31df935980150720122086f9cc49ba2078053e64b0df6b.lean/declarations/degree-prod--3d2dbb6992592dde98c68ace.md) | 339 | `result-track:3d2dbb6992592dde98c68aceb533fd8e55249d809e11b2d2693d19486821738a` |
| 31 | `theorem` | [leadingCoeff_multiset_prod](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant4d18a71c96875968db31df935980150720122086f9cc49ba2078053e64b0df6b.lean/declarations/leadingcoeff-multiset-prod--e968ee612e7c330e95f2ec41.md) | 349 | `result-track:e968ee612e7c330e95f2ec41edaa2f78c4000b30b3892f7476fbf7c497f8acda` |
| 32 | `theorem` | [leadingCoeff_prod](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant4d18a71c96875968db31df935980150720122086f9cc49ba2078053e64b0df6b.lean/declarations/leadingcoeff-prod--bfb02a504e95bb1f3ad05860.md) | 361 | `result-track:bfb02a504e95bb1f3ad058608d0c9fd4c96a2f0d8c49c2bc6239466915fcda34` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
