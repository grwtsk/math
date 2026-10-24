# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.Chebyshev.Variantc6522001fc61cc44cf104a10928cdb8c4d7aed1c7e2aa275a844fd6b5497d1c3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "045466a6d1938b36edf6ae23c75be1b0d2dda31f",
  "lexical_observation_count": 38,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/Chebyshev/Variantc6522001fc61cc44cf104a10928cdb8c4d7aed1c7e2aa275a844fd6b5497d1c3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Chebyshev/Variantc6522001fc61cc44cf104a10928cdb8c4d7aed1c7e2aa275a844fd6b5497d1c3.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Chebyshev/Variantc6522001fc61cc44cf104a10928cdb8c4d7aed1c7e2aa275a844fd6b5497d1c3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `045466a6d1938b36edf6ae23c75be1b0d2dda31f`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/Chebyshev/Variantc6522001fc61cc44cf104a10928cdb8c4d7aed1c7e2aa275a844fd6b5497d1c3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/Chebyshev/Variantc6522001fc61cc44cf104a10928cdb8c4d7aed1c7e2aa275a844fd6b5497d1c3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Lie.OfAssociative` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Ring.Star` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Rat.Cast.OfScientific` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Real.StarOrdered` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.Chebyshev` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.NormNum.BigOperators` — import line 11; external provider; requires a separately pinned dependency.
