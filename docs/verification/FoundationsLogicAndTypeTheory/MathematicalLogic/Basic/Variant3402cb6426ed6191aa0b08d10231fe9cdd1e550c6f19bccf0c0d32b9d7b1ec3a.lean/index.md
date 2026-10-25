# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Basic.Variant3402cb6426ed6191aa0b08d10231fe9cdd1e550c6f19bccf0c0d32b9d7b1ec3a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c0b3af1fad9e007182ccf68f5d4a9b00c557889a",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant3402cb6426ed6191aa0b08d10231fe9cdd1e550c6f19bccf0c0d32b9d7b1ec3a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant3402cb6426ed6191aa0b08d10231fe9cdd1e550c6f19bccf0c0d32b9d7b1ec3a.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant3402cb6426ed6191aa0b08d10231fe9cdd1e550c6f19bccf0c0d32b9d7b1ec3a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c0b3af1fad9e007182ccf68f5d4a9b00c557889a`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant3402cb6426ed6191aa0b08d10231fe9cdd1e550c6f19bccf0c0d32b9d7b1ec3a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant3402cb6426ed6191aa0b08d10231fe9cdd1e550c6f19bccf0c0d32b9d7b1ec3a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.PowerSeries.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Combinatorics.Enumerative.Bell` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Choose.Multinomial` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Ideal.Maps` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [DividedPowers](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant3402cb6426ed6191aa0b08d10231fe9cdd1e550c6f19bccf0c0d32b9d7b1ec3a.lean/declarations/dividedpowers--6f9fa7fd8a372da77a86c7d0.md) | 74 | `declaration-track:6f9fa7fd8a372da77a86c7d06e7dcbb366217a588ebb3797d9728c365ca107c1` |
| 2 | `def` | [dividedPowersBot](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant3402cb6426ed6191aa0b08d10231fe9cdd1e550c6f19bccf0c0d32b9d7b1ec3a.lean/declarations/dividedpowersbot--67c0a01cec6bf929207449f3.md) | 92 | `declaration-track:67c0a01cec6bf929207449f300d24584211c03aa81918e84a4ed09a5d6814d0e` |
| 3 | `lemma` | [dividedPowersBot_dpow_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant3402cb6426ed6191aa0b08d10231fe9cdd1e550c6f19bccf0c0d32b9d7b1ec3a.lean/declarations/dividedpowersbot-dpow-eq--e7b2b1b0ddab68d118632a0e.md) | 141 | `result-track:e7b2b1b0ddab68d118632a0ebee01037ab739c293535c56996012917c8a27ef3` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant3402cb6426ed6191aa0b08d10231fe9cdd1e550c6f19bccf0c0d32b9d7b1ec3a.lean/declarations/instance--7c0a529187e438e22400669d.md) | 146 | `declaration-track:7c0a529187e438e22400669d534194b3c530360a1eed4b64e8914f527d95bf58` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant3402cb6426ed6191aa0b08d10231fe9cdd1e550c6f19bccf0c0d32b9d7b1ec3a.lean/declarations/instance--230d91d26ab50522ca0adb08.md) | 150 | `declaration-track:230d91d26ab50522ca0adb082426c411d53811d80cb2ddbc03dc93eede2371d7` |
| 6 | `theorem` | [DividedPowers.ext](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant3402cb6426ed6191aa0b08d10231fe9cdd1e550c6f19bccf0c0d32b9d7b1ec3a.lean/declarations/dividedpowers-ext--13650102c6ef0d094e175024.md) | 154 | `result-track:13650102c6ef0d094e175024ad0ac1ff9ecabaa64d14a30d5c4053e188e0dbfa` |
| 7 | `theorem` | [DividedPowers.coe_injective](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant3402cb6426ed6191aa0b08d10231fe9cdd1e550c6f19bccf0c0d32b9d7b1ec3a.lean/declarations/dividedpowers-coe-injective--bd24e32996ab6c1903578b0a.md) | 165 | `result-track:bd24e32996ab6c1903578b0a290c5bbc579bcb9a9ebe478462eaf0c556889f46` |
| 8 | `theorem` | [dpow_add'](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant3402cb6426ed6191aa0b08d10231fe9cdd1e550c6f19bccf0c0d32b9d7b1ec3a.lean/declarations/dpow-add--37eea1148057812e74a27a09.md) | 181 | `result-track:37eea1148057812e74a27a099085d17a18adc96a671be5388c07a4571ecb3123` |
| 9 | `def` | [exp](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant3402cb6426ed6191aa0b08d10231fe9cdd1e550c6f19bccf0c0d32b9d7b1ec3a.lean/declarations/exp--b131c28b69e60243e513e294.md) | 187 | `declaration-track:b131c28b69e60243e513e294bd64d3af4cca846e47412c789f9235d108035ab3` |
| 10 | `theorem` | [exp_add'](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant3402cb6426ed6191aa0b08d10231fe9cdd1e550c6f19bccf0c0d32b9d7b1ec3a.lean/declarations/exp-add--c02432bc48ee162694be7191.md) | 191 | `result-track:c02432bc48ee162694be7191c7f94de24004732b215711fc9311796b99745104` |
| 11 | `theorem` | [exp_add](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant3402cb6426ed6191aa0b08d10231fe9cdd1e550c6f19bccf0c0d32b9d7b1ec3a.lean/declarations/exp-add--3779dd398a48e2d0ad34b39d.md) | 199 | `result-track:3779dd398a48e2d0ad34b39d957db112cedefec1f2cffb5c2c2abc53f3c56ca6` |
| 12 | `theorem` | [dpow_smul](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant3402cb6426ed6191aa0b08d10231fe9cdd1e550c6f19bccf0c0d32b9d7b1ec3a.lean/declarations/dpow-smul--6e9d472fb88bd743f2167df2.md) | 207 | `result-track:6e9d472fb88bd743f2167df266a1921bf8230a77efd32ff2a6d1e0ebdc9f9c9f` |
| 13 | `theorem` | [dpow_mul_right](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant3402cb6426ed6191aa0b08d10231fe9cdd1e550c6f19bccf0c0d32b9d7b1ec3a.lean/declarations/dpow-mul-right--6fac8a7e2d4d58ffdec36194.md) | 211 | `result-track:6fac8a7e2d4d58ffdec361945772bdd12912ece5be6ed33ad4651a52d29a4cdf` |
| 14 | `theorem` | [dpow_smul_right](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant3402cb6426ed6191aa0b08d10231fe9cdd1e550c6f19bccf0c0d32b9d7b1ec3a.lean/declarations/dpow-smul-right--a8445329cf80b94313bc3ed9.md) | 215 | `result-track:a8445329cf80b94313bc3ed9aa34677fa79d2f080567e3668478b02bb1c30fec` |
| 15 | `theorem` | [factorial_mul_dpow_eq_pow](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant3402cb6426ed6191aa0b08d10231fe9cdd1e550c6f19bccf0c0d32b9d7b1ec3a.lean/declarations/factorial-mul-dpow-eq-pow--545c40f7a9c8e20f4783dce6.md) | 219 | `result-track:545c40f7a9c8e20f4783dce657860afce5b0c743b9fb420063a6627a524aaafc` |
| 16 | `theorem` | [dpow_eval_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant3402cb6426ed6191aa0b08d10231fe9cdd1e550c6f19bccf0c0d32b9d7b1ec3a.lean/declarations/dpow-eval-zero--f43840be69a358d833b2c48c.md) | 229 | `result-track:f43840be69a358d833b2c48c8aed08e6a503f53dfb6d38408cb8ad15ebc52809` |
| 17 | `theorem` | [nilpotent_of_mem_dpIdeal](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant3402cb6426ed6191aa0b08d10231fe9cdd1e550c6f19bccf0c0d32b9d7b1ec3a.lean/declarations/nilpotent-of-mem-dpideal--f3d7225512b665a8bd40d8c3.md) | 237 | `result-track:f3d7225512b665a8bd40d8c3ca238ae2d2b65b4107ee3d193d079297aa20b07a` |
| 18 | `theorem` | [coincide_on_smul](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant3402cb6426ed6191aa0b08d10231fe9cdd1e550c6f19bccf0c0d32b9d7b1ec3a.lean/declarations/coincide-on-smul--726af395464df1a574fd206e.md) | 248 | `result-track:726af395464df1a574fd206e443b3c4320e3dd7092ebfb937a740b89bf7fccb5` |
| 19 | `theorem` | [prod_dpow](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant3402cb6426ed6191aa0b08d10231fe9cdd1e550c6f19bccf0c0d32b9d7b1ec3a.lean/declarations/prod-dpow--e559798332689816e4769717.md) | 265 | `result-track:e559798332689816e476971781b332f126cfe49f22e31ee49585496231b12c07` |
| 20 | `theorem` | [dpow_sum'](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant3402cb6426ed6191aa0b08d10231fe9cdd1e550c6f19bccf0c0d32b9d7b1ec3a.lean/declarations/dpow-sum--0ff8e2126983be15443dee33.md) | 281 | `result-track:0ff8e2126983be15443dee33c5b5a13da5209062de5b153987d3ac4bde6a271e` |
| 21 | `theorem` | [dpow_sum](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant3402cb6426ed6191aa0b08d10231fe9cdd1e550c6f19bccf0c0d32b9d7b1ec3a.lean/declarations/dpow-sum--8c9ac82dd94ef025c50b4563.md) | 333 | `result-track:8c9ac82dd94ef025c50b45630dcb8f42df7f84ab56160cd547253957272b5b84` |
| 22 | `def` | [ofRingEquiv](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant3402cb6426ed6191aa0b08d10231fe9cdd1e550c6f19bccf0c0d32b9d7b1ec3a.lean/declarations/ofringequiv--192243e9327ff6ce5c73faa9.md) | 348 | `declaration-track:192243e9327ff6ce5c73faa92c8e1056748f90f05f9ef136c2c3cb661370c1de` |
| 23 | `theorem` | [ofRingEquiv_dpow](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant3402cb6426ed6191aa0b08d10231fe9cdd1e550c6f19bccf0c0d32b9d7b1ec3a.lean/declarations/ofringequiv-dpow--47bbd038c826fd5df104e206.md) | 384 | `result-track:47bbd038c826fd5df104e206c9f355de59bbc875240449184fef936d699246de` |
| 24 | `theorem` | [ofRingEquiv_dpow_apply](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant3402cb6426ed6191aa0b08d10231fe9cdd1e550c6f19bccf0c0d32b9d7b1ec3a.lean/declarations/ofringequiv-dpow-apply--78bcb63dc9b5f473d147a2ae.md) | 387 | `result-track:78bcb63dc9b5f473d147a2aeeec6c7d787a6b91e50680418c03be85d268405ff` |
| 25 | `def` | [equiv](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant3402cb6426ed6191aa0b08d10231fe9cdd1e550c6f19bccf0c0d32b9d7b1ec3a.lean/declarations/equiv--27b637429dc063339aa679cc.md) | 392 | `declaration-track:27b637429dc063339aa679cc93d5de6a136c1c797207ae35928fd8d217674b2b` |
| 26 | `theorem` | [equiv_apply](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant3402cb6426ed6191aa0b08d10231fe9cdd1e550c6f19bccf0c0d32b9d7b1ec3a.lean/declarations/equiv-apply--41a6fd67da3934bb980b1122.md) | 398 | `result-track:41a6fd67da3934bb980b1122c92fb6a7ba7fe8592444f1b79e17b0e6bfff3d14` |
| 27 | `theorem` | [equiv_apply'](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant3402cb6426ed6191aa0b08d10231fe9cdd1e550c6f19bccf0c0d32b9d7b1ec3a.lean/declarations/equiv-apply--c49f876c8558a015d332088a.md) | 402 | `result-track:c49f876c8558a015d332088a9fa8e2775c0ee0bbd987cde1328ce61b0843a994` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
