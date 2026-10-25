# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Lemmas.Varianta2484aa23b2f5d28a326e7b73a19012db64e529ab35be854079d2b0dd05067d5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c74aba3a4dc2b61b2ce63d05fcedc4086b798c43",
  "lexical_observation_count": 38,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Varianta2484aa23b2f5d28a326e7b73a19012db64e529ab35be854079d2b0dd05067d5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Varianta2484aa23b2f5d28a326e7b73a19012db64e529ab35be854079d2b0dd05067d5.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Varianta2484aa23b2f5d28a326e7b73a19012db64e529ab35be854079d2b0dd05067d5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c74aba3a4dc2b61b2ce63d05fcedc4086b798c43`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Varianta2484aa23b2f5d28a326e7b73a19012db64e529ab35be854079d2b0dd05067d5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Varianta2484aa23b2f5d28a326e7b73a19012db64e529ab35be854079d2b0dd05067d5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Init.Data.Bool.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Init.Logic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Coe` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [cond_true](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Varianta2484aa23b2f5d28a326e7b73a19012db64e529ab35be854079d2b0dd05067d5.lean/declarations/cond-true--79e9353bdd362da2cda96049.md) | 40 | `result-track:79e9353bdd362da2cda96049ca7785086c5cad20cb9351fc51f0bd80580dbbf1` |
