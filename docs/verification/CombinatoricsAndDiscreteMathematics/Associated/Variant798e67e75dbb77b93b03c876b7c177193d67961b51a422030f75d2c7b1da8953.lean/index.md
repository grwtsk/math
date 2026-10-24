# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Associated.Variant798e67e75dbb77b93b03c876b7c177193d67961b51a422030f75d2c7b1da8953

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d90fa9b0877ab3ccb5592ba392d53651bee502b6",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Associated/Variant798e67e75dbb77b93b03c876b7c177193d67961b51a422030f75d2c7b1da8953.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Associated/Variant798e67e75dbb77b93b03c876b7c177193d67961b51a422030f75d2c7b1da8953.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Associated/Variant798e67e75dbb77b93b03c876b7c177193d67961b51a422030f75d2c7b1da8953.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d90fa9b0877ab3ccb5592ba392d53651bee502b6`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Associated/Variant798e67e75dbb77b93b03c876b7c177193d67961b51a422030f75d2c7b1da8953.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Associated/Variant798e67e75dbb77b93b03c876b7c177193d67961b51a422030f75d2c7b1da8953.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.BigOperators.Finsupp.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Submonoid.Membership` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.GroupWithZero.Associated` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [exists_mem_multiset_dvd](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Associated/Variant798e67e75dbb77b93b03c876b7c177193d67961b51a422030f75d2c7b1da8953.lean/declarations/exists-mem-multiset-dvd--5447bc8158c6721de8895404.md) | 29 | `result-track:5447bc8158c6721de88954041f06359646d8ef2150ab1036f8f391009acf604c` |
| 2 | `theorem` | [exists_mem_multiset_map_dvd](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Associated/Variant798e67e75dbb77b93b03c876b7c177193d67961b51a422030f75d2c7b1da8953.lean/declarations/exists-mem-multiset-map-dvd--72112b805b899e27db1953b3.md) | 38 | `result-track:72112b805b899e27db1953b343100de3d7d9f01e9311173ea4ef8bd2ff85d61b` |
| 3 | `theorem` | [exists_mem_finset_dvd](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Associated/Variant798e67e75dbb77b93b03c876b7c177193d67961b51a422030f75d2c7b1da8953.lean/declarations/exists-mem-finset-dvd--2a3a42d19357923375648046.md) | 43 | `result-track:2a3a42d19357923375648046a3c089aff8d42b3f62b2b00534dd5a79e51fa922` |
| 4 | `theorem` | [Prod.associated_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Associated/Variant798e67e75dbb77b93b03c876b7c177193d67961b51a422030f75d2c7b1da8953.lean/declarations/prod-associated-iff--0833628f74d044141c2b6f9f.md) | 49 | `result-track:0833628f74d044141c2b6f9ffd292603d134fbe55bb317b2a722d244b7049b98` |
| 5 | `theorem` | [Associated.prod](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Associated/Variant798e67e75dbb77b93b03c876b7c177193d67961b51a422030f75d2c7b1da8953.lean/declarations/associated-prod--72fa9f7e8693b30f2d57661d.md) | 56 | `result-track:72fa9f7e8693b30f2d57661d2f63a51ea152b28e0962efcdd477dc787c1fa6e3` |
| 6 | `theorem` | [exists_associated_mem_of_dvd_prod](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Associated/Variant798e67e75dbb77b93b03c876b7c177193d67961b51a422030f75d2c7b1da8953.lean/declarations/exists-associated-mem-of-dvd-prod--de93e9bb8b1a4c1028d1f632.md) | 69 | `result-track:de93e9bb8b1a4c1028d1f63281748c9f7b7125930cfef9908e93cee7a3d4151a` |
| 7 | `theorem` | [divisor_closure_eq_closure](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Associated/Variant798e67e75dbb77b93b03c876b7c177193d67961b51a422030f75d2c7b1da8953.lean/declarations/divisor-closure-eq-closure--8b34dbf1d2c65b9f9a5b9fb0.md) | 82 | `result-track:8b34dbf1d2c65b9f9a5b9fb07d48e35d048676bc13adb20055c3fca60dc40f8a` |
| 8 | `theorem` | [Multiset.prod_primes_dvd](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Associated/Variant798e67e75dbb77b93b03c876b7c177193d67961b51a422030f75d2c7b1da8953.lean/declarations/multiset-prod-primes-dvd--8a58a6c6bea57054538fc051.md) | 119 | `result-track:8a58a6c6bea57054538fc051ca7377603895c20f14085c6cee129e278599b8e7` |
| 9 | `theorem` | [Finset.prod_primes_dvd](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Associated/Variant798e67e75dbb77b93b03c876b7c177193d67961b51a422030f75d2c7b1da8953.lean/declarations/finset-prod-primes-dvd--41422322f426726b53aca072.md) | 140 | `result-track:41422322f426726b53aca0727a1edc8fbbd14215b798c150d1563ea5ce8b99fe` |
| 10 | `theorem` | [prod_mk](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Associated/Variant798e67e75dbb77b93b03c876b7c177193d67961b51a422030f75d2c7b1da8953.lean/declarations/prod-mk--fb049cd786d38959a73a1cef.md) | 156 | `result-track:fb049cd786d38959a73a1cef0d61c95a4c9a38136be58b3f6a5cb4973c91ef26` |
| 11 | `theorem` | [finset_prod_mk](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Associated/Variant798e67e75dbb77b93b03c876b7c177193d67961b51a422030f75d2c7b1da8953.lean/declarations/finset-prod-mk--b4ed1344208e0aa461bf98ca.md) | 159 | `result-track:b4ed1344208e0aa461bf98ca7e3de94d5f6330d15f1a0f3b47d461d27438349c` |
| 12 | `theorem` | [rel_associated_iff_map_eq_map](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Associated/Variant798e67e75dbb77b93b03c876b7c177193d67961b51a422030f75d2c7b1da8953.lean/declarations/rel-associated-iff-map-eq-map--72ec17a3f440a00c5e0b3c1c.md) | 164 | `result-track:72ec17a3f440a00c5e0b3c1c67921fb90bd9d197d6b967ec992b0d20c7440ab6` |
| 13 | `theorem` | [prod_eq_one_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Associated/Variant798e67e75dbb77b93b03c876b7c177193d67961b51a422030f75d2c7b1da8953.lean/declarations/prod-eq-one-iff--cfcd2a3483c2d18f29749cda.md) | 169 | `result-track:cfcd2a3483c2d18f29749cda97f755002cd927ea8f50ce412cf2d03da41f14e3` |
| 14 | `theorem` | [prod_le_prod](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Associated/Variant798e67e75dbb77b93b03c876b7c177193d67961b51a422030f75d2c7b1da8953.lean/declarations/prod-le-prod--e945d914452170d70bdde287.md) | 174 | `result-track:e945d914452170d70bdde2871f656ff499cc7a0918d4193c65707c3a98bac1c0` |
| 15 | `theorem` | [exists_mem_multiset_le_of_prime](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Associated/Variant798e67e75dbb77b93b03c876b7c177193d67961b51a422030f75d2c7b1da8953.lean/declarations/exists-mem-multiset-le-of-prime--b0a382da565d37ddba86374d.md) | 187 | `result-track:b0a382da565d37ddba86374d4385d5fe16580d319449f89289c378c818bac2a7` |
| 16 | `theorem` | [prod_ne_zero_of_prime](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Associated/Variant798e67e75dbb77b93b03c876b7c177193d67961b51a422030f75d2c7b1da8953.lean/declarations/prod-ne-zero-of-prime--741f1d23412b9b3bc04f0017.md) | 204 | `result-track:741f1d23412b9b3bc04f001728490874ce505c48e35176e2479fb22ed24b884c` |
| 17 | `theorem` | [Prime.dvd_finset_prod_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Associated/Variant798e67e75dbb77b93b03c876b7c177193d67961b51a422030f75d2c7b1da8953.lean/declarations/prime-dvd-finset-prod-iff--4983f609a9f92e45873fdd60.md) | 216 | `result-track:4983f609a9f92e45873fdd60b851de78670c3a10307e9297ba067ba65a58f2aa` |
| 18 | `theorem` | [Prime.not_dvd_finset_prod](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Associated/Variant798e67e75dbb77b93b03c876b7c177193d67961b51a422030f75d2c7b1da8953.lean/declarations/prime-not-dvd-finset-prod--ebac5e2a62e7e55a84ec9a39.md) | 220 | `result-track:ebac5e2a62e7e55a84ec9a39397b6c52d37aff199921b5fd63cdc3db075757f3` |
| 19 | `theorem` | [Prime.dvd_finsuppProd_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Associated/Variant798e67e75dbb77b93b03c876b7c177193d67961b51a422030f75d2c7b1da8953.lean/declarations/prime-dvd-finsuppprod-iff--c4e9eb6019584c78406a69d0.md) | 224 | `result-track:c4e9eb6019584c78406a69d04516d8442cbb5ac346f91b3b9b01549c331b7e5a` |
| 20 | `theorem` | [Prime.not_dvd_finsuppProd](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Associated/Variant798e67e75dbb77b93b03c876b7c177193d67961b51a422030f75d2c7b1da8953.lean/declarations/prime-not-dvd-finsuppprod--180c5537e89819ca66fcd1a5.md) | 230 | `result-track:180c5537e89819ca66fcd1a5c7956873640cd3b64d84c0abb724857972b809ff` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
