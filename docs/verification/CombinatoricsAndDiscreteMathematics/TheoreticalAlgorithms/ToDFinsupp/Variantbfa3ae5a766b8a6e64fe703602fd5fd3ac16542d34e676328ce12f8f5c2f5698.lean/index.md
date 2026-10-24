# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ToDFinsupp.Variantbfa3ae5a766b8a6e64fe703602fd5fd3ac16542d34e676328ce12f8f5c2f5698

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7a3adefd2e9be26e52b87a93b9a7bc525376e6ac",
  "lexical_observation_count": 34,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToDFinsupp/Variantbfa3ae5a766b8a6e64fe703602fd5fd3ac16542d34e676328ce12f8f5c2f5698.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToDFinsupp/Variantbfa3ae5a766b8a6e64fe703602fd5fd3ac16542d34e676328ce12f8f5c2f5698.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToDFinsupp/Variantbfa3ae5a766b8a6e64fe703602fd5fd3ac16542d34e676328ce12f8f5c2f5698.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7a3adefd2e9be26e52b87a93b9a7bc525376e6ac`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToDFinsupp/Variantbfa3ae5a766b8a6e64fe703602fd5fd3ac16542d34e676328ce12f8f5c2f5698.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToDFinsupp/Variantbfa3ae5a766b8a6e64fe703602fd5fd3ac16542d34e676328ce12f8f5c2f5698.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Module.Equiv.Defs` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.DFinsupp.Module` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finsupp.SMul` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Finsupp.toDFinsupp](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToDFinsupp/Variantbfa3ae5a766b8a6e64fe703602fd5fd3ac16542d34e676328ce12f8f5c2f5698.lean/declarations/finsupp-todfinsupp--252fbd138e0276b81f0a3a34.md) | 69 | `declaration-track:252fbd138e0276b81f0a3a34f2f57fdd91216a05e4bedddeed8c0473f5bbc2dd` |
