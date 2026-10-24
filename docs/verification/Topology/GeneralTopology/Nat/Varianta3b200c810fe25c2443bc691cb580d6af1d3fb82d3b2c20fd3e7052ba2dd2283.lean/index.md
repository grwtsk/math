# Verification target: GRWTSK.Topology.GeneralTopology.Nat.Varianta3b200c810fe25c2443bc691cb580d6af1d3fb82d3b2c20fd3e7052ba2dd2283

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fe790ed17edfc5fb85642b444b393262caac3a95",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Nat/Varianta3b200c810fe25c2443bc691cb580d6af1d3fb82d3b2c20fd3e7052ba2dd2283.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Nat/Varianta3b200c810fe25c2443bc691cb580d6af1d3fb82d3b2c20fd3e7052ba2dd2283.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Nat/Varianta3b200c810fe25c2443bc691cb580d6af1d3fb82d3b2c20fd3e7052ba2dd2283.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fe790ed17edfc5fb85642b444b393262caac3a95`.

Source path: `GRWTSK/Topology/GeneralTopology/Nat/Varianta3b200c810fe25c2443bc691cb580d6af1d3fb82d3b2c20fd3e7052ba2dd2283.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Nat/Varianta3b200c810fe25c2443bc691cb580d6af1d3fb82d3b2c20fd3e7052ba2dd2283.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Antidiag.Pi` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.ArithmeticFunction` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [instHasAntidiagonal](../../../../../mathematics/Topology/GeneralTopology/Nat/Varianta3b200c810fe25c2443bc691cb580d6af1d3fb82d3b2c20fd3e7052ba2dd2283.lean/declarations/insthasantidiagonal--0cb8b01fd66197544caf0879.md) | 27 | `declaration-track:0cb8b01fd66197544caf08795335a4b204e49cab3516119aa3ddbcd85fa5fa58` |
| 2 | `def` | [finMulAntidiag](../../../../../mathematics/Topology/GeneralTopology/Nat/Varianta3b200c810fe25c2443bc691cb580d6af1d3fb82d3b2c20fd3e7052ba2dd2283.lean/declarations/finmulantidiag--06a1683a340707a8624b2a62.md) | 52 | `declaration-track:06a1683a340707a8624b2a62bb8972c1f9c1eb58cb32b46cfbd03ffd8a853370` |
| 3 | `theorem` | [mem_finMulAntidiag](../../../../../mathematics/Topology/GeneralTopology/Nat/Varianta3b200c810fe25c2443bc691cb580d6af1d3fb82d3b2c20fd3e7052ba2dd2283.lean/declarations/mem-finmulantidiag--18b896effb16001de2e10b93.md) | 60 | `result-track:18b896effb16001de2e10b933ec12b393d86356f0ad44c91a846af2846da4214` |
| 4 | `theorem` | [finMulAntidiag_zero_right](../../../../../mathematics/Topology/GeneralTopology/Nat/Varianta3b200c810fe25c2443bc691cb580d6af1d3fb82d3b2c20fd3e7052ba2dd2283.lean/declarations/finmulantidiag-zero-right--ee015b249af018d40df351ce.md) | 81 | `result-track:ee015b249af018d40df351cef697cf90ee8698c497bba69c2e0240ea782bb9ff` |
| 5 | `theorem` | [finMulAntidiag_one](../../../../../mathematics/Topology/GeneralTopology/Nat/Varianta3b200c810fe25c2443bc691cb580d6af1d3fb82d3b2c20fd3e7052ba2dd2283.lean/declarations/finmulantidiag-one--19977147633d2759c60752cf.md) | 84 | `result-track:19977147633d2759c60752cfadaa815870d58fce464aa58f99034f7f0c28438f` |
| 6 | `theorem` | [finMulAntidiag_zero_left](../../../../../mathematics/Topology/GeneralTopology/Nat/Varianta3b200c810fe25c2443bc691cb580d6af1d3fb82d3b2c20fd3e7052ba2dd2283.lean/declarations/finmulantidiag-zero-left--6457baed232dcf9c6db54fa6.md) | 95 | `result-track:6457baed232dcf9c6db54fa66ac03de5cf035f394f54745ba134e5babda43817` |
| 7 | `theorem` | [dvd_of_mem_finMulAntidiag](../../../../../mathematics/Topology/GeneralTopology/Nat/Varianta3b200c810fe25c2443bc691cb580d6af1d3fb82d3b2c20fd3e7052ba2dd2283.lean/declarations/dvd-of-mem-finmulantidiag--cb3c5de124fba700ad057d8b.md) | 100 | `result-track:cb3c5de124fba700ad057d8b7464e3555782c5dc1adaaeb2e6179aa4dbadd4af` |
| 8 | `theorem` | [ne_zero_of_mem_finMulAntidiag](../../../../../mathematics/Topology/GeneralTopology/Nat/Varianta3b200c810fe25c2443bc691cb580d6af1d3fb82d3b2c20fd3e7052ba2dd2283.lean/declarations/ne-zero-of-mem-finmulantidiag--0e11877ff092a7aa03a94f2c.md) | 106 | `result-track:0e11877ff092a7aa03a94f2ced2915a3a10113341caef48f51f29e1c6f3ecc8d` |
| 9 | `theorem` | [prod_eq_of_mem_finMulAntidiag](../../../../../mathematics/Topology/GeneralTopology/Nat/Varianta3b200c810fe25c2443bc691cb580d6af1d3fb82d3b2c20fd3e7052ba2dd2283.lean/declarations/prod-eq-of-mem-finmulantidiag--061da3ed4d2970a270b3afa9.md) | 110 | `result-track:061da3ed4d2970a270b3afa9c77e12f86cd0489948ff1833e9652fae105398f6` |
| 10 | `theorem` | [finMulAntidiag_eq_piFinset_divisors_filter](../../../../../mathematics/Topology/GeneralTopology/Nat/Varianta3b200c810fe25c2443bc691cb580d6af1d3fb82d3b2c20fd3e7052ba2dd2283.lean/declarations/finmulantidiag-eq-pifinset-divisors-filter--94892eb3ef8ebb8160a057de.md) | 114 | `result-track:94892eb3ef8ebb8160a057de5d10c40c2d913ecdf3408c9826ed0a7b7c629301` |
| 11 | `lemma` | [image_apply_finMulAntidiag](../../../../../mathematics/Topology/GeneralTopology/Nat/Varianta3b200c810fe25c2443bc691cb580d6af1d3fb82d3b2c20fd3e7052ba2dd2283.lean/declarations/image-apply-finmulantidiag--41d36d2d1f0a91738b33fc3f.md) | 127 | `result-track:41d36d2d1f0a91738b33fc3f7bf8dea68bb4696f927cb9d6872ea44e8c17267a` |
| 12 | `lemma` | [image_piFinTwoEquiv_finMulAntidiag](../../../../../mathematics/Topology/GeneralTopology/Nat/Varianta3b200c810fe25c2443bc691cb580d6af1d3fb82d3b2c20fd3e7052ba2dd2283.lean/declarations/image-pifintwoequiv-finmulantidiag--2745559e71d481fcdfb865c0.md) | 153 | `result-track:2745559e71d481fcdfb865c0e89329f2b5f0a8c8f901842950f8c97e3059bfe4` |
| 13 | `lemma` | [finMulAntidiag_existsUnique_prime_dvd](../../../../../mathematics/Topology/GeneralTopology/Nat/Varianta3b200c810fe25c2443bc691cb580d6af1d3fb82d3b2c20fd3e7052ba2dd2283.lean/declarations/finmulantidiag-existsunique-prime-dvd--74ea930d51c6441fc6acd924.md) | 158 | `result-track:74ea930d51c6441fc6acd9247b043dfb2d04d11381478edeb138057392abcf25` |
| 14 | `def` | [primeFactorsPiBij](../../../../../mathematics/Topology/GeneralTopology/Nat/Varianta3b200c810fe25c2443bc691cb580d6af1d3fb82d3b2c20fd3e7052ba2dd2283.lean/declarations/primefactorspibij--10e88bd5b6c28f48b4e86206.md) | 177 | `declaration-track:10e88bd5b6c28f48b4e86206b58a4404cbce0a24a207e15615161cecaf9c2597` |
| 15 | `theorem` | [primeFactorsPiBij_img](../../../../../mathematics/Topology/GeneralTopology/Nat/Varianta3b200c810fe25c2443bc691cb580d6af1d3fb82d3b2c20fd3e7052ba2dd2283.lean/declarations/primefactorspibij-img--25f28e80a9b94b81e1b8c769.md) | 181 | `result-track:25f28e80a9b94b81e1b8c76987dcd9652244789e6d3b68f5709ad3ba8110fa9c` |
| 16 | `theorem` | [primeFactorsPiBij_inj](../../../../../mathematics/Topology/GeneralTopology/Nat/Varianta3b200c810fe25c2443bc691cb580d6af1d3fb82d3b2c20fd3e7052ba2dd2283.lean/declarations/primefactorspibij-inj--61975b45c3402f034505fd38.md) | 191 | `result-track:61975b45c3402f034505fd38932a4b65cf4cb7e08c67ffe37958692414771490` |
| 17 | `theorem` | [primeFactorsPiBij_surj](../../../../../mathematics/Topology/GeneralTopology/Nat/Varianta3b200c810fe25c2443bc691cb580d6af1d3fb82d3b2c20fd3e7052ba2dd2283.lean/declarations/primefactorspibij-surj--e1ddf79bd03c87fb148c6db5.md) | 214 | `result-track:e1ddf79bd03c87fb148c6db5d015e17a7739ffc5d8daa46ab4f8a33a9dbb39aa` |
| 18 | `theorem` | [card_finMulAntidiag_pi](../../../../../mathematics/Topology/GeneralTopology/Nat/Varianta3b200c810fe25c2443bc691cb580d6af1d3fb82d3b2c20fd3e7052ba2dd2283.lean/declarations/card-finmulantidiag-pi--3554926d209801d65c31cb2a.md) | 234 | `result-track:3554926d209801d65c31cb2a05571decef5eb1dc611b4d9498785dbc444ad83a` |
| 19 | `theorem` | [card_finMulAntidiag_of_squarefree](../../../../../mathematics/Topology/GeneralTopology/Nat/Varianta3b200c810fe25c2443bc691cb580d6af1d3fb82d3b2c20fd3e7052ba2dd2283.lean/declarations/card-finmulantidiag-of-squarefree--c7eb2e307b2f9991baf54814.md) | 240 | `result-track:c7eb2e307b2f9991baf54814d1c01ec0177bbc9aa4e316a6935a794755107f70` |
| 20 | `theorem` | [finMulAntidiag_three](../../../../../mathematics/Topology/GeneralTopology/Nat/Varianta3b200c810fe25c2443bc691cb580d6af1d3fb82d3b2c20fd3e7052ba2dd2283.lean/declarations/finmulantidiag-three--b9e4bbc6cf7e940a90a13818.md) | 246 | `result-track:b9e4bbc6cf7e940a90a1381870424cf66a051f9021ce118fc8bb9388c77197c6` |
| 21 | `def` | [f](../../../../../mathematics/Topology/GeneralTopology/Nat/Varianta3b200c810fe25c2443bc691cb580d6af1d3fb82d3b2c20fd3e7052ba2dd2283.lean/declarations/f--0c3b9921c50633292638e2c0.md) | 256 | `declaration-track:0c3b9921c50633292638e2c01868ce4cc65d216172f412595e7d5ded8d6894b7` |
| 22 | `theorem` | [f_img](../../../../../mathematics/Topology/GeneralTopology/Nat/Varianta3b200c810fe25c2443bc691cb580d6af1d3fb82d3b2c20fd3e7052ba2dd2283.lean/declarations/f-img--d056f39e2d33f72c989a165d.md) | 258 | `result-track:d056f39e2d33f72c989a165dc17c1d3ebb1c285b8bc2ad4bc31d4b83b7ccaaf6` |
| 23 | `theorem` | [f_inj](../../../../../mathematics/Topology/GeneralTopology/Nat/Varianta3b200c810fe25c2443bc691cb580d6af1d3fb82d3b2c20fd3e7052ba2dd2283.lean/declarations/f-inj--c93324b0611832cb783e48d4.md) | 271 | `result-track:c93324b0611832cb783e48d4f8aa70eb0768b3a65d4dcb597afc4364ad3c262f` |
| 24 | `theorem` | [f_surj](../../../../../mathematics/Topology/GeneralTopology/Nat/Varianta3b200c810fe25c2443bc691cb580d6af1d3fb82d3b2c20fd3e7052ba2dd2283.lean/declarations/f-surj--e275c03ea3f49f33db24fe6f.md) | 289 | `result-track:e275c03ea3f49f33db24fe6f364221e94c64eb2d7f6ba21ff05e9499239ef48f` |
| 25 | `theorem` | [card_pair_lcm_eq](../../../../../mathematics/Topology/GeneralTopology/Nat/Varianta3b200c810fe25c2443bc691cb580d6af1d3fb82d3b2c20fd3e7052ba2dd2283.lean/declarations/card-pair-lcm-eq--b3da54c54c5f4a7718a8523e.md) | 312 | `result-track:b3da54c54c5f4a7718a8523efdbf24cfa8383d8e3d9af620f1510afb46da4ee9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
