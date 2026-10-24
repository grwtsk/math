# Verification target: GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctions.Totient.Variant07ae13c5bdb480ffd63abb297ca9bdd0a5cbe05836d8506b20a579f37b5db7d2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "22a04af8e9868a39e9a8d09cdf4014ea4d8b6ade",
  "lexical_observation_count": 36,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Totient/Variant07ae13c5bdb480ffd63abb297ca9bdd0a5cbe05836d8506b20a579f37b5db7d2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Totient/Variant07ae13c5bdb480ffd63abb297ca9bdd0a5cbe05836d8506b20a579f37b5db7d2.lean/index.md) · [Full source](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Totient/Variant07ae13c5bdb480ffd63abb297ca9bdd0a5cbe05836d8506b20a579f37b5db7d2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `22a04af8e9868a39e9a8d09cdf4014ea4d8b6ade`.

Source path: `GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Totient/Variant07ae13c5bdb480ffd63abb297ca9bdd0a5cbe05836d8506b20a579f37b5db7d2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Totient/Variant07ae13c5bdb480ffd63abb297ca9bdd0a5cbe05836d8506b20a579f37b5db7d2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.CharP.Two` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Cast.Field` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Factorization.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Factorization.Induction` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Periodic` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [totient](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Totient/Variant07ae13c5bdb480ffd63abb297ca9bdd0a5cbe05836d8506b20a579f37b5db7d2.lean/declarations/totient--7d33fec2e446bf794bda702f.md) | 30 | `declaration-track:7d33fec2e446bf794bda702ff28444ed2b6eb971e7d144d39f7826f074e5a7f4` |
| 2 | `theorem` | [totient_zero](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Totient/Variant07ae13c5bdb480ffd63abb297ca9bdd0a5cbe05836d8506b20a579f37b5db7d2.lean/declarations/totient-zero--70335afb456baf913e094862.md) | 36 | `result-track:70335afb456baf913e0948629041b54c8192eb52dbd6bd3fd6a7f059bb999425` |
| 3 | `theorem` | [totient_one](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Totient/Variant07ae13c5bdb480ffd63abb297ca9bdd0a5cbe05836d8506b20a579f37b5db7d2.lean/declarations/totient-one--c7ca3632889e3b4d332bc532.md) | 40 | `result-track:c7ca3632889e3b4d332bc532aa60e45172abb231a97b136d4a379dc5796b3ef6` |
| 4 | `theorem` | [totient_eq_card_coprime](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Totient/Variant07ae13c5bdb480ffd63abb297ca9bdd0a5cbe05836d8506b20a579f37b5db7d2.lean/declarations/totient-eq-card-coprime--9e46bee9f4bb656a25dda524.md) | 42 | `result-track:9e46bee9f4bb656a25dda524374c7eb34b9644a99f843d70226a84b38d004c57` |
| 5 | `theorem` | [totient_eq_card_lt_and_coprime](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Totient/Variant07ae13c5bdb480ffd63abb297ca9bdd0a5cbe05836d8506b20a579f37b5db7d2.lean/declarations/totient-eq-card-lt-and-coprime--d25588c1e3361ed75cdd17fc.md) | 45 | `result-track:d25588c1e3361ed75cdd17fc6f61c5601114a4c8ae25c2297ea1a64a674da35f` |
| 6 | `theorem` | [totient_le](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Totient/Variant07ae13c5bdb480ffd63abb297ca9bdd0a5cbe05836d8506b20a579f37b5db7d2.lean/declarations/totient-le--45a2838f5d9454fd79a2215c.md) | 53 | `result-track:45a2838f5d9454fd79a2215c09ffda68be32c2eababac0c57fa8bc962ed36ff3` |
| 7 | `theorem` | [totient_lt](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Totient/Variant07ae13c5bdb480ffd63abb297ca9bdd0a5cbe05836d8506b20a579f37b5db7d2.lean/declarations/totient-lt--44ef6721dc817efc407e50cd.md) | 56 | `result-track:44ef6721dc817efc407e50cd84b8b3dbe50ae6281d3ca61d114228a35cae7226` |
| 8 | `theorem` | [totient_eq_zero](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Totient/Variant07ae13c5bdb480ffd63abb297ca9bdd0a5cbe05836d8506b20a579f37b5db7d2.lean/declarations/totient-eq-zero--13f0153e0624d8a25aadd1c9.md) | 60 | `result-track:13f0153e0624d8a25aadd1c942148a6c83aaf660cfe430c435874e60355bde5a` |
| 9 | `theorem` | [totient_pos](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Totient/Variant07ae13c5bdb480ffd63abb297ca9bdd0a5cbe05836d8506b20a579f37b5db7d2.lean/declarations/totient-pos--5343813ccf28d85f11c58a85.md) | 66 | `result-track:5343813ccf28d85f11c58a85ff9b371fc667cdf465933be98a7d7bf6e5a426ea` |
| 10 | `instance` | [neZero_totient](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Totient/Variant07ae13c5bdb480ffd63abb297ca9bdd0a5cbe05836d8506b20a579f37b5db7d2.lean/declarations/nezero-totient--b9c2520a02c900bfee926609.md) | 68 | `declaration-track:b9c2520a02c900bfee9266090a66bc192e15757d3ad13f987859a09e9194f40b` |
| 11 | `theorem` | [filter_coprime_Ico_eq_totient](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Totient/Variant07ae13c5bdb480ffd63abb297ca9bdd0a5cbe05836d8506b20a579f37b5db7d2.lean/declarations/filter-coprime-ico-eq-totient--f90840dea8ec36bbf4d004ac.md) | 71 | `result-track:f90840dea8ec36bbf4d004ac354707f870a47a053cb908c51b93e2b355652b2c` |
| 12 | `theorem` | [Ico_filter_coprime_le](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Totient/Variant07ae13c5bdb480ffd63abb297ca9bdd0a5cbe05836d8506b20a579f37b5db7d2.lean/declarations/ico-filter-coprime-le--c40b33f2f726501bd825ceec.md) | 76 | `result-track:c40b33f2f726501bd825ceec4f80535770bc4c2276ea4c6afc103115c207c7d1` |
| 13 | `theorem` | [_root_.ZMod.card_units_eq_totient](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Totient/Variant07ae13c5bdb480ffd63abb297ca9bdd0a5cbe05836d8506b20a579f37b5db7d2.lean/declarations/root-zmod-card-units-eq-totient--5cd2cfe065c6036a3d8de86e.md) | 102 | `result-track:5cd2cfe065c6036a3d8de86ee38f99cc4812aef31f6986f230b969cad00f9d77` |
| 14 | `theorem` | [totient_even](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Totient/Variant07ae13c5bdb480ffd63abb297ca9bdd0a5cbe05836d8506b20a579f37b5db7d2.lean/declarations/totient-even--3dd6b07d36957a68271ae43a.md) | 113 | `result-track:3dd6b07d36957a68271ae43a377ac9e54a274ec1a3350e312ff460d8ce8db9f6` |
| 15 | `theorem` | [totient_mul](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Totient/Variant07ae13c5bdb480ffd63abb297ca9bdd0a5cbe05836d8506b20a579f37b5db7d2.lean/declarations/totient-mul--5f068eb3fbb2aeec3c90b18f.md) | 121 | `result-track:5f068eb3fbb2aeec3c90b18f95c043733bc76b9ec99f684e97dac4d748b384cb` |
| 16 | `theorem` | [totient_div_of_dvd](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Totient/Variant07ae13c5bdb480ffd63abb297ca9bdd0a5cbe05836d8506b20a579f37b5db7d2.lean/declarations/totient-div-of-dvd--bced80346c87773983555ece.md) | 134 | `result-track:bced80346c87773983555ece8461abb1fbb300a60ee7d077561e75e4819682ee` |
| 17 | `theorem` | [sum_totient](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Totient/Variant07ae13c5bdb480ffd63abb297ca9bdd0a5cbe05836d8506b20a579f37b5db7d2.lean/declarations/sum-totient--d9c557171d1ec56d4be84559.md) | 153 | `result-track:d9c557171d1ec56d4be84559307065a28fdc263d41f723e3b57276910d83b144` |
| 18 | `theorem` | [sum_totient'](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Totient/Variant07ae13c5bdb480ffd63abb297ca9bdd0a5cbe05836d8506b20a579f37b5db7d2.lean/declarations/sum-totient--ede5a9cee3ef479d30d0e9b0.md) | 164 | `result-track:ede5a9cee3ef479d30d0e9b080fd99031e61c7aed645c3b691399258b4b08567` |
| 19 | `theorem` | [totient_prime_pow_succ](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Totient/Variant07ae13c5bdb480ffd63abb297ca9bdd0a5cbe05836d8506b20a579f37b5db7d2.lean/declarations/totient-prime-pow-succ--8083750408bd9eea3a427ee6.md) | 170 | `result-track:8083750408bd9eea3a427ee6983c7f2951b393666cf45dca67cc98c8371a2079` |
| 20 | `theorem` | [totient_prime_pow](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Totient/Variant07ae13c5bdb480ffd63abb297ca9bdd0a5cbe05836d8506b20a579f37b5db7d2.lean/declarations/totient-prime-pow--a96746582aa8691f7425d2ad.md) | 199 | `result-track:a96746582aa8691f7425d2addf2a396ecd80c59ecd7744e1ef4af17b9097ea95` |
| 21 | `theorem` | [totient_prime](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Totient/Variant07ae13c5bdb480ffd63abb297ca9bdd0a5cbe05836d8506b20a579f37b5db7d2.lean/declarations/totient-prime--bbcd9c507b7dbad22c30ff0e.md) | 204 | `result-track:bbcd9c507b7dbad22c30ff0e346288be8934087a86c934f5a2d262ad082af51b` |
| 22 | `theorem` | [totient_eq_iff_prime](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Totient/Variant07ae13c5bdb480ffd63abb297ca9bdd0a5cbe05836d8506b20a579f37b5db7d2.lean/declarations/totient-eq-iff-prime--420fd2ced278d1304e3b4df5.md) | 207 | `result-track:420fd2ced278d1304e3b4df519c7d0d81c15e8eedcf7f954dddf312966f2302d` |
| 23 | `theorem` | [card_units_zmod_lt_sub_one](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Totient/Variant07ae13c5bdb480ffd63abb297ca9bdd0a5cbe05836d8506b20a579f37b5db7d2.lean/declarations/card-units-zmod-lt-sub-one--770e81fb1e5822749ed17e64.md) | 222 | `result-track:770e81fb1e5822749ed17e6485d458fb66c1622e1b6a958ce17897c057363e12` |
| 24 | `theorem` | [prime_iff_card_units](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Totient/Variant07ae13c5bdb480ffd63abb297ca9bdd0a5cbe05836d8506b20a579f37b5db7d2.lean/declarations/prime-iff-card-units--af061e661855a164b063e7bc.md) | 228 | `result-track:af061e661855a164b063e7bce9a2e582b246b0d770105a2f69c41e952d61a8f1` |
| 25 | `theorem` | [totient_two](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Totient/Variant07ae13c5bdb480ffd63abb297ca9bdd0a5cbe05836d8506b20a579f37b5db7d2.lean/declarations/totient-two--1c5d9351b272c821b38e11b5.md) | 239 | `result-track:1c5d9351b272c821b38e11b5fb37c3d6f2cefec924649da587a8bc6efc9bdf6f` |
| 26 | `theorem` | [totient_eq_one_iff](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Totient/Variant07ae13c5bdb480ffd63abb297ca9bdd0a5cbe05836d8506b20a579f37b5db7d2.lean/declarations/totient-eq-one-iff--74bd268c3dca9c688446c4af.md) | 242 | `result-track:74bd268c3dca9c688446c4afa77360fa50a5e4e2c045d868471eef2bb72d1378` |
| 27 | `theorem` | [dvd_two_of_totient_le_one](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Totient/Variant07ae13c5bdb480ffd63abb297ca9bdd0a5cbe05836d8506b20a579f37b5db7d2.lean/declarations/dvd-two-of-totient-le-one--1651e8d507adf684f6adab60.md) | 251 | `result-track:1651e8d507adf684f6adab6013a4597c1bdf50e69aadcc4aa36f860be5e4e678` |
| 28 | `theorem` | [totient_eq_prod_factorization](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Totient/Variant07ae13c5bdb480ffd63abb297ca9bdd0a5cbe05836d8506b20a579f37b5db7d2.lean/declarations/totient-eq-prod-factorization--c43b3956f3de9049a8a38d88.md) | 260 | `result-track:c43b3956f3de9049a8a38d88f476bf5e71437d6273c0b081acc2e3dd412a50d2` |
| 29 | `theorem` | [totient_mul_prod_primeFactors](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Totient/Variant07ae13c5bdb480ffd63abb297ca9bdd0a5cbe05836d8506b20a579f37b5db7d2.lean/declarations/totient-mul-prod-primefactors--19a59a4cd29cf324e1c0429a.md) | 269 | `result-track:19a59a4cd29cf324e1c0429a7c934d1f7b2201a9ddd02c9b4f1e7c39e9933f8a` |
| 30 | `theorem` | [totient_eq_div_primeFactors_mul](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Totient/Variant07ae13c5bdb480ffd63abb297ca9bdd0a5cbe05836d8506b20a579f37b5db7d2.lean/declarations/totient-eq-div-primefactors-mul--d3f61947c8bdd2b18d14505d.md) | 280 | `result-track:d3f61947c8bdd2b18d14505d7f6d310a12adcbf07e7720c296b7c0ea5aba2330` |
| 31 | `theorem` | [totient_eq_mul_prod_factors](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Totient/Variant07ae13c5bdb480ffd63abb297ca9bdd0a5cbe05836d8506b20a579f37b5db7d2.lean/declarations/totient-eq-mul-prod-factors--d92a3fd83f144b2118419ce3.md) | 287 | `result-track:d92a3fd83f144b2118419ce31306bc5a67a07952caed4d754887537b6d812f37` |
| 32 | `theorem` | [totient_gcd_mul_totient_mul](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Totient/Variant07ae13c5bdb480ffd63abb297ca9bdd0a5cbe05836d8506b20a579f37b5db7d2.lean/declarations/totient-gcd-mul-totient-mul--c6582f41ffa357f7582087e6.md) | 302 | `result-track:c6582f41ffa357f7582087e6b4726d97edba2eaa3a3bd845f06ef5c41f423151` |
| 33 | `theorem` | [totient_super_multiplicative](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Totient/Variant07ae13c5bdb480ffd63abb297ca9bdd0a5cbe05836d8506b20a579f37b5db7d2.lean/declarations/totient-super-multiplicative--fdd3477023034a4534a48fd8.md) | 320 | `result-track:fdd3477023034a4534a48fd82e35c8a873200c3014cb08b8d021bcc69da8e73d` |
| 34 | `theorem` | [totient_dvd_of_dvd](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Totient/Variant07ae13c5bdb480ffd63abb297ca9bdd0a5cbe05836d8506b20a579f37b5db7d2.lean/declarations/totient-dvd-of-dvd--9563a530f430e9422f0c8141.md) | 329 | `result-track:9563a530f430e9422f0c8141bd013e6420a8687a77d9c6e0ed54f4c93766090c` |
| 35 | `theorem` | [totient_mul_of_prime_of_dvd](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Totient/Variant07ae13c5bdb480ffd63abb297ca9bdd0a5cbe05836d8506b20a579f37b5db7d2.lean/declarations/totient-mul-of-prime-of-dvd--a151631da6b04cff4239fe77.md) | 339 | `result-track:a151631da6b04cff4239fe77dafc41b139ff967b325ee9728117d4b15abf2f1a` |
| 36 | `theorem` | [totient_mul_of_prime_of_not_dvd](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Totient/Variant07ae13c5bdb480ffd63abb297ca9bdd0a5cbe05836d8506b20a579f37b5db7d2.lean/declarations/totient-mul-of-prime-of-not-dvd--fed2230e351cc565fb9b0067.md) | 345 | `result-track:fed2230e351cc565fb9b00672841bc956530bc4867bc671750dbc9a9276557bd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
