# Verification target: GRWTSK.NumberTheory.ElementaryNumberTheory.GCD.Variantafda8116b356e5024900575204f15552a50ddd1089622d3ab77d88c7eea97537

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "73bda5168056cb71c25e110ea279282fbc702b8b",
  "lexical_observation_count": 37,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ElementaryNumberTheory/GCD/Variantafda8116b356e5024900575204f15552a50ddd1089622d3ab77d88c7eea97537.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/GCD/Variantafda8116b356e5024900575204f15552a50ddd1089622d3ab77d88c7eea97537.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/GCD/Variantafda8116b356e5024900575204f15552a50ddd1089622d3ab77d88c7eea97537.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `73bda5168056cb71c25e110ea279282fbc702b8b`.

Source path: `GRWTSK/NumberTheory/ElementaryNumberTheory/GCD/Variantafda8116b356e5024900575204f15552a50ddd1089622d3ab77d88c7eea97537.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ElementaryNumberTheory/GCD/Variantafda8116b356e5024900575204f15552a50ddd1089622d3ab77d88c7eea97537.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.GroupWithZero.Semiconj` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Commute.Units` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Operations` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Basic` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Bounds.Defs` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Int.Defs` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Int.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Batteries.Data.Nat.Gcd` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Divisibility.Basic` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Nat.Defs` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [xgcdAux](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/GCD/Variantafda8116b356e5024900575204f15552a50ddd1089622d3ab77d88c7eea97537.lean/declarations/xgcdaux--dccda47a3e100c2183f02629.md) | 41 | `declaration-track:dccda47a3e100c2183f0262999f7449bfda9a86a6180f83d5adb00f4b44fbc00` |
| 2 | `theorem` | [xgcd_zero_left](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/GCD/Variantafda8116b356e5024900575204f15552a50ddd1089622d3ab77d88c7eea97537.lean/declarations/xgcd-zero-left--adc9d333eb6faa6d9c9110a1.md) | 50 | `result-track:adc9d333eb6faa6d9c9110a1fe444beff6a6bef0e1a41be7588473edc35453ed` |
| 3 | `theorem` | [xgcdAux_rec](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/GCD/Variantafda8116b356e5024900575204f15552a50ddd1089622d3ab77d88c7eea97537.lean/declarations/xgcdaux-rec--343f7755f62175b7a55d354e.md) | 52 | `result-track:343f7755f62175b7a55d354eab1b72a3235f6b09eb55d22d61a178eafba6a43a` |
| 4 | `def` | [xgcd](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/GCD/Variantafda8116b356e5024900575204f15552a50ddd1089622d3ab77d88c7eea97537.lean/declarations/xgcd--d88227a5c56ce945cd88e4e1.md) | 59 | `declaration-track:d88227a5c56ce945cd88e4e167d2565d99b1d1a533d9cd378b23439d97781074` |
| 5 | `def` | [gcdA](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/GCD/Variantafda8116b356e5024900575204f15552a50ddd1089622d3ab77d88c7eea97537.lean/declarations/gcda--ccb840ec44647b35fb5921bc.md) | 63 | `declaration-track:ccb840ec44647b35fb5921bc1b81e592c659afef5a343f7c9f6a70c136f8153d` |
| 6 | `def` | [gcdB](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/GCD/Variantafda8116b356e5024900575204f15552a50ddd1089622d3ab77d88c7eea97537.lean/declarations/gcdb--05f5aa9cb8418025385a436b.md) | 67 | `declaration-track:05f5aa9cb8418025385a436b2671031e0044d81d07ff89098bf23c0425c33d4e` |
| 7 | `theorem` | [gcdA_zero_left](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/GCD/Variantafda8116b356e5024900575204f15552a50ddd1089622d3ab77d88c7eea97537.lean/declarations/gcda-zero-left--f54651d78850a96c6f7c4267.md) | 71 | `result-track:f54651d78850a96c6f7c426786df0566c1b1a57ca610a11ebe578fa40a436e7d` |
| 8 | `theorem` | [gcdB_zero_left](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/GCD/Variantafda8116b356e5024900575204f15552a50ddd1089622d3ab77d88c7eea97537.lean/declarations/gcdb-zero-left--07e69595fcd8657439a9e90c.md) | 76 | `result-track:07e69595fcd8657439a9e90c07f4410e6c4819640bf5ab143a747051d1662178` |
| 9 | `theorem` | [gcdA_zero_right](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/GCD/Variantafda8116b356e5024900575204f15552a50ddd1089622d3ab77d88c7eea97537.lean/declarations/gcda-zero-right--7ea738c49417ac37d6c20971.md) | 81 | `result-track:7ea738c49417ac37d6c209711b0b4f0a271893c6caa57bfdbdd1cc02c586edab` |
| 10 | `theorem` | [gcdB_zero_right](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/GCD/Variantafda8116b356e5024900575204f15552a50ddd1089622d3ab77d88c7eea97537.lean/declarations/gcdb-zero-right--09903548c2e4db322bcda3d5.md) | 88 | `result-track:09903548c2e4db322bcda3d543d917cc0b0347f3e5fcd4b530ee3bde7f2704f4` |
| 11 | `theorem` | [xgcdAux_fst](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/GCD/Variantafda8116b356e5024900575204f15552a50ddd1089622d3ab77d88c7eea97537.lean/declarations/xgcdaux-fst--3e11b2bf7e61fe6c00e3eac7.md) | 95 | `result-track:3e11b2bf7e61fe6c00e3eac7a67ebf7419f4addcb83d9618ed1674bea9c41e89` |
| 12 | `theorem` | [xgcdAux_val](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/GCD/Variantafda8116b356e5024900575204f15552a50ddd1089622d3ab77d88c7eea97537.lean/declarations/xgcdaux-val--76c11e738107b99661e40c13.md) | 100 | `result-track:76c11e738107b99661e40c135a0edde8e62cbee4d814d1dfdb7e9aa1dc2deeba` |
| 13 | `theorem` | [xgcd_val](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/GCD/Variantafda8116b356e5024900575204f15552a50ddd1089622d3ab77d88c7eea97537.lean/declarations/xgcd-val--d3fed334ccbb4f93515e6468.md) | 103 | `result-track:d3fed334ccbb4f93515e6468725c207d1ff87581c8d378e6578d27aebb126a3e` |
| 14 | `def` | [P](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/GCD/Variantafda8116b356e5024900575204f15552a50ddd1089622d3ab77d88c7eea97537.lean/declarations/p--a1183005cf190d0837e1c679.md) | 110 | `declaration-track:a1183005cf190d0837e1c6798ed1a5d237b9422bfe935fff16340edc7a3fc9bb` |
| 15 | `theorem` | [xgcdAux_P](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/GCD/Variantafda8116b356e5024900575204f15552a50ddd1089622d3ab77d88c7eea97537.lean/declarations/xgcdaux-p--05f196e2847eef1f6910cdaf.md) | 113 | `result-track:05f196e2847eef1f6910cdafd62a4d97fbb87e83a58c91fb9ba70fc79d575ac1` |
| 16 | `theorem` | [gcd_eq_gcd_ab](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/GCD/Variantafda8116b356e5024900575204f15552a50ddd1089622d3ab77d88c7eea97537.lean/declarations/gcd-eq-gcd-ab--3fe962566fceccaf0d12db63.md) | 127 | `result-track:3fe962566fceccaf0d12db636601b55c84c454ed143268a84f2beaca1e61a538` |
| 17 | `theorem` | [exists_mul_emod_eq_gcd](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/GCD/Variantafda8116b356e5024900575204f15552a50ddd1089622d3ab77d88c7eea97537.lean/declarations/exists-mul-emod-eq-gcd--6bfa9d0feb2bbe72e30bb83e.md) | 133 | `result-track:6bfa9d0feb2bbe72e30bb83ec6e56c1a99cfccf5b9408355261744d2a27e10ba` |
| 18 | `theorem` | [exists_mul_emod_eq_one_of_coprime](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/GCD/Variantafda8116b356e5024900575204f15552a50ddd1089622d3ab77d88c7eea97537.lean/declarations/exists-mul-emod-eq-one-of-coprime--e091a0dc872b491ca0a8a315.md) | 143 | `result-track:e091a0dc872b491ca0a8a3155679a603b9e2c969ed7e2facfd59a23aacece655` |
| 19 | `theorem` | [gcd_def](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/GCD/Variantafda8116b356e5024900575204f15552a50ddd1089622d3ab77d88c7eea97537.lean/declarations/gcd-def--dd707cd1d01ebc248377339c.md) | 155 | `result-track:dd707cd1d01ebc248377339c6a4808025b9221b269ac33682c4b3752526ac971` |
| 20 | `def` | [gcdA](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/GCD/Variantafda8116b356e5024900575204f15552a50ddd1089622d3ab77d88c7eea97537.lean/declarations/gcda--4aa806601b33c3f41a2c62d1.md) | 158 | `declaration-track:4aa806601b33c3f41a2c62d1ac15bb91e0e72d99b326412fb52b2ab5c6ea055f` |
| 21 | `def` | [gcdB](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/GCD/Variantafda8116b356e5024900575204f15552a50ddd1089622d3ab77d88c7eea97537.lean/declarations/gcdb--3cab448f5bf87a74389a0d13.md) | 163 | `declaration-track:3cab448f5bf87a74389a0d133c0d2ccecc6db1c79979ffe63652aa71dc0a56ef` |
| 22 | `theorem` | [gcd_eq_gcd_ab](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/GCD/Variantafda8116b356e5024900575204f15552a50ddd1089622d3ab77d88c7eea97537.lean/declarations/gcd-eq-gcd-ab--a2903b61718369895bee09bb.md) | 168 | `result-track:a2903b61718369895bee09bba1b1cbc0a858686d4fefe673e3e52bec148d41ef` |
| 23 | `theorem` | [lcm_def](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/GCD/Variantafda8116b356e5024900575204f15552a50ddd1089622d3ab77d88c7eea97537.lean/declarations/lcm-def--868094b9c823e5bc818c9080.md) | 179 | `result-track:868094b9c823e5bc818c9080f89fc2e541d8c0633177a063795ee3c624c7498d` |
| 24 | `theorem` | [gcd_eq_one_of_gcd_mul_right_eq_one_left](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/GCD/Variantafda8116b356e5024900575204f15552a50ddd1089622d3ab77d88c7eea97537.lean/declarations/gcd-eq-one-of-gcd-mul-right-eq-one-left--b054f2dfec842f8b2c1f8c6c.md) | 191 | `result-track:b054f2dfec842f8b2c1f8c6cb499cdf3d7c0c3de152dcd970623186d729018c7` |
| 25 | `theorem` | [gcd_eq_one_of_gcd_mul_right_eq_one_right](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/GCD/Variantafda8116b356e5024900575204f15552a50ddd1089622d3ab77d88c7eea97537.lean/declarations/gcd-eq-one-of-gcd-mul-right-eq-one-right--631240ae125d9e11577e00b6.md) | 196 | `result-track:631240ae125d9e11577e00b6ece6c55f8b93cac1b139e7daaa6b65fa754338c5` |
| 26 | `theorem` | [ne_zero_of_gcd](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/GCD/Variantafda8116b356e5024900575204f15552a50ddd1089622d3ab77d88c7eea97537.lean/declarations/ne-zero-of-gcd--71305b3ec98deeaa4b0387f8.md) | 200 | `result-track:71305b3ec98deeaa4b0387f814e1a70a145737b0c59062b9980e827e04ecc97a` |
| 27 | `theorem` | [exists_gcd_one](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/GCD/Variantafda8116b356e5024900575204f15552a50ddd1089622d3ab77d88c7eea97537.lean/declarations/exists-gcd-one--eaa8e95bf82089ec98b54c24.md) | 204 | `result-track:eaa8e95bf82089ec98b54c24eac6b0e5578b6b764b499383ed14421458e33076` |
| 28 | `theorem` | [exists_gcd_one'](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/GCD/Variantafda8116b356e5024900575204f15552a50ddd1089622d3ab77d88c7eea97537.lean/declarations/exists-gcd-one--ea539acaedfa070b32e15008.md) | 209 | `result-track:ea539acaedfa070b32e1500875b063468336948576c8c83d915ec2e4871f7648` |
| 29 | `theorem` | [gcd_dvd_iff](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/GCD/Variantafda8116b356e5024900575204f15552a50ddd1089622d3ab77d88c7eea97537.lean/declarations/gcd-dvd-iff--7090ffbd9c20fa6e7424c03a.md) | 214 | `result-track:7090ffbd9c20fa6e7424c03a06efbd6aef6d481eb7a9c5e31d8c9ff432569df2` |
| 30 | `theorem` | [gcd_greatest](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/GCD/Variantafda8116b356e5024900575204f15552a50ddd1089622d3ab77d88c7eea97537.lean/declarations/gcd-greatest--8f682ada183f0aec3451f0ae.md) | 224 | `result-track:8f682ada183f0aec3451f0ae17df230628831169c26f6107be889ac40970f8fb` |
| 31 | `theorem` | [dvd_of_dvd_mul_left_of_gcd_one](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/GCD/Variantafda8116b356e5024900575204f15552a50ddd1089622d3ab77d88c7eea97537.lean/declarations/dvd-of-dvd-mul-left-of-gcd-one--ee6c39acd9cc103dea056717.md) | 232 | `result-track:ee6c39acd9cc103dea056717b0b226b89d4d50af285927d4c6bb7051958d7557` |
| 32 | `theorem` | [dvd_of_dvd_mul_right_of_gcd_one](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/GCD/Variantafda8116b356e5024900575204f15552a50ddd1089622d3ab77d88c7eea97537.lean/declarations/dvd-of-dvd-mul-right-of-gcd-one--492ac5afd1cab6f12a172d53.md) | 243 | `result-track:492ac5afd1cab6f12a172d53e8657d2207be28f49c31648038e6b4838853d867` |
| 33 | `theorem` | [gcd_least_linear](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/GCD/Variantafda8116b356e5024900575204f15552a50ddd1089622d3ab77d88c7eea97537.lean/declarations/gcd-least-linear--a0a51f1abb17b47343448abf.md) | 250 | `result-track:a0a51f1abb17b47343448abf5760921561565970ae1de45ab3f23b68e8bd6e39` |
| 34 | `theorem` | [pow_gcd_eq_one](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/GCD/Variantafda8116b356e5024900575204f15552a50ddd1089622d3ab77d88c7eea97537.lean/declarations/pow-gcd-eq-one--61033a84319f7a449dde1c95.md) | 261 | `result-track:61033a84319f7a449dde1c95532c0062481fbed99a4d851fd8398a86491da40e` |
| 35 | `lemma` | [Commute.pow_eq_pow_iff_of_coprime](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/GCD/Variantafda8116b356e5024900575204f15552a50ddd1089622d3ab77d88c7eea97537.lean/declarations/commute-pow-eq-pow-iff-of-coprime--e650ce5d3164b05f7073f2c5.md) | 273 | `result-track:e650ce5d3164b05f7073f2c57bd81fc175eebdd8f54a6618c50530ec5fa18c14` |
| 36 | `lemma` | [pow_eq_pow_iff_of_coprime](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/GCD/Variantafda8116b356e5024900575204f15552a50ddd1089622d3ab77d88c7eea97537.lean/declarations/pow-eq-pow-iff-of-coprime--dc115b83731d9aae287e1ffe.md) | 293 | `result-track:dc115b83731d9aae287e1ffe4d9e85589a0f431a410925f398626c371577bbe3` |
| 37 | `lemma` | [pow_mem_range_pow_of_coprime](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/GCD/Variantafda8116b356e5024900575204f15552a50ddd1089622d3ab77d88c7eea97537.lean/declarations/pow-mem-range-pow-of-coprime--ec515937b91a130ed726aff8.md) | 296 | `result-track:ec515937b91a130ed726aff834c174943ce077d77e0efbc830273ac66408e089` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
