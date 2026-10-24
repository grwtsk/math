# Verification target: GRWTSK.Algebra.LinearAlgebra.Integer.Variant8e96fba624383ae48a64500a825afa91d1adcb38cc8c4693d82ff01f789515f2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "13e75f70e518f2125f0081f39d317096f27fcf19",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Integer/Variant8e96fba624383ae48a64500a825afa91d1adcb38cc8c4693d82ff01f789515f2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Integer/Variant8e96fba624383ae48a64500a825afa91d1adcb38cc8c4693d82ff01f789515f2.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Integer/Variant8e96fba624383ae48a64500a825afa91d1adcb38cc8c4693d82ff01f789515f2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `13e75f70e518f2125f0081f39d317096f27fcf19`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Integer/Variant8e96fba624383ae48a64500a825afa91d1adcb38cc8c4693d82ff01f789515f2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Integer/Variant8e96fba624383ae48a64500a825afa91d1adcb38cc8c4693d82ff01f789515f2.lean.json)

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
| 1 | `lemma` | [map_mul_natCast](../../../../../mathematics/Algebra/LinearAlgebra/Integer/Variant8e96fba624383ae48a64500a825afa91d1adcb38cc8c4693d82ff01f789515f2.lean/declarations/map-mul-natcast--759983b0e2ec95b0c369c19c.md) | 50 | `result-track:759983b0e2ec95b0c369c19ce82070cb478c30a7e5b1b26c05b7ce8f6810c28b` |
| 2 | `lemma` | [map_mul_intCast](../../../../../mathematics/Algebra/LinearAlgebra/Integer/Variant8e96fba624383ae48a64500a825afa91d1adcb38cc8c4693d82ff01f789515f2.lean/declarations/map-mul-intcast--b6ace94326285b27a8864e43.md) | 54 | `result-track:b6ace94326285b27a8864e43d9a95caa7c5bdae1ea3ea8f216015f5a0208842a` |
| 3 | `lemma` | [map_mul_ratCast](../../../../../mathematics/Algebra/LinearAlgebra/Integer/Variant8e96fba624383ae48a64500a825afa91d1adcb38cc8c4693d82ff01f789515f2.lean/declarations/map-mul-ratcast--21159c33fde77c86f354f05a.md) | 58 | `result-track:21159c33fde77c86f354f05adb335205744290b603b578e2ec2e8828719e3c22` |
| 4 | `def` | [den](../../../../../mathematics/Algebra/LinearAlgebra/Integer/Variant8e96fba624383ae48a64500a825afa91d1adcb38cc8c4693d82ff01f789515f2.lean/declarations/den--baf5d7d82283fddb7f85e228.md) | 68 | `declaration-track:baf5d7d82283fddb7f85e2285cfc52c6e662346d53ade7ca044bb2d45d91b4f7` |
| 5 | `def` | [num](../../../../../mathematics/Algebra/LinearAlgebra/Integer/Variant8e96fba624383ae48a64500a825afa91d1adcb38cc8c4693d82ff01f789515f2.lean/declarations/num--d8ebf75dc9031b2a21cd2f0e.md) | 72 | `declaration-track:d8ebf75dc9031b2a21cd2f0eeadb109f06a4ac231413e77875c82e512a2782ad` |
| 6 | `lemma` | [den_ne_zero](../../../../../mathematics/Algebra/LinearAlgebra/Integer/Variant8e96fba624383ae48a64500a825afa91d1adcb38cc8c4693d82ff01f789515f2.lean/declarations/den-ne-zero--fac1a9bb3375d2036f088dbd.md) | 74 | `result-track:fac1a9bb3375d2036f088dbd2d607f80dff189635b2f14fdc26dbf824b1a2373` |
| 7 | `lemma` | [num_eq_zero_iff](../../../../../mathematics/Algebra/LinearAlgebra/Integer/Variant8e96fba624383ae48a64500a825afa91d1adcb38cc8c4693d82ff01f789515f2.lean/declarations/num-eq-zero-iff--bc7e3c56e3c7408cd7bfe0a8.md) | 77 | `result-track:bc7e3c56e3c7408cd7bfe0a848c2f284878e1c7af65534f65ff8c4b10d7d9fad` |
| 8 | `lemma` | [den_dvd_iff](../../../../../mathematics/Algebra/LinearAlgebra/Integer/Variant8e96fba624383ae48a64500a825afa91d1adcb38cc8c4693d82ff01f789515f2.lean/declarations/den-dvd-iff--8e737b26bb340657a76bf563.md) | 80 | `result-track:8e737b26bb340657a76bf563509fd942c800da3f3bd573073b290913b0df3aff` |
| 9 | `lemma` | [num_div_den](../../../../../mathematics/Algebra/LinearAlgebra/Integer/Variant8e96fba624383ae48a64500a825afa91d1adcb38cc8c4693d82ff01f789515f2.lean/declarations/num-div-den--98439db448a3bd95f02d3c15.md) | 84 | `result-track:98439db448a3bd95f02d3c154fb277bbb5ab35b808efb0e5470ce72a4666d62c` |
| 10 | `lemma` | [inv_denom_smul_num](../../../../../mathematics/Algebra/LinearAlgebra/Integer/Variant8e96fba624383ae48a64500a825afa91d1adcb38cc8c4693d82ff01f789515f2.lean/declarations/inv-denom-smul-num--a18b6b406162c4c0dfa552db.md) | 91 | `result-track:a18b6b406162c4c0dfa552db9df39862be83f0d16957784984eb34a84dbd20d2` |
| 11 | `lemma` | [den_neg](../../../../../mathematics/Algebra/LinearAlgebra/Integer/Variant8e96fba624383ae48a64500a825afa91d1adcb38cc8c4693d82ff01f789515f2.lean/declarations/den-neg--4ccde2e9cf97367dcbbab7f7.md) | 97 | `result-track:4ccde2e9cf97367dcbbab7f7514958b6befe7980311b26450bc57284c53498b7` |
| 12 | `lemma` | [num_neg](../../../../../mathematics/Algebra/LinearAlgebra/Integer/Variant8e96fba624383ae48a64500a825afa91d1adcb38cc8c4693d82ff01f789515f2.lean/declarations/num-neg--4382f3c7396e688434b77658.md) | 101 | `result-track:4382f3c7396e688434b776580fc3489fe7be67f2ca98df01306bdca29e0b1749` |
| 13 | `lemma` | [den_transpose](../../../../../mathematics/Algebra/LinearAlgebra/Integer/Variant8e96fba624383ae48a64500a825afa91d1adcb38cc8c4693d82ff01f789515f2.lean/declarations/den-transpose--d380090498dc509a674b81f1.md) | 105 | `result-track:d380090498dc509a674b81f11d49a7b6529e370ca0fcc66c8669beb400a50afa` |
| 14 | `lemma` | [num_transpose](../../../../../mathematics/Algebra/LinearAlgebra/Integer/Variant8e96fba624383ae48a64500a825afa91d1adcb38cc8c4693d82ff01f789515f2.lean/declarations/num-transpose--c616eae035e6e4d5441132df.md) | 108 | `result-track:c616eae035e6e4d5441132df55c3de2d02328d40bd972a574b42b160d16675dc` |
| 15 | `lemma` | [den_map_intCast](../../../../../mathematics/Algebra/LinearAlgebra/Integer/Variant8e96fba624383ae48a64500a825afa91d1adcb38cc8c4693d82ff01f789515f2.lean/declarations/den-map-intcast--d7f58f8c843236bbc4a75cb9.md) | 116 | `result-track:d7f58f8c843236bbc4a75cb9896557114b2dee42ffd6e5e9fe66d22b04052a93` |
| 16 | `lemma` | [num_map_intCast](../../../../../mathematics/Algebra/LinearAlgebra/Integer/Variant8e96fba624383ae48a64500a825afa91d1adcb38cc8c4693d82ff01f789515f2.lean/declarations/num-map-intcast--034727212e846e96cd9f13e1.md) | 120 | `result-track:034727212e846e96cd9f13e1b498db293c6c097db9c31a23227f897eca8c850d` |
| 17 | `lemma` | [den_map_natCast](../../../../../mathematics/Algebra/LinearAlgebra/Integer/Variant8e96fba624383ae48a64500a825afa91d1adcb38cc8c4693d82ff01f789515f2.lean/declarations/den-map-natcast--84eefc44490cb678a47c9d3c.md) | 124 | `result-track:84eefc44490cb678a47c9d3c18608681bc8bd0f31754ed2c1db957f718e7e29c` |
| 18 | `lemma` | [num_map_natCast](../../../../../mathematics/Algebra/LinearAlgebra/Integer/Variant8e96fba624383ae48a64500a825afa91d1adcb38cc8c4693d82ff01f789515f2.lean/declarations/num-map-natcast--84802d7d9f3e488c6a978be7.md) | 128 | `result-track:84802d7d9f3e488c6a978be729e65ed93ed41643b71051d85a31859dfbdd4942` |
| 19 | `lemma` | [den_natCast](../../../../../mathematics/Algebra/LinearAlgebra/Integer/Variant8e96fba624383ae48a64500a825afa91d1adcb38cc8c4693d82ff01f789515f2.lean/declarations/den-natcast--87aa9a1fef9f7abaf231ed0f.md) | 136 | `result-track:87aa9a1fef9f7abaf231ed0f368ef36808e843fe089eacdb93120c9c2cc4cd84` |
| 20 | `lemma` | [num_natCast](../../../../../mathematics/Algebra/LinearAlgebra/Integer/Variant8e96fba624383ae48a64500a825afa91d1adcb38cc8c4693d82ff01f789515f2.lean/declarations/num-natcast--19653c94a75a8a0d5238664e.md) | 140 | `result-track:19653c94a75a8a0d5238664ef5dd05e2900a657b9916d9eb64ab6e875ae34387` |
| 21 | `lemma` | [den_ofNat](../../../../../mathematics/Algebra/LinearAlgebra/Integer/Variant8e96fba624383ae48a64500a825afa91d1adcb38cc8c4693d82ff01f789515f2.lean/declarations/den-ofnat--04e55f9dc5126c8ae1a79129.md) | 144 | `result-track:04e55f9dc5126c8ae1a7912947f806e8cd8d3ace71e39da2229377786d611705` |
| 22 | `lemma` | [num_ofNat](../../../../../mathematics/Algebra/LinearAlgebra/Integer/Variant8e96fba624383ae48a64500a825afa91d1adcb38cc8c4693d82ff01f789515f2.lean/declarations/num-ofnat--55da5544544ef036fb2da6e7.md) | 149 | `result-track:55da5544544ef036fb2da6e7f38407673b52427389b484df40e7d0392e1ce37e` |
| 23 | `lemma` | [den_intCast](../../../../../mathematics/Algebra/LinearAlgebra/Integer/Variant8e96fba624383ae48a64500a825afa91d1adcb38cc8c4693d82ff01f789515f2.lean/declarations/den-intcast--b90a327cc6b5c3f00317ecc9.md) | 154 | `result-track:b90a327cc6b5c3f00317ecc91feaa80485687c1da6b9dfef91700eefeff32dfe` |
| 24 | `lemma` | [num_intCast](../../../../../mathematics/Algebra/LinearAlgebra/Integer/Variant8e96fba624383ae48a64500a825afa91d1adcb38cc8c4693d82ff01f789515f2.lean/declarations/num-intcast--c6df99e5711536d2b53ee8d7.md) | 158 | `result-track:c6df99e5711536d2b53ee8d7e5221a43c298f6c7e189fba74734687e5b6972db` |
| 25 | `lemma` | [den_zero](../../../../../mathematics/Algebra/LinearAlgebra/Integer/Variant8e96fba624383ae48a64500a825afa91d1adcb38cc8c4693d82ff01f789515f2.lean/declarations/den-zero--bcd5a6a467b22f00d7267283.md) | 162 | `result-track:bcd5a6a467b22f00d7267283cd021c8dea201d1aaac17eff4c0880efd3365897` |
| 26 | `lemma` | [num_zero](../../../../../mathematics/Algebra/LinearAlgebra/Integer/Variant8e96fba624383ae48a64500a825afa91d1adcb38cc8c4693d82ff01f789515f2.lean/declarations/num-zero--4d88a69c6d5e37c74af0cddf.md) | 166 | `result-track:4d88a69c6d5e37c74af0cddff8d0ec0f6171cabb7f446ad8ac16366b903afd6e` |
| 27 | `lemma` | [den_one](../../../../../mathematics/Algebra/LinearAlgebra/Integer/Variant8e96fba624383ae48a64500a825afa91d1adcb38cc8c4693d82ff01f789515f2.lean/declarations/den-one--af8e015239166f940eae5b48.md) | 170 | `result-track:af8e015239166f940eae5b48139c62dd4bb894766da942e624ec31868b37068c` |
| 28 | `lemma` | [num_one](../../../../../mathematics/Algebra/LinearAlgebra/Integer/Variant8e96fba624383ae48a64500a825afa91d1adcb38cc8c4693d82ff01f789515f2.lean/declarations/num-one--799bf957b9860b59b2878d04.md) | 174 | `result-track:799bf957b9860b59b2878d04215127d4337e4f9eb2941d4ea350db08e8882091` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