- `PrimeNumberTheoremAnd.IEANTN.LogTables` — import line 12; external provider; requires a separately pinned dependency.
- `PrimeNumberTheoremAnd.IEANTN.SecondaryDefinitions` — import line 13; external provider; requires a separately pinned dependency.
- `LeanCert.Engine.ChebyshevPsi` — import line 14; external provider; requires a separately pinned dependency.
- `LeanCert.Tactic.IntervalAuto` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [T](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Chebyshev/Variantc6522001fc61cc44cf104a10928cdb8c4d7aed1c7e2aa275a844fd6b5497d1c3.lean/declarations/t--8dffcc6ec18b97bb4c8e015d.md) | 37 | `declaration-track:8dffcc6ec18b97bb4c8e015da358018cb96e4971a5efe4bbd70b646b54fcdfda` |
| 2 | `theorem` | [T.le](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Chebyshev/Variantc6522001fc61cc44cf104a10928cdb8c4d7aed1c7e2aa275a844fd6b5497d1c3.lean/declarations/t-le--773b3ec74908329a55bb53d8.md) | 49 | `result-track:773b3ec74908329a55bb53d8bb6da76b1e330ddd2a8ed830af40fd0a7cb9d866` |
| 3 | `theorem` | [T.ge](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Chebyshev/Variantc6522001fc61cc44cf104a10928cdb8c4d7aed1c7e2aa275a844fd6b5497d1c3.lean/declarations/t-ge--7bed8d8b25404238e2421ad5.md) | 88 | `result-track:7bed8d8b25404238e2421ad5eb5d2b044320adad5e7c05b1477fd949b60372e9` |
| 4 | `theorem` | [T.eq_sum_Lambda](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Chebyshev/Variantc6522001fc61cc44cf104a10928cdb8c4d7aed1c7e2aa275a844fd6b5497d1c3.lean/declarations/t-eq-sum-lambda--76ecd420b0fdba5c3ee31f89.md) | 122 | `result-track:76ecd420b0fdba5c3ee31f89030621db4e06bfba1accbe8d9dd86d05f306eac6` |
| 5 | `def` | [E](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Chebyshev/Variantc6522001fc61cc44cf104a10928cdb8c4d7aed1c7e2aa275a844fd6b5497d1c3.lean/declarations/e--6f71d28b5f72c6536d93066f.md) | 132 | `declaration-track:6f71d28b5f72c6536d93066fc261cc6694498fc77476df02a090af5309ba51db` |
| 6 | `theorem` | [T.weighted_eq_sum](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Chebyshev/Variantc6522001fc61cc44cf104a10928cdb8c4d7aed1c7e2aa275a844fd6b5497d1c3.lean/declarations/t-weighted-eq-sum--adce78d4f6dcfba14df99da7.md) | 141 | `result-track:adce78d4f6dcfba14df99da74b186e5cf377b4d6f2d5e12c526a73f1d310b4ae` |
| 7 | `def` | [ν](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Chebyshev/Variantc6522001fc61cc44cf104a10928cdb8c4d7aed1c7e2aa275a844fd6b5497d1c3.lean/declarations/anonymous--2445d28851836e6b24007add.md) | 173 | `declaration-track:2445d28851836e6b24007add20e7280210125c2a251e4d7a1aa2b3d585856162` |
| 8 | `lemma` | [ν_support](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Chebyshev/Variantc6522001fc61cc44cf104a10928cdb8c4d7aed1c7e2aa275a844fd6b5497d1c3.lean/declarations/support--3a06cf78a6ea5290f29cf51d.md) | 176 | `result-track:3a06cf78a6ea5290f29cf51d25670cf0fcf2a17c7ead87f059a7d9487d59734e` |
| 9 | `lemma` | [ν_sum_mul](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Chebyshev/Variantc6522001fc61cc44cf104a10928cdb8c4d7aed1c7e2aa275a844fd6b5497d1c3.lean/declarations/sum-mul--b2389a443adbeb3a2272711f.md) | 182 | `result-track:b2389a443adbeb3a2272711f01f6624ce1b936fe49fded53cf3be627904afe78` |
| 10 | `lemma` | [E_nu_expand](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Chebyshev/Variantc6522001fc61cc44cf104a10928cdb8c4d7aed1c7e2aa275a844fd6b5497d1c3.lean/declarations/e-nu-expand--61d93652c2783be709ac29c5.md) | 189 | `result-track:61d93652c2783be709ac29c52275a6e7cab378bac1256863b05036448653ae0b` |
| 11 | `lemma` | [floor_div_bounds](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Chebyshev/Variantc6522001fc61cc44cf104a10928cdb8c4d7aed1c7e2aa275a844fd6b5497d1c3.lean/declarations/floor-div-bounds--13f0b91cc647985038cf6bb1.md) | 195 | `result-track:13f0b91cc647985038cf6bb1337c02e14024c68c17392769aa4fa7793126fe56` |
| 12 | `theorem` | [nu_sum_div_eq_zero](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Chebyshev/Variantc6522001fc61cc44cf104a10928cdb8c4d7aed1c7e2aa275a844fd6b5497d1c3.lean/declarations/nu-sum-div-eq-zero--2654fe4b176397bb38224fde.md) | 216 | `result-track:2654fe4b176397bb38224fdec2d38036ebd671873143029d8d4415985c7054b0` |
| 13 | `theorem` | [E_nu_eq_one](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Chebyshev/Variantc6522001fc61cc44cf104a10928cdb8c4d7aed1c7e2aa275a844fd6b5497d1c3.lean/declarations/e-nu-eq-one--0055cfc0ee27a338c1037179.md) | 226 | `result-track:0055cfc0ee27a338c1037179e7f37de9afed657a80b517d7897fa12544dca75a` |
| 14 | `theorem` | [E_nu_period](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Chebyshev/Variantc6522001fc61cc44cf104a10928cdb8c4d7aed1c7e2aa275a844fd6b5497d1c3.lean/declarations/e-nu-period--065fe12ba2b245b29222f623.md) | 245 | `result-track:065fe12ba2b245b29222f6230234f90d1178dcde72e017a4724574157251825c` |
| 15 | `theorem` | [E_nu_bound](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Chebyshev/Variantc6522001fc61cc44cf104a10928cdb8c4d7aed1c7e2aa275a844fd6b5497d1c3.lean/declarations/e-nu-bound--ecdddd9b6d829a19ab6bc2e1.md) | 260 | `result-track:ecdddd9b6d829a19ab6bc2e150ae7dfb7c9b04b5bf9e5cf3f481ca4c0be83e77` |
| 16 | `def` | [U](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Chebyshev/Variantc6522001fc61cc44cf104a10928cdb8c4d7aed1c7e2aa275a844fd6b5497d1c3.lean/declarations/u--34c5697f0d85addf3f33a2c5.md) | 288 | `declaration-track:34c5697f0d85addf3f33a2c5a65269f4d474f74418cdaba849132b0a4923cdd4` |
| 17 | `theorem` | [psi_ge_weighted](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Chebyshev/Variantc6522001fc61cc44cf104a10928cdb8c4d7aed1c7e2aa275a844fd6b5497d1c3.lean/declarations/psi-ge-weighted--db727a0225546c3b1aaeef25.md) | 297 | `result-track:db727a0225546c3b1aaeef25f59f59ef74a2d5251fade7d756e4ee2e0faf12ec` |
| 18 | `theorem` | [psi_diff_le_weighted](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Chebyshev/Variantc6522001fc61cc44cf104a10928cdb8c4d7aed1c7e2aa275a844fd6b5497d1c3.lean/declarations/psi-diff-le-weighted--ae1cf99b1ab83f0ba451d6b6.md) | 312 | `result-track:ae1cf99b1ab83f0ba451d6b660c4408f011034f400f6c221ca2f19dd416d1bc0` |
| 19 | `def` | [a](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Chebyshev/Variantc6522001fc61cc44cf104a10928cdb8c4d7aed1c7e2aa275a844fd6b5497d1c3.lean/declarations/a--5e812c67356fd89fbcb23e25.md) | 335 | `declaration-track:5e812c67356fd89fbcb23e25f72bbd17dfb8cfea2d944d133376abf5aeb25ce6` |
| 20 | `lemma` | [a_simpl](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Chebyshev/Variantc6522001fc61cc44cf104a10928cdb8c4d7aed1c7e2aa275a844fd6b5497d1c3.lean/declarations/a-simpl--059a2598e60d98a791831ef9.md) | 337 | `result-track:059a2598e60d98a791831ef95ae6dbc27f1b638e1a947b560cee23c142dfae8f` |
| 21 | `theorem` | [a_bound](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Chebyshev/Variantc6522001fc61cc44cf104a10928cdb8c4d7aed1c7e2aa275a844fd6b5497d1c3.lean/declarations/a-bound--e996dff537064a6de4ff794f.md) | 348 | `result-track:e996dff537064a6de4ff794f556332f24f79ec24ff050f2ddab2e09573436549` |
| 22 | `def` | [e](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Chebyshev/Variantc6522001fc61cc44cf104a10928cdb8c4d7aed1c7e2aa275a844fd6b5497d1c3.lean/declarations/e--e13f87c72df653cea4cd42cb.md) | 352 | `declaration-track:e13f87c72df653cea4cd42cb4acc9bcc892614b838c5d8a77b2132e6e8db69dd` |
| 23 | `lemma` | [U_bound.lemma_1](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Chebyshev/Variantc6522001fc61cc44cf104a10928cdb8c4d7aed1c7e2aa275a844fd6b5497d1c3.lean/declarations/u-bound-lemma-1--6a67786f93573e16ab44cb98.md) | 355 | `result-track:6a67786f93573e16ab44cb98ed7ade684f5422f286516d241ca5fe9d2ae0d77f` |
| 24 | `lemma` | [U_bound.lemma_2](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Chebyshev/Variantc6522001fc61cc44cf104a10928cdb8c4d7aed1c7e2aa275a844fd6b5497d1c3.lean/declarations/u-bound-lemma-2--9e495a294e6134124e9da636.md) | 359 | `result-track:9e495a294e6134124e9da636275671d1c319357103ef67909ffb802016842213` |
| 25 | `lemma` | [U_bound.lemma_3](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Chebyshev/Variantc6522001fc61cc44cf104a10928cdb8c4d7aed1c7e2aa275a844fd6b5497d1c3.lean/declarations/u-bound-lemma-3--5e253ebd745126cf15fe67be.md) | 364 | `result-track:5e253ebd745126cf15fe67be9945b48bcaef97fc0888858661c5add6373f48d0` |
| 26 | `lemma` | [U_bound.lemma_4](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Chebyshev/Variantc6522001fc61cc44cf104a10928cdb8c4d7aed1c7e2aa275a844fd6b5497d1c3.lean/declarations/u-bound-lemma-4--fc9656c854ebc307dc690c1e.md) | 371 | `result-track:fc9656c854ebc307dc690c1ed95dddefadddadb4a610ced23bbe01f87995fe6d` |
| 27 | `lemma` | [U_bound.lemma_5](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Chebyshev/Variantc6522001fc61cc44cf104a10928cdb8c4d7aed1c7e2aa275a844fd6b5497d1c3.lean/declarations/u-bound-lemma-5--d39db985bebd02cc733bded7.md) | 380 | `result-track:d39db985bebd02cc733bded72fb5970352678171c90fc1c7ea2822793c1d5c5d` |
| 28 | `lemma` | [U_bound.lemma_6](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Chebyshev/Variantc6522001fc61cc44cf104a10928cdb8c4d7aed1c7e2aa275a844fd6b5497d1c3.lean/declarations/u-bound-lemma-6--5355f151b19804c49716b57f.md) | 383 | `result-track:5355f151b19804c49716b57f6688c6ce9c9757e37f06462d80ba3b8a3ddea076` |
| 29 | `lemma` | [Finsupp.abs_sum_le](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Chebyshev/Variantc6522001fc61cc44cf104a10928cdb8c4d7aed1c7e2aa275a844fd6b5497d1c3.lean/declarations/finsupp-abs-sum-le--f2921a801a3d906cde25af41.md) | 386 | `result-track:f2921a801a3d906cde25af41a5902cd9e5a7fbf9dc731c7425fe53996577782e` |
| 30 | `theorem` | [U_bound](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Chebyshev/Variantc6522001fc61cc44cf104a10928cdb8c4d7aed1c7e2aa275a844fd6b5497d1c3.lean/declarations/u-bound--5731e4f15765f27980e1894b.md) | 397 | `result-track:5731e4f15765f27980e1894b836d6efc7fbdacd0ead4d0c05dd15ec92164495b` |
| 31 | `theorem` | [psi_lower](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Chebyshev/Variantc6522001fc61cc44cf104a10928cdb8c4d7aed1c7e2aa275a844fd6b5497d1c3.lean/declarations/psi-lower--9754c11e6458fd0574eb468b.md) | 459 | `result-track:9754c11e6458fd0574eb468b1da5a412831b3d8a3204167044ec321f147b5121` |
| 32 | `theorem` | [psi_diff_upper](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Chebyshev/Variantc6522001fc61cc44cf104a10928cdb8c4d7aed1c7e2aa275a844fd6b5497d1c3.lean/declarations/psi-diff-upper--dcb50a867d26915623dba4de.md) | 470 | `result-track:dcb50a867d26915623dba4def52af99d67e9c6a7633e23923b1229005cf8c649` |
| 33 | `theorem` | [psi_num](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Chebyshev/Variantc6522001fc61cc44cf104a10928cdb8c4d7aed1c7e2aa275a844fd6b5497d1c3.lean/declarations/psi-num--8a0f61ffcd625f5605fd738c.md) | 481 | `result-track:8a0f61ffcd625f5605fd738c96d3c78710007ff37c540b6a35f3ebab1f4766bc` |
| 34 | `theorem` | [psi_upper](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Chebyshev/Variantc6522001fc61cc44cf104a10928cdb8c4d7aed1c7e2aa275a844fd6b5497d1c3.lean/declarations/psi-upper--df6e027654ea9736037b429b.md) | 516 | `result-track:df6e027654ea9736037b429bb98a67f952b8c742ed20924dc5a8c1bb814d96bb` |
| 35 | `theorem` | [allChecks_11723](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Chebyshev/Variantc6522001fc61cc44cf104a10928cdb8c4d7aed1c7e2aa275a844fd6b5497d1c3.lean/declarations/allchecks-11723--affb504143c0d6688e771bbc.md) | 594 | `result-track:affb504143c0d6688e771bbc54509ed899967bb8a0aeb574be75e36034706bee` |
| 36 | `theorem` | [psi_num_2](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Chebyshev/Variantc6522001fc61cc44cf104a10928cdb8c4d7aed1c7e2aa275a844fd6b5497d1c3.lean/declarations/psi-num-2--edbbeab0feb71a58e8d4a206.md) | 603 | `result-track:edbbeab0feb71a58e8d4a206fac9e259468ea793c9812d80ca07a34d38287c69` |
| 37 | `lemma` | [hlog_y](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Chebyshev/Variantc6522001fc61cc44cf104a10928cdb8c4d7aed1c7e2aa275a844fd6b5497d1c3.lean/declarations/hlog-y--92beb1c6e17848690614036a.md) | 621 | `result-track:92beb1c6e17848690614036a00206f6b9e5cc985c3cd3d0f0e0c5a45e52bdd3d` |
| 38 | `theorem` | [psi_upper_clean](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Chebyshev/Variantc6522001fc61cc44cf104a10928cdb8c4d7aed1c7e2aa275a844fd6b5497d1c3.lean/declarations/psi-upper-clean--6f58a54a92fdaa81e79afb5c.md) | 633 | `result-track:6f58a54a92fdaa81e79afb5c1eb21e010d32b84709959dea269518f448935015` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
