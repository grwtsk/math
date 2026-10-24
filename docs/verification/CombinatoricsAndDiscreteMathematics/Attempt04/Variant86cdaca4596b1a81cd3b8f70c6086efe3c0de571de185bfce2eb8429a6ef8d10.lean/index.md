# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Attempt04.Variant86cdaca4596b1a81cd3b8f70c6086efe3c0de571de185bfce2eb8429a6ef8d10

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e1787754c9b9500fafc24967a5ef6a36f203a1bc",
  "lexical_observation_count": 41,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Attempt04/Variant86cdaca4596b1a81cd3b8f70c6086efe3c0de571de185bfce2eb8429a6ef8d10.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Attempt04/Variant86cdaca4596b1a81cd3b8f70c6086efe3c0de571de185bfce2eb8429a6ef8d10.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Attempt04/Variant86cdaca4596b1a81cd3b8f70c6086efe3c0de571de185bfce2eb8429a6ef8d10.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e1787754c9b9500fafc24967a5ef6a36f203a1bc`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Attempt04/Variant86cdaca4596b1a81cd3b8f70c6086efe3c0de571de185bfce2eb8429a6ef8d10.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Attempt04/Variant86cdaca4596b1a81cd3b8f70c6086efe3c0de571de185bfce2eb8429a6ef8d10.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.Log.Deriv` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.Harmonic.EulerMascheroni` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.NormNum.Prime` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [log_two_lower](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Attempt04/Variant86cdaca4596b1a81cd3b8f70c6086efe3c0de571de185bfce2eb8429a6ef8d10.lean/declarations/log-two-lower--8c32e8ade863e836a713fb76.md) | 13 | `result-track:8c32e8ade863e836a713fb76fb0679348bd2bbf2a509b370f8906fb0af92b86b` |