| 2 | `lemma` | [cond_false](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Varianta2484aa23b2f5d28a326e7b73a19012db64e529ab35be854079d2b0dd05067d5.lean/declarations/cond-false--0801075b4d47479544196bf1.md) | 43 | `result-track:0801075b4d47479544196bf165b302cd834635d3799736f481c89accdbb71920` |
| 3 | `theorem` | [cond_self.](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Varianta2484aa23b2f5d28a326e7b73a19012db64e529ab35be854079d2b0dd05067d5.lean/declarations/cond-self--977c1999085204ee098bae07.md) | 47 | `result-track:977c1999085204ee098bae07e3066902e8962f4a029c31c2819440927af849a7` |
| 4 | `theorem` | [xor_self](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Varianta2484aa23b2f5d28a326e7b73a19012db64e529ab35be854079d2b0dd05067d5.lean/declarations/xor-self--d1736c52f7926044bf5fa83b.md) | 51 | `result-track:d1736c52f7926044bf5fa83b47916481f8200838aca665d835941e09024e09e8` |
| 5 | `theorem` | [xor_true](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Varianta2484aa23b2f5d28a326e7b73a19012db64e529ab35be854079d2b0dd05067d5.lean/declarations/xor-true--708c1abf842d8333e88a4a91.md) | 55 | `result-track:708c1abf842d8333e88a4a919c205cb67ba2fcb22e297ce2ad3e8b74bd20691c` |
| 6 | `theorem` | [xor_false](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Varianta2484aa23b2f5d28a326e7b73a19012db64e529ab35be854079d2b0dd05067d5.lean/declarations/xor-false--5ed3e066aac379566e333e95.md) | 58 | `result-track:5ed3e066aac379566e333e95c79f8ccb94f77230c435e9ebf3d4e0d3640b2107` |
| 7 | `theorem` | [true_xor](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Varianta2484aa23b2f5d28a326e7b73a19012db64e529ab35be854079d2b0dd05067d5.lean/declarations/true-xor--97704c2a5a25fa3161c13d28.md) | 62 | `result-track:97704c2a5a25fa3161c13d28d723385d8390078dcd802857652d7e84d8cffa6b` |
| 8 | `theorem` | [false_xor](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Varianta2484aa23b2f5d28a326e7b73a19012db64e529ab35be854079d2b0dd05067d5.lean/declarations/false-xor--0e9d6e3f23d072b12b76388b.md) | 65 | `result-track:0e9d6e3f23d072b12b76388b9c6bc83baca1be61279a95cf953d8aafb17d2089` |
| 9 | `theorem` | [true_eq_false_eq_False](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Varianta2484aa23b2f5d28a326e7b73a19012db64e529ab35be854079d2b0dd05067d5.lean/declarations/true-eq-false-eq-false--156da77fc3c8e9ea634b78ae.md) | 68 | `result-track:156da77fc3c8e9ea634b78aeb4ca464e729dc60c00cbb6259d489e3b5f0e1043` |
| 10 | `theorem` | [false_eq_true_eq_False](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Varianta2484aa23b2f5d28a326e7b73a19012db64e529ab35be854079d2b0dd05067d5.lean/declarations/false-eq-true-eq-false--154ce731cbdfc491d7d278d5.md) | 71 | `result-track:154ce731cbdfc491d7d278d57f023caba15bd891e1d6eb00a0fcc2484da597a8` |
| 11 | `theorem` | [eq_false_eq_not_eq_true](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Varianta2484aa23b2f5d28a326e7b73a19012db64e529ab35be854079d2b0dd05067d5.lean/declarations/eq-false-eq-not-eq-true--b7c2d48020e7ea76ae989d92.md) | 74 | `result-track:b7c2d48020e7ea76ae989d9281dc838726008a72038b0230fb677887db91fac2` |
| 12 | `theorem` | [eq_true_eq_not_eq_false](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Varianta2484aa23b2f5d28a326e7b73a19012db64e529ab35be854079d2b0dd05067d5.lean/declarations/eq-true-eq-not-eq-false--a01d977f64dfa26cc323c5e2.md) | 77 | `result-track:a01d977f64dfa26cc323c5e21d8aa73eff61f295581a2ee53901b0812e9dae6d` |
| 13 | `theorem` | [eq_false_of_not_eq_true](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Varianta2484aa23b2f5d28a326e7b73a19012db64e529ab35be854079d2b0dd05067d5.lean/declarations/eq-false-of-not-eq-true--dbffb065cf06ba30d926ebe3.md) | 80 | `result-track:dbffb065cf06ba30d926ebe341a84a88f98f98ca548ea297cbe6c143396eeb43` |
| 14 | `theorem` | [eq_true_of_not_eq_false](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Varianta2484aa23b2f5d28a326e7b73a19012db64e529ab35be854079d2b0dd05067d5.lean/declarations/eq-true-of-not-eq-false--7582f3e98cef9fc8bc33cd54.md) | 84 | `result-track:7582f3e98cef9fc8bc33cd547e83905082711eeb1084e6808963e47bd1abcafb` |
| 15 | `theorem` | [and_eq_true_eq_eq_true_and_eq_true](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Varianta2484aa23b2f5d28a326e7b73a19012db64e529ab35be854079d2b0dd05067d5.lean/declarations/and-eq-true-eq-eq-true-and-eq-true--0b60db1663a64b61d077ca32.md) | 88 | `result-track:0b60db1663a64b61d077ca3221340cf8d2f018fb5bce3f393d04f7d0d6020896` |
| 16 | `theorem` | [or_eq_true_eq_eq_true_or_eq_true](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Varianta2484aa23b2f5d28a326e7b73a19012db64e529ab35be854079d2b0dd05067d5.lean/declarations/or-eq-true-eq-eq-true-or-eq-true--1d0b02b0f7986ce48fb8d706.md) | 92 | `result-track:1d0b02b0f7986ce48fb8d7068b2a60d03104de54dad47605c428c5293d7e701b` |
| 17 | `theorem` | [not_eq_true_eq_eq_false](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Varianta2484aa23b2f5d28a326e7b73a19012db64e529ab35be854079d2b0dd05067d5.lean/declarations/not-eq-true-eq-eq-false--d642b3b34e987e8ab3eb041e.md) | 96 | `result-track:d642b3b34e987e8ab3eb041e33ae94ed7d5abc58606689be4aa21a3c00302cbb` |
| 18 | `theorem` | [and_eq_false_eq_eq_false_or_eq_false](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Varianta2484aa23b2f5d28a326e7b73a19012db64e529ab35be854079d2b0dd05067d5.lean/declarations/and-eq-false-eq-eq-false-or-eq-false--252e03b574faa91b0d2c811c.md) | 100 | `result-track:252e03b574faa91b0d2c811ceee5e97deb75e7deec618ef5b173e707f6f52bbb` |
| 19 | `theorem` | [or_eq_false_eq_eq_false_and_eq_false](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Varianta2484aa23b2f5d28a326e7b73a19012db64e529ab35be854079d2b0dd05067d5.lean/declarations/or-eq-false-eq-eq-false-and-eq-false--08d1692ec6eb5a24a3eb216e.md) | 106 | `result-track:08d1692ec6eb5a24a3eb216e63c6d8c368b546d483325975cc6b4cd343ec692a` |
| 20 | `theorem` | [not_eq_false_eq_eq_true](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Varianta2484aa23b2f5d28a326e7b73a19012db64e529ab35be854079d2b0dd05067d5.lean/declarations/not-eq-false-eq-eq-true--3fa5c958df047d2c1fe0bc53.md) | 111 | `result-track:3fa5c958df047d2c1fe0bc53a7df6e4813c6fbcb7b9d7899b83e9c7db815b4a6` |
| 21 | `theorem` | [coe_false](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Varianta2484aa23b2f5d28a326e7b73a19012db64e529ab35be854079d2b0dd05067d5.lean/declarations/coe-false--8e167baf17fa5a05267aaa19.md) | 114 | `result-track:8e167baf17fa5a05267aaa1983ede9e9c89ef63caae14346761d504394d214b6` |
| 22 | `theorem` | [coe_true](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Varianta2484aa23b2f5d28a326e7b73a19012db64e529ab35be854079d2b0dd05067d5.lean/declarations/coe-true--65fc70b81f55e9e3343521ab.md) | 117 | `result-track:65fc70b81f55e9e3343521ab3286a06ffd3acbcf62f81f38ec0f64f8bf2c93db` |
| 23 | `theorem` | [coe_sort_false](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Varianta2484aa23b2f5d28a326e7b73a19012db64e529ab35be854079d2b0dd05067d5.lean/declarations/coe-sort-false--0b9bd91f72827ccf54c86fb8.md) | 120 | `result-track:0b9bd91f72827ccf54c86fb86f544679f7dbd66d9215f8dfbf2aed1150adf59d` |
| 24 | `theorem` | [coe_sort_true](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Varianta2484aa23b2f5d28a326e7b73a19012db64e529ab35be854079d2b0dd05067d5.lean/declarations/coe-sort-true--a0e192e94a16399365c62d1e.md) | 123 | `result-track:a0e192e94a16399365c62d1edf2048cbf6f11cdbb5af4b5f84d5a5c5906f17ee` |
| 25 | `theorem` | [decide_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Varianta2484aa23b2f5d28a326e7b73a19012db64e529ab35be854079d2b0dd05067d5.lean/declarations/decide-iff--fbd089a942a8e7b76f3f17cb.md) | 126 | `result-track:fbd089a942a8e7b76f3f17cb72b213cc6a9b6f61864710b136c7c18a9f03f412` |
| 26 | `theorem` | [decide_true](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Varianta2484aa23b2f5d28a326e7b73a19012db64e529ab35be854079d2b0dd05067d5.lean/declarations/decide-true--8062ebef197efa9b62906b16.md) | 129 | `result-track:8062ebef197efa9b62906b16dd31ff5574ed370d351246f5f9eb83213815eafa` |
| 27 | `theorem` | [of_decide_true](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Varianta2484aa23b2f5d28a326e7b73a19012db64e529ab35be854079d2b0dd05067d5.lean/declarations/of-decide-true--6ca51bc0c12f0e1cc52d9bf9.md) | 134 | `result-track:6ca51bc0c12f0e1cc52d9bf92fe7cbb296efef986651dc422364bc04fb886c58` |
| 28 | `theorem` | [bool_iff_false](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Varianta2484aa23b2f5d28a326e7b73a19012db64e529ab35be854079d2b0dd05067d5.lean/declarations/bool-iff-false--61b045aaad8b846dd315ce1c.md) | 138 | `result-track:61b045aaad8b846dd315ce1c36fd101b2321063ca1e4c35f38ac862f6794eaff` |
| 29 | `theorem` | [bool_eq_false](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Varianta2484aa23b2f5d28a326e7b73a19012db64e529ab35be854079d2b0dd05067d5.lean/declarations/bool-eq-false--9779fcb9cc09150821bb4b1e.md) | 141 | `result-track:9779fcb9cc09150821bb4b1edfd146dce82ec608629e03fea96f2b1a6d79fe7c` |
| 30 | `theorem` | [decide_false_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Varianta2484aa23b2f5d28a326e7b73a19012db64e529ab35be854079d2b0dd05067d5.lean/declarations/decide-false-iff--6858319201f9ac650a6269d6.md) | 145 | `result-track:6858319201f9ac650a6269d63bab1f8048c8218de308e89941b93d76a242e627` |
| 31 | `theorem` | [decide_false](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Varianta2484aa23b2f5d28a326e7b73a19012db64e529ab35be854079d2b0dd05067d5.lean/declarations/decide-false--aa0a5085d0f8ea740c93270c.md) | 149 | `result-track:aa0a5085d0f8ea740c93270cd845474a04ef864810b46ec0f724f7df744fa169` |
| 32 | `theorem` | [of_decide_false](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Varianta2484aa23b2f5d28a326e7b73a19012db64e529ab35be854079d2b0dd05067d5.lean/declarations/of-decide-false--8ddedb6f9e31ab35153ece37.md) | 153 | `result-track:8ddedb6f9e31ab35153ece377174f51af0323099931d0ed35f139b738e5bd22f` |
| 33 | `theorem` | [decide_congr](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Varianta2484aa23b2f5d28a326e7b73a19012db64e529ab35be854079d2b0dd05067d5.lean/declarations/decide-congr--9dd2c292347d98bcdd99eace.md) | 157 | `result-track:9dd2c292347d98bcdd99eace8ffff721abfbb27ab097013d1ba487cf666ef8c9` |
| 34 | `theorem` | [or_coe_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Varianta2484aa23b2f5d28a326e7b73a19012db64e529ab35be854079d2b0dd05067d5.lean/declarations/or-coe-iff--5c52504c355f555a94336496.md) | 164 | `result-track:5c52504c355f555a943364967a473d130c162e420dba74b53ad7727dd85ad09c` |
| 35 | `theorem` | [and_coe_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Varianta2484aa23b2f5d28a326e7b73a19012db64e529ab35be854079d2b0dd05067d5.lean/declarations/and-coe-iff--9bbda9208876c734949b7654.md) | 167 | `result-track:9bbda9208876c734949b7654c38e5d6e809a492afc3fbed316240429aabece29` |
| 36 | `theorem` | [xor_coe_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Varianta2484aa23b2f5d28a326e7b73a19012db64e529ab35be854079d2b0dd05067d5.lean/declarations/xor-coe-iff--218a5aa859df2206adde6b06.md) | 171 | `result-track:218a5aa859df2206adde6b069eb5ccf027405dd2436db12c5de194931b4cd4ae` |
| 37 | `theorem` | [ite_eq_true_distrib](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Varianta2484aa23b2f5d28a326e7b73a19012db64e529ab35be854079d2b0dd05067d5.lean/declarations/ite-eq-true-distrib--190d23eb826f794d3a6fa14d.md) | 176 | `result-track:190d23eb826f794d3a6fa14dab6837f26746213376a28f7c9abad6bf1d9c178a` |
| 38 | `theorem` | [ite_eq_false_distrib](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Varianta2484aa23b2f5d28a326e7b73a19012db64e529ab35be854079d2b0dd05067d5.lean/declarations/ite-eq-false-distrib--eabca3b2cce63c02beb5ed0d.md) | 181 | `result-track:eabca3b2cce63c02beb5ed0d9d8893fed26108cf94769f6093f93592cea5d413` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