| 2 | `theorem` | [Finsupp.toDFinsupp_coe](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToDFinsupp/Variantbfa3ae5a766b8a6e64fe703602fd5fd3ac16542d34e676328ce12f8f5c2f5698.lean/declarations/finsupp-todfinsupp-coe--c6132bc26eb5cca78ca6e06c.md) | 76 | `result-track:c6132bc26eb5cca78ca6e06c63fa59ae99f1c30f74e091a1b6eb8bfa18202083` |
| 3 | `theorem` | [Finsupp.toDFinsupp_single](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToDFinsupp/Variantbfa3ae5a766b8a6e64fe703602fd5fd3ac16542d34e676328ce12f8f5c2f5698.lean/declarations/finsupp-todfinsupp-single--722d591c4829ce1af15cd46b.md) | 84 | `result-track:722d591c4829ce1af15cd46bf28ba0def4d94746f72a183b29adced196d5b127` |
| 4 | `theorem` | [toDFinsupp_support](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToDFinsupp/Variantbfa3ae5a766b8a6e64fe703602fd5fd3ac16542d34e676328ce12f8f5c2f5698.lean/declarations/todfinsupp-support--16abfd9b4bb6a5acfb2d1eab.md) | 92 | `result-track:16abfd9b4bb6a5acfb2d1eab4cd90549068b04284d2a779d59a62aafa430f2a5` |
| 5 | `def` | [DFinsupp.toFinsupp](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToDFinsupp/Variantbfa3ae5a766b8a6e64fe703602fd5fd3ac16542d34e676328ce12f8f5c2f5698.lean/declarations/dfinsupp-tofinsupp--98678b87b152abb069a8186d.md) | 101 | `declaration-track:98678b87b152abb069a8186dc93a5dd09000c6f2f4f8d5e0be5bf13480f1062a` |
| 6 | `theorem` | [DFinsupp.toFinsupp_coe](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToDFinsupp/Variantbfa3ae5a766b8a6e64fe703602fd5fd3ac16542d34e676328ce12f8f5c2f5698.lean/declarations/dfinsupp-tofinsupp-coe--e332bf66ef9a8d41d72bd467.md) | 105 | `result-track:e332bf66ef9a8d41d72bd46790ba660cc01101c870d16d27c6ea1fee3f29c4d5` |
| 7 | `theorem` | [DFinsupp.toFinsupp_support](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToDFinsupp/Variantbfa3ae5a766b8a6e64fe703602fd5fd3ac16542d34e676328ce12f8f5c2f5698.lean/declarations/dfinsupp-tofinsupp-support--7eebdbb23667fffadb3c5f4d.md) | 109 | `result-track:7eebdbb23667fffadb3c5f4d7e084272bca6112bd84634fb91f9f654bb9d9a44` |
| 8 | `theorem` | [DFinsupp.toFinsupp_single](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToDFinsupp/Variantbfa3ae5a766b8a6e64fe703602fd5fd3ac16542d34e676328ce12f8f5c2f5698.lean/declarations/dfinsupp-tofinsupp-single--02b05325c4eeb918f2e74308.md) | 114 | `result-track:02b05325c4eeb918f2e7430842ad2a30e1214658d5b79e4631b5e6d39178bb0b` |
| 9 | `theorem` | [Finsupp.toDFinsupp_toFinsupp](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToDFinsupp/Variantbfa3ae5a766b8a6e64fe703602fd5fd3ac16542d34e676328ce12f8f5c2f5698.lean/declarations/finsupp-todfinsupp-tofinsupp--32c5afc469a0a9aba3759f37.md) | 120 | `result-track:32c5afc469a0a9aba3759f376612d19f11ede5c7ed5c3d3327ab4580dfda12b9` |
| 10 | `theorem` | [DFinsupp.toFinsupp_toDFinsupp](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToDFinsupp/Variantbfa3ae5a766b8a6e64fe703602fd5fd3ac16542d34e676328ce12f8f5c2f5698.lean/declarations/dfinsupp-tofinsupp-todfinsupp--09d69a6ae37dae1bc65760a8.md) | 124 | `result-track:09d69a6ae37dae1bc65760a88f76ec11270a7439d84e2df154c9d4357209cc91` |
| 11 | `theorem` | [toDFinsupp_zero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToDFinsupp/Variantbfa3ae5a766b8a6e64fe703602fd5fd3ac16542d34e676328ce12f8f5c2f5698.lean/declarations/todfinsupp-zero--5cf141e4f5a552b3b0f7ae3b.md) | 139 | `result-track:5cf141e4f5a552b3b0f7ae3b765b19c4b41b15bf1fe0ce523afde55d2c7583b5` |
| 12 | `theorem` | [toDFinsupp_add](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToDFinsupp/Variantbfa3ae5a766b8a6e64fe703602fd5fd3ac16542d34e676328ce12f8f5c2f5698.lean/declarations/todfinsupp-add--828632f5a636e436a3151ef2.md) | 143 | `result-track:828632f5a636e436a3151ef2f80db0aa4956e03673ea9815d36020578ac1f7cc` |
| 13 | `theorem` | [toDFinsupp_neg](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToDFinsupp/Variantbfa3ae5a766b8a6e64fe703602fd5fd3ac16542d34e676328ce12f8f5c2f5698.lean/declarations/todfinsupp-neg--56520228515a122a35f091d4.md) | 148 | `result-track:56520228515a122a35f091d4554aa440dd2445c0a059b1413bfa670b3c6336c6` |
| 14 | `theorem` | [toDFinsupp_sub](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToDFinsupp/Variantbfa3ae5a766b8a6e64fe703602fd5fd3ac16542d34e676328ce12f8f5c2f5698.lean/declarations/todfinsupp-sub--58cfe5e590b1903266a41954.md) | 152 | `result-track:58cfe5e590b1903266a4195424572e141c5bac58f298ad1fe96b0bbde0716f56` |
| 15 | `theorem` | [toDFinsupp_smul](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToDFinsupp/Variantbfa3ae5a766b8a6e64fe703602fd5fd3ac16542d34e676328ce12f8f5c2f5698.lean/declarations/todfinsupp-smul--8f8310505cf215f36ab6c326.md) | 157 | `result-track:8f8310505cf215f36ab6c326b74e958dd7c05c0fbebd1ea9d29759846692451f` |
| 16 | `theorem` | [toFinsupp_zero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToDFinsupp/Variantbfa3ae5a766b8a6e64fe703602fd5fd3ac16542d34e676328ce12f8f5c2f5698.lean/declarations/tofinsupp-zero--fb9fb152a29dcbdce9518ac9.md) | 168 | `result-track:fb9fb152a29dcbdce9518ac987fe2d1b431f6a224428ff1b5ca384f11aa40b4c` |
| 17 | `theorem` | [toFinsupp_add](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToDFinsupp/Variantbfa3ae5a766b8a6e64fe703602fd5fd3ac16542d34e676328ce12f8f5c2f5698.lean/declarations/tofinsupp-add--64162fc11c8f85dbd34f8ee0.md) | 172 | `result-track:64162fc11c8f85dbd34f8ee0e12793ab3d66f5546de9b127d1e22790eb822af7` |
| 18 | `theorem` | [toFinsupp_neg](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToDFinsupp/Variantbfa3ae5a766b8a6e64fe703602fd5fd3ac16542d34e676328ce12f8f5c2f5698.lean/declarations/tofinsupp-neg--528d4ee7d234ff398a9030f1.md) | 177 | `result-track:528d4ee7d234ff398a9030f1af65bbd22fc494fb8bd0cb4711d8fa7ac0143666` |
| 19 | `theorem` | [toFinsupp_sub](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToDFinsupp/Variantbfa3ae5a766b8a6e64fe703602fd5fd3ac16542d34e676328ce12f8f5c2f5698.lean/declarations/tofinsupp-sub--578d949be38eaf0b0b45d430.md) | 182 | `result-track:578d949be38eaf0b0b45d4309e77b56d06d8bdc2a452617c66dc061f1494ada1` |
| 20 | `theorem` | [toFinsupp_smul](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToDFinsupp/Variantbfa3ae5a766b8a6e64fe703602fd5fd3ac16542d34e676328ce12f8f5c2f5698.lean/declarations/tofinsupp-smul--19c8f2728ef7a875e8e6f9b1.md) | 187 | `result-track:19c8f2728ef7a875e8e6f9b1907af701187de2ded7f0d053b878946bdffcc701` |
| 21 | `def` | [finsuppEquivDFinsupp](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToDFinsupp/Variantbfa3ae5a766b8a6e64fe703602fd5fd3ac16542d34e676328ce12f8f5c2f5698.lean/declarations/finsuppequivdfinsupp--ac919abf2741f020c1eb4806.md) | 202 | `declaration-track:ac919abf2741f020c1eb4806191b1bc0c8e8c1619c7fec2b36e329b3418df98a` |
| 22 | `def` | [finsuppAddEquivDFinsupp](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToDFinsupp/Variantbfa3ae5a766b8a6e64fe703602fd5fd3ac16542d34e676328ce12f8f5c2f5698.lean/declarations/finsuppaddequivdfinsupp--8358e72a42ea54e4738abba1.md) | 212 | `declaration-track:8358e72a42ea54e4738abba100d56304c23b960f442af83da7ab2e6fe7d17fc9` |
| 23 | `def` | [finsuppLequivDFinsupp](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToDFinsupp/Variantbfa3ae5a766b8a6e64fe703602fd5fd3ac16542d34e676328ce12f8f5c2f5698.lean/declarations/finsupplequivdfinsupp--a27806776c60eb5579a4e46e.md) | 223 | `declaration-track:a27806776c60eb5579a4e46e6eef5ef2a376459a2bd21ef3d71cf5e69649246b` |
| 24 | `theorem` | [finsuppLequivDFinsupp_apply_apply](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToDFinsupp/Variantbfa3ae5a766b8a6e64fe703602fd5fd3ac16542d34e676328ce12f8f5c2f5698.lean/declarations/finsupplequivdfinsupp-apply-apply--5a82f612d3c63acbc0c7384c.md) | 232 | `result-track:5a82f612d3c63acbc0c7384c13411b441f7ff2ee35f98d23dec7e49658633b86` |
| 25 | `theorem` | [finsuppLequivDFinsupp_symm_apply](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToDFinsupp/Variantbfa3ae5a766b8a6e64fe703602fd5fd3ac16542d34e676328ce12f8f5c2f5698.lean/declarations/finsupplequivdfinsupp-symm-apply--36d0dd93429c2c301c6a7e36.md) | 237 | `result-track:36d0dd93429c2c301c6a7e363409288f50c2308a74d5f0078aa6ff7b7d471feb` |
| 26 | `def` | [sigmaFinsuppEquivDFinsupp](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToDFinsupp/Variantbfa3ae5a766b8a6e64fe703602fd5fd3ac16542d34e676328ce12f8f5c2f5698.lean/declarations/sigmafinsuppequivdfinsupp--e780170b8dfc1ab78ac84054.md) | 251 | `declaration-track:e780170b8dfc1ab78ac84054d61c3ae712bdadc6d6e601da3b7592085e61547a` |
| 27 | `theorem` | [sigmaFinsuppEquivDFinsupp_apply](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToDFinsupp/Variantbfa3ae5a766b8a6e64fe703602fd5fd3ac16542d34e676328ce12f8f5c2f5698.lean/declarations/sigmafinsuppequivdfinsupp-apply--bd21ceac03a020b117dd4012.md) | 270 | `result-track:bd21ceac03a020b117dd4012e92f304b3b06b354888ab708107c56b86532e44d` |
| 28 | `theorem` | [sigmaFinsuppEquivDFinsupp_symm_apply](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToDFinsupp/Variantbfa3ae5a766b8a6e64fe703602fd5fd3ac16542d34e676328ce12f8f5c2f5698.lean/declarations/sigmafinsuppequivdfinsupp-symm-apply--4cc1b57ab5d8a6e7433f31cb.md) | 275 | `result-track:4cc1b57ab5d8a6e7433f31cbc771639c9bb6773524cad76264eb3f43a5f3817f` |
| 29 | `theorem` | [sigmaFinsuppEquivDFinsupp_support](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToDFinsupp/Variantbfa3ae5a766b8a6e64fe703602fd5fd3ac16542d34e676328ce12f8f5c2f5698.lean/declarations/sigmafinsuppequivdfinsupp-support--6c8a6696382256ba861b806e.md) | 280 | `result-track:6c8a6696382256ba861b806e5dd882116ddffa8e199f4749c6934d357b30fafb` |
| 30 | `theorem` | [sigmaFinsuppEquivDFinsupp_single](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToDFinsupp/Variantbfa3ae5a766b8a6e64fe703602fd5fd3ac16542d34e676328ce12f8f5c2f5698.lean/declarations/sigmafinsuppequivdfinsupp-single--0f26faaddec80b279e834ef9.md) | 288 | `result-track:0f26faaddec80b279e834ef9a9b6f6003d20c4d606079f0bc79feb73775d7656` |
| 31 | `theorem` | [sigmaFinsuppEquivDFinsupp_add](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToDFinsupp/Variantbfa3ae5a766b8a6e64fe703602fd5fd3ac16542d34e676328ce12f8f5c2f5698.lean/declarations/sigmafinsuppequivdfinsupp-add--0f5f9340239abd770d66ac59.md) | 304 | `result-track:0f5f9340239abd770d66ac59bbd4d0b8e650dc4a58fe4ec561d31d839fdec693` |
| 32 | `def` | [sigmaFinsuppAddEquivDFinsupp](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToDFinsupp/Variantbfa3ae5a766b8a6e64fe703602fd5fd3ac16542d34e676328ce12f8f5c2f5698.lean/declarations/sigmafinsuppaddequivdfinsupp--73c58c04cdd465678471368e.md) | 312 | `declaration-track:73c58c04cdd465678471368ed0458a2391dfcce520307d6f60be9339f9f253f0` |
| 33 | `theorem` | [sigmaFinsuppEquivDFinsupp_smul](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToDFinsupp/Variantbfa3ae5a766b8a6e64fe703602fd5fd3ac16542d34e676328ce12f8f5c2f5698.lean/declarations/sigmafinsuppequivdfinsupp-smul--20edb46f8fd7a88eae90a863.md) | 321 | `result-track:20edb46f8fd7a88eae90a863bed1af2e6aa25fce44d3b8ab0eebd430419e4865` |
| 34 | `def` | [sigmaFinsuppLequivDFinsupp](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToDFinsupp/Variantbfa3ae5a766b8a6e64fe703602fd5fd3ac16542d34e676328ce12f8f5c2f5698.lean/declarations/sigmafinsupplequivdfinsupp--811d9530c2b96aa178d3086e.md) | 331 | `declaration-track:811d9530c2b96aa178d3086e8ba813d4cbbfc3466a71c26fdef6c9052faf4ecb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