| 2 | `theorem` | [log_two_fine_lower](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Attempt04/Variant86cdaca4596b1a81cd3b8f70c6086efe3c0de571de185bfce2eb8429a6ef8d10.lean/declarations/log-two-fine-lower--de1a13cb73cab36dc3ecc809.md) | 18 | `result-track:de1a13cb73cab36dc3ecc8090a5166bf8aef5953a4335b25dfa6dc40fe166245` |
| 3 | `theorem` | [log_two_upper](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Attempt04/Variant86cdaca4596b1a81cd3b8f70c6086efe3c0de571de185bfce2eb8429a6ef8d10.lean/declarations/log-two-upper--43c60a83307b5729c4607a60.md) | 23 | `result-track:43c60a83307b5729c4607a60cba29c777efc9067233296669c58a6483a517edf` |
| 4 | `theorem` | [log_three_lower](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Attempt04/Variant86cdaca4596b1a81cd3b8f70c6086efe3c0de571de185bfce2eb8429a6ef8d10.lean/declarations/log-three-lower--5dc4abe4c0c59de9947277a1.md) | 28 | `result-track:5dc4abe4c0c59de9947277a158084dd751f6f50a1f74bddc9dfff1e9c5e903ce` |
| 5 | `def` | [stieltjesLowerFour](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Attempt04/Variant86cdaca4596b1a81cd3b8f70c6086efe3c0de571de185bfce2eb8429a6ef8d10.lean/declarations/stieltjeslowerfour--b7020d6ab95b24afa71a1545.md) | 34 | `declaration-track:b7020d6ab95b24afa71a1545a3143e26b53b80c0d840f6d7c768ac71d11a2659` |
| 6 | `theorem` | [stieltjesLowerFour_gt_neg_quarter](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Attempt04/Variant86cdaca4596b1a81cd3b8f70c6086efe3c0de571de185bfce2eb8429a6ef8d10.lean/declarations/stieltjeslowerfour-gt-neg-quarter--67c8c09eeed1504e905575ed.md) | 36 | `result-track:67c8c09eeed1504e905575ed87627dd20265e089bf393a488dba330483619b43` |
| 7 | `theorem` | [stieltjesLowerFour_gt_neg_249](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Attempt04/Variant86cdaca4596b1a81cd3b8f70c6086efe3c0de571de185bfce2eb8429a6ef8d10.lean/declarations/stieltjeslowerfour-gt-neg-249--aa36cb53e6356f83ed23c142.md) | 45 | `result-track:aa36cb53e6356f83ed23c142c914e65d9e9b152087354fa67c60aba3d73b4a88` |
| 8 | `theorem` | [log_3_lower](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Attempt04/Variant86cdaca4596b1a81cd3b8f70c6086efe3c0de571de185bfce2eb8429a6ef8d10.lean/declarations/log-3-lower--eb5a93a6feeca880acb75a6a.md) | 54 | `result-track:eb5a93a6feeca880acb75a6a6c17b240338a4d0d027201992badeadbca09e2c4` |
| 9 | `theorem` | [log_5_lower](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Attempt04/Variant86cdaca4596b1a81cd3b8f70c6086efe3c0de571de185bfce2eb8429a6ef8d10.lean/declarations/log-5-lower--612110b749c8981e4c27fb8b.md) | 67 | `result-track:612110b749c8981e4c27fb8b999a19b5766128608bdbefc062a669d1584a96f7` |
| 10 | `theorem` | [log_7_lower](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Attempt04/Variant86cdaca4596b1a81cd3b8f70c6086efe3c0de571de185bfce2eb8429a6ef8d10.lean/declarations/log-7-lower--1aa9cce62778e0bca8a700c2.md) | 80 | `result-track:1aa9cce62778e0bca8a700c2d7cdbd6785ad96a8a65fa1ad2785406bbb9c6374` |
| 11 | `theorem` | [log_11_lower](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Attempt04/Variant86cdaca4596b1a81cd3b8f70c6086efe3c0de571de185bfce2eb8429a6ef8d10.lean/declarations/log-11-lower--58ad1be9f2f9925a2f228737.md) | 93 | `result-track:58ad1be9f2f9925a2f2287371754b6bb99561c3fc984d7ae42fac8d34b42f91c` |
| 12 | `theorem` | [log_13_lower](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Attempt04/Variant86cdaca4596b1a81cd3b8f70c6086efe3c0de571de185bfce2eb8429a6ef8d10.lean/declarations/log-13-lower--e86c734dce4014927feeed88.md) | 106 | `result-track:e86c734dce4014927feeed881d5ea544d4597842280727b8d21ec623d2cfd903` |
| 13 | `theorem` | [log_17_lower](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Attempt04/Variant86cdaca4596b1a81cd3b8f70c6086efe3c0de571de185bfce2eb8429a6ef8d10.lean/declarations/log-17-lower--80e62a119ef8ce2d150789ac.md) | 119 | `result-track:80e62a119ef8ce2d150789ac676385dcf8765ab0fa536cd2e54d798acd654388` |
| 14 | `theorem` | [log_19_lower](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Attempt04/Variant86cdaca4596b1a81cd3b8f70c6086efe3c0de571de185bfce2eb8429a6ef8d10.lean/declarations/log-19-lower--6d2bcae565f72762519a7c3e.md) | 132 | `result-track:6d2bcae565f72762519a7c3e987a2f6ecc00c36f0a041151c98f368cd2cbf770` |
| 15 | `theorem` | [log_23_lower](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Attempt04/Variant86cdaca4596b1a81cd3b8f70c6086efe3c0de571de185bfce2eb8429a6ef8d10.lean/declarations/log-23-lower--d8bf3c28b206e992163d6c68.md) | 145 | `result-track:d8bf3c28b206e992163d6c684cfbdc6c5cde8745afd05e5b9a547ad2df33ec46` |
| 16 | `theorem` | [log_29_lower](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Attempt04/Variant86cdaca4596b1a81cd3b8f70c6086efe3c0de571de185bfce2eb8429a6ef8d10.lean/declarations/log-29-lower--54bf5648e877c153ad1f5027.md) | 158 | `result-track:54bf5648e877c153ad1f502705cd603c8f02acc05689f15e5c3fbae641be5499` |
| 17 | `theorem` | [log_31_lower](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Attempt04/Variant86cdaca4596b1a81cd3b8f70c6086efe3c0de571de185bfce2eb8429a6ef8d10.lean/declarations/log-31-lower--22b19a3d53df201964246d41.md) | 171 | `result-track:22b19a3d53df201964246d41f00e7921612a134e3775869f34f4b5a875f04b5f` |
| 18 | `theorem` | [log_37_lower](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Attempt04/Variant86cdaca4596b1a81cd3b8f70c6086efe3c0de571de185bfce2eb8429a6ef8d10.lean/declarations/log-37-lower--67daf0c5b9e9bbca3c0d7807.md) | 184 | `result-track:67daf0c5b9e9bbca3c0d7807c40431a554b170b11931c160991e3cedf6bfb520` |
| 19 | `theorem` | [log_41_lower](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Attempt04/Variant86cdaca4596b1a81cd3b8f70c6086efe3c0de571de185bfce2eb8429a6ef8d10.lean/declarations/log-41-lower--46633d23e3bbc98914df23eb.md) | 197 | `result-track:46633d23e3bbc98914df23eb32f7ea7b140c62c307f3b84758b0df4e445648d5` |
| 20 | `theorem` | [log_43_lower](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Attempt04/Variant86cdaca4596b1a81cd3b8f70c6086efe3c0de571de185bfce2eb8429a6ef8d10.lean/declarations/log-43-lower--699100ed6bd9df5c436f510c.md) | 210 | `result-track:699100ed6bd9df5c436f510c85ea3d412e0cbd34f452f9c85f3a2849bfe6f7a2` |
| 21 | `theorem` | [log_47_lower](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Attempt04/Variant86cdaca4596b1a81cd3b8f70c6086efe3c0de571de185bfce2eb8429a6ef8d10.lean/declarations/log-47-lower--1a30a51aaf7ea82570bba39e.md) | 223 | `result-track:1a30a51aaf7ea82570bba39e149ccedfca7cb9a4afce76c386a76610d0b3e89b` |
| 22 | `theorem` | [log_53_lower](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Attempt04/Variant86cdaca4596b1a81cd3b8f70c6086efe3c0de571de185bfce2eb8429a6ef8d10.lean/declarations/log-53-lower--1e0778d562399f31ccd035ec.md) | 236 | `result-track:1e0778d562399f31ccd035ecccb90197bcb11a1dbfd98ba0b4a93f6967e0e062` |
| 23 | `theorem` | [log_59_lower](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Attempt04/Variant86cdaca4596b1a81cd3b8f70c6086efe3c0de571de185bfce2eb8429a6ef8d10.lean/declarations/log-59-lower--3ad229abfe6d96967110ad7c.md) | 249 | `result-track:3ad229abfe6d96967110ad7c9c276b68ac0759a349fbe0298e4e2847dd794e48` |
| 24 | `theorem` | [log_61_lower](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Attempt04/Variant86cdaca4596b1a81cd3b8f70c6086efe3c0de571de185bfce2eb8429a6ef8d10.lean/declarations/log-61-lower--72f06780bf7965681fb31459.md) | 262 | `result-track:72f06780bf7965681fb31459281436edb27b922c10ea56875fbb801f00839c6e` |
| 25 | `theorem` | [log_67_lower](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Attempt04/Variant86cdaca4596b1a81cd3b8f70c6086efe3c0de571de185bfce2eb8429a6ef8d10.lean/declarations/log-67-lower--c4d06b6c0dbfafac2532dae1.md) | 275 | `result-track:c4d06b6c0dbfafac2532dae1454ab2644db8336d17ea39aefe19f154cf1ffc87` |
| 26 | `theorem` | [log_71_lower](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Attempt04/Variant86cdaca4596b1a81cd3b8f70c6086efe3c0de571de185bfce2eb8429a6ef8d10.lean/declarations/log-71-lower--a6ec7b0fd2a7ab6d3936cbc2.md) | 288 | `result-track:a6ec7b0fd2a7ab6d3936cbc2c9545a6e25697456d3e7fea602f2844eead56320` |
| 27 | `theorem` | [log_73_lower](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Attempt04/Variant86cdaca4596b1a81cd3b8f70c6086efe3c0de571de185bfce2eb8429a6ef8d10.lean/declarations/log-73-lower--d3d79947ee4d43dde0b7332a.md) | 301 | `result-track:d3d79947ee4d43dde0b7332a1a1c16a5174dd32935a737001083c3ecb16d960f` |
| 28 | `theorem` | [log_79_lower](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Attempt04/Variant86cdaca4596b1a81cd3b8f70c6086efe3c0de571de185bfce2eb8429a6ef8d10.lean/declarations/log-79-lower--6e092385f8833592eeced5c5.md) | 314 | `result-track:6e092385f8833592eeced5c5dbf7d13555b85ef66bd1b3fbbc4886521cb56efa` |
| 29 | `theorem` | [log_83_lower](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Attempt04/Variant86cdaca4596b1a81cd3b8f70c6086efe3c0de571de185bfce2eb8429a6ef8d10.lean/declarations/log-83-lower--44b4a40aa06ae5be38319004.md) | 327 | `result-track:44b4a40aa06ae5be3831900450654d62ac136915d715c6b4d68ccdde65d6dd5e` |
| 30 | `theorem` | [log_89_lower](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Attempt04/Variant86cdaca4596b1a81cd3b8f70c6086efe3c0de571de185bfce2eb8429a6ef8d10.lean/declarations/log-89-lower--46a138fd597594d3ee38c5fb.md) | 340 | `result-track:46a138fd597594d3ee38c5fbc57be1343e16cbf4eae1326df61e721c3fdeab5c` |
| 31 | `theorem` | [log_97_lower](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Attempt04/Variant86cdaca4596b1a81cd3b8f70c6086efe3c0de571de185bfce2eb8429a6ef8d10.lean/declarations/log-97-lower--df0f0ff04273b16ecceaa705.md) | 353 | `result-track:df0f0ff04273b16ecceaa705ff8fade96d93d8c1907c01695de597cf71035288` |
| 32 | `def` | [primeInventory](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Attempt04/Variant86cdaca4596b1a81cd3b8f70c6086efe3c0de571de185bfce2eb8429a6ef8d10.lean/declarations/primeinventory--ceda2f6346639ef60980a9d0.md) | 366 | `declaration-track:ceda2f6346639ef60980a9d05693f7eef0cda855fd07aed39fa0f75e4d7cc4f5` |
| 33 | `def` | [certifiedLogLower](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Attempt04/Variant86cdaca4596b1a81cd3b8f70c6086efe3c0de571de185bfce2eb8429a6ef8d10.lean/declarations/certifiedloglower--c5d1d8a5a0e0a13f7ba10668.md) | 368 | `declaration-track:c5d1d8a5a0e0a13f7ba10668f95412e41f12ae1c30efb7c05229f8173d171d7f` |
| 34 | `def` | [powerCoefficient](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Attempt04/Variant86cdaca4596b1a81cd3b8f70c6086efe3c0de571de185bfce2eb8429a6ef8d10.lean/declarations/powercoefficient--9eec883d7b6d265d31cff947.md) | 371 | `declaration-track:9eec883d7b6d265d31cff9471a685a6cb22b35c28263da0576a17cafa034c9d9` |
| 35 | `def` | [finiteProperPowerMoment](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Attempt04/Variant86cdaca4596b1a81cd3b8f70c6086efe3c0de571de185bfce2eb8429a6ef8d10.lean/declarations/finiteproperpowermoment--69fa35207d11fd97581724d2.md) | 373 | `declaration-track:69fa35207d11fd97581724d2fd42eab3bc216b18a49c62632c80bf16bec362c3` |
| 36 | `theorem` | [inventory_primes](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Attempt04/Variant86cdaca4596b1a81cd3b8f70c6086efe3c0de571de185bfce2eb8429a6ef8d10.lean/declarations/inventory-primes--5d723d34354870060d2dfa09.md) | 376 | `result-track:5d723d34354870060d2dfa0908221ca5fd5d64c5866efa0d221a3fe3da35b033` |
| 37 | `theorem` | [inventory_log_lower](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Attempt04/Variant86cdaca4596b1a81cd3b8f70c6086efe3c0de571de185bfce2eb8429a6ef8d10.lean/declarations/inventory-log-lower--49e55de284c847085876d244.md) | 382 | `result-track:49e55de284c847085876d244a9f28d27e370ecf8bd8f75a754ec23d4c888c0d8` |
| 38 | `theorem` | [finiteProperPowerMoment_gt_nine_quarters](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Attempt04/Variant86cdaca4596b1a81cd3b8f70c6086efe3c0de571de185bfce2eb8429a6ef8d10.lean/declarations/finiteproperpowermoment-gt-nine-quarters--33f2e9a271dd6db92e99ed83.md) | 463 | `result-track:33f2e9a271dd6db92e99ed83500678173b6eff0debd1a33c0c79f2d6e41f3a8c` |
| 39 | `theorem` | [finiteProperPowerMoment_eq_atoms](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Attempt04/Variant86cdaca4596b1a81cd3b8f70c6086efe3c0de571de185bfce2eb8429a6ef8d10.lean/declarations/finiteproperpowermoment-eq-atoms--e46a580be049b63763861567.md) | 482 | `result-track:e46a580be049b63763861567c554294a1381971234eb1bbb6e1d783fe810b011` |
| 40 | `theorem` | [intercept_positive_of_actual_bridges](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Attempt04/Variant86cdaca4596b1a81cd3b8f70c6086efe3c0de571de185bfce2eb8429a6ef8d10.lean/declarations/intercept-positive-of-actual-bridges--22cacb76aadcab73272e7352.md) | 494 | `result-track:22cacb76aadcab73272e7352ee3b6f22fae813177ac505b07deb952daa14efd6` |
| 41 | `theorem` | [intercept_gt_one_five_hundred_of_actual_bridges](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Attempt04/Variant86cdaca4596b1a81cd3b8f70c6086efe3c0de571de185bfce2eb8429a6ef8d10.lean/declarations/intercept-gt-one-five-hundred-of-actual-bridges--8e41cba239699bdf90a7ca7c.md) | 503 | `result-track:8e41cba239699bdf90a7ca7cf89ae6d38ca1e4cc4bc378321621bb3235c14229` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
