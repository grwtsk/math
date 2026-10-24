# Verification target: GRWTSK.Algebra.Field.Variant7b892c2644d13d27669932fa8e97e6006187b3075d9f4f85b8f0f86c27c4050a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "83f2ace5df7f17b3bc52d4babe443e3da146bc99",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Field/Variant7b892c2644d13d27669932fa8e97e6006187b3075d9f4f85b8f0f86c27c4050a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/FieldTheory/Variant7b892c2644d13d27669932fa8e97e6006187b3075d9f4f85b8f0f86c27c4050a.lean/index.md) · [Full source](../../../../mathematics/Algebra/FieldTheory/Variant7b892c2644d13d27669932fa8e97e6006187b3075d9f4f85b8f0f86c27c4050a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `83f2ace5df7f17b3bc52d4babe443e3da146bc99`.

Source path: `GRWTSK/Algebra/Field/Variant7b892c2644d13d27669932fa8e97e6006187b3075d9f4f85b8f0f86c27c4050a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Field/Variant7b892c2644d13d27669932fa8e97e6006187b3075d9f4f85b8f0f86c27c4050a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.ByCases` — import line 16; external provider; requires a separately pinned dependency.
- `Init.Omega` — import line 17; external provider; requires a separately pinned dependency.
- `Init.RCases` — import line 18; external provider; requires a separately pinned dependency.
- `Init.TacticsExtra` — import line 19; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [Field](../../../../mathematics/Algebra/FieldTheory/Variant7b892c2644d13d27669932fa8e97e6006187b3075d9f4f85b8f0f86c27c4050a.lean/declarations/field--9a3f57a8d4a6221d8bd4b584.md) | 31 | `declaration-track:9a3f57a8d4a6221d8bd4b5840b058c0aa05a797d1232492497a151e0870616f0` |
| 2 | `theorem` | [inv_mul_cancel](../../../../mathematics/Algebra/FieldTheory/Variant7b892c2644d13d27669932fa8e97e6006187b3075d9f4f85b8f0f86c27c4050a.lean/declarations/inv-mul-cancel--a9debd66b252017150de2233.md) | 56 | `result-track:a9debd66b252017150de2233f50b9cae0dee67f9e52aafc4682dbd234850f60b` |
| 3 | `theorem` | [eq_inv_of_mul_eq_one](../../../../mathematics/Algebra/FieldTheory/Variant7b892c2644d13d27669932fa8e97e6006187b3075d9f4f85b8f0f86c27c4050a.lean/declarations/eq-inv-of-mul-eq-one--9d1b2da3eb5efbcf0c5a3f24.md) | 59 | `result-track:9d1b2da3eb5efbcf0c5a3f24233e7db5f98b66cc1b7ffa1e536e2cb2dc282e13` |
| 4 | `theorem` | [inv_one](../../../../mathematics/Algebra/FieldTheory/Variant7b892c2644d13d27669932fa8e97e6006187b3075d9f4f85b8f0f86c27c4050a.lean/declarations/inv-one--a7345f09a5c90513c7570b2b.md) | 68 | `result-track:a7345f09a5c90513c7570b2be6b152a376521eda024cb01290d22cffb3587ed8` |
| 5 | `theorem` | [inv_inv](../../../../mathematics/Algebra/FieldTheory/Variant7b892c2644d13d27669932fa8e97e6006187b3075d9f4f85b8f0f86c27c4050a.lean/declarations/inv-inv--783e5629767995823665d685.md) | 71 | `result-track:783e5629767995823665d685ed1e53134c57954e9215b749c9309d1819a6b514` |
| 6 | `theorem` | [inv_eq_iff_eq_iff](../../../../mathematics/Algebra/FieldTheory/Variant7b892c2644d13d27669932fa8e97e6006187b3075d9f4f85b8f0f86c27c4050a.lean/declarations/inv-eq-iff-eq-iff--1351589516b9ecbc33eacf7a.md) | 79 | `result-track:1351589516b9ecbc33eacf7a64100dc55b46181fd84ca796347eabc4070888d5` |
| 7 | `theorem` | [inv_neg](../../../../mathematics/Algebra/FieldTheory/Variant7b892c2644d13d27669932fa8e97e6006187b3075d9f4f85b8f0f86c27c4050a.lean/declarations/inv-neg--05201516f53e394ced44818e.md) | 86 | `result-track:05201516f53e394ced44818e3196fc4797731a29600be6841b79f265a6d1fbda` |
| 8 | `theorem` | [inv_eq_zero_iff](../../../../mathematics/Algebra/FieldTheory/Variant7b892c2644d13d27669932fa8e97e6006187b3075d9f4f85b8f0f86c27c4050a.lean/declarations/inv-eq-zero-iff--ddd0847243b701e18fa38a74.md) | 94 | `result-track:ddd0847243b701e18fa38a743dd4f087998cbe0afe334210f2f7f84c58842e0a` |
| 9 | `theorem` | [zero_eq_inv_iff](../../../../mathematics/Algebra/FieldTheory/Variant7b892c2644d13d27669932fa8e97e6006187b3075d9f4f85b8f0f86c27c4050a.lean/declarations/zero-eq-inv-iff--9132cf995ce8ae3d64b9002d.md) | 110 | `result-track:9132cf995ce8ae3d64b9002d521ee742086012509d7bfc6b8a9fd92dbb3066b4` |
| 10 | `theorem` | [of_mul_eq_zero](../../../../mathematics/Algebra/FieldTheory/Variant7b892c2644d13d27669932fa8e97e6006187b3075d9f4f85b8f0f86c27c4050a.lean/declarations/of-mul-eq-zero--7b681f78b634241b4e0bee01.md) | 113 | `result-track:7b681f78b634241b4e0bee01e5635887ce6e51a4120280110e4c016cc442f041` |
| 11 | `theorem` | [inv_mul](../../../../mathematics/Algebra/FieldTheory/Variant7b892c2644d13d27669932fa8e97e6006187b3075d9f4f85b8f0f86c27c4050a.lean/declarations/inv-mul--866f9d8a5071d494e0db31de.md) | 125 | `result-track:866f9d8a5071d494e0db31dec7c4b7b8eb0336460fe3f73f64930bbc51f7e850` |
| 12 | `theorem` | [of_pow_eq_zero](../../../../mathematics/Algebra/FieldTheory/Variant7b892c2644d13d27669932fa8e97e6006187b3075d9f4f85b8f0f86c27c4050a.lean/declarations/of-pow-eq-zero--412701b3f28c734bae857d40.md) | 139 | `result-track:412701b3f28c734bae857d4017251cc8f95d6afd330dfcb26a44eb508d308617` |
| 13 | `theorem` | [zpow_natCast](../../../../mathematics/Algebra/FieldTheory/Variant7b892c2644d13d27669932fa8e97e6006187b3075d9f4f85b8f0f86c27c4050a.lean/declarations/zpow-natcast--69f9000accf97d83cfa32462.md) | 152 | `result-track:69f9000accf97d83cfa3246257c9d189dc55609d91c268dce48e2d83b610ba68` |
| 14 | `theorem` | [zpow_one](../../../../mathematics/Algebra/FieldTheory/Variant7b892c2644d13d27669932fa8e97e6006187b3075d9f4f85b8f0f86c27c4050a.lean/declarations/zpow-one--fe01fd45865cfc03f266b86f.md) | 157 | `result-track:fe01fd45865cfc03f266b86f7e0dfc6fe16dac758a285fa8dd323ec878e84b7d` |
| 15 | `theorem` | [zpow_neg_one](../../../../mathematics/Algebra/FieldTheory/Variant7b892c2644d13d27669932fa8e97e6006187b3075d9f4f85b8f0f86c27c4050a.lean/declarations/zpow-neg-one--eb455d0aba63eed968af7442.md) | 161 | `result-track:eb455d0aba63eed968af7442b43523a9a94ca012cee625d8ec4fd0e80795cf2b` |
| 16 | `theorem` | [zpow_add_one](../../../../mathematics/Algebra/FieldTheory/Variant7b892c2644d13d27669932fa8e97e6006187b3075d9f4f85b8f0f86c27c4050a.lean/declarations/zpow-add-one--b69865dbf1d654544fbd394a.md) | 164 | `result-track:b69865dbf1d654544fbd394a1042920cb223140cd1160d71b2db4edf6e4c6060` |
| 17 | `theorem` | [zpow_sub_one](../../../../mathematics/Algebra/FieldTheory/Variant7b892c2644d13d27669932fa8e97e6006187b3075d9f4f85b8f0f86c27c4050a.lean/declarations/zpow-sub-one--96900c70aa07bdbaf69587c9.md) | 171 | `result-track:96900c70aa07bdbaf69587c92f8b56b6c1bd3280a8a7fa0c34b115bcfcc98814` |
| 18 | `theorem` | [zpow_add](../../../../mathematics/Algebra/FieldTheory/Variant7b892c2644d13d27669932fa8e97e6006187b3075d9f4f85b8f0f86c27c4050a.lean/declarations/zpow-add--952d1b7385a6afd4bb9bd2d3.md) | 177 | `result-track:952d1b7385a6afd4bb9bd2d3ed3121ac041f8d4229f7bbf0bb8030ce08f7478e` |
| 19 | `theorem` | [div_zero](../../../../mathematics/Algebra/FieldTheory/Variant7b892c2644d13d27669932fa8e97e6006187b3075d9f4f85b8f0f86c27c4050a.lean/declarations/div-zero--8c7d485a5820e21edf40e91e.md) | 188 | `result-track:8c7d485a5820e21edf40e91efdf0922d5fb8eb0d54408575af3c3286c1206d56` |
| 20 | `theorem` | [mul_div](../../../../mathematics/Algebra/FieldTheory/Variant7b892c2644d13d27669932fa8e97e6006187b3075d9f4f85b8f0f86c27c4050a.lean/declarations/mul-div--82f9ad1709aa55929b65f26c.md) | 190 | `result-track:82f9ad1709aa55929b65f26c8c42674570fb7af57141f8715bb1c1da4feb18ae` |
| 21 | `theorem` | [div_mul](../../../../mathematics/Algebra/FieldTheory/Variant7b892c2644d13d27669932fa8e97e6006187b3075d9f4f85b8f0f86c27c4050a.lean/declarations/div-mul--5791e4a076a8205cdc7d8ede.md) | 192 | `result-track:5791e4a076a8205cdc7d8edede0a4ea32976277f5b6df8b8231d579cacf919a3` |
| 22 | `theorem` | [div_add](../../../../mathematics/Algebra/FieldTheory/Variant7b892c2644d13d27669932fa8e97e6006187b3075d9f4f85b8f0f86c27c4050a.lean/declarations/div-add--904c6da4fce78bdc12b1baa1.md) | 195 | `result-track:904c6da4fce78bdc12b1baa12cf10f8653c9d8ae9d7efdf45823155cd24efda6` |
| 23 | `theorem` | [add_div](../../../../mathematics/Algebra/FieldTheory/Variant7b892c2644d13d27669932fa8e97e6006187b3075d9f4f85b8f0f86c27c4050a.lean/declarations/add-div--892f9a8a403fe3e3499cc225.md) | 198 | `result-track:892f9a8a403fe3e3499cc225f78079ecc7359d5f84c6805d27a34448aff0105d` |
| 24 | `theorem` | [div_div_right](../../../../mathematics/Algebra/FieldTheory/Variant7b892c2644d13d27669932fa8e97e6006187b3075d9f4f85b8f0f86c27c4050a.lean/declarations/div-div-right--1246077a124a07326e943267.md) | 202 | `result-track:1246077a124a07326e943267b9a4cb17553a89c44e029e6734d427de51f3688b` |
| 25 | `theorem` | [div_div_left](../../../../mathematics/Algebra/FieldTheory/Variant7b892c2644d13d27669932fa8e97e6006187b3075d9f4f85b8f0f86c27c4050a.lean/declarations/div-div-left--7faef5c9ae2f81112cca10b3.md) | 205 | `result-track:7faef5c9ae2f81112cca10b3057a10313b676adfbf44e5d376921ad2bed62944` |
| 26 | `theorem` | [div_mul_cancel](../../../../mathematics/Algebra/FieldTheory/Variant7b892c2644d13d27669932fa8e97e6006187b3075d9f4f85b8f0f86c27c4050a.lean/declarations/div-mul-cancel--804983a7005ddd8807ff6a65.md) | 207 | `result-track:804983a7005ddd8807ff6a6551b62631faac26652776c88d5776111aa9f81d0f` |
| 27 | `theorem` | [natCast_ne_zero](../../../../mathematics/Algebra/FieldTheory/Variant7b892c2644d13d27669932fa8e97e6006187b3075d9f4f85b8f0f86c27c4050a.lean/declarations/natcast-ne-zero--e6ae816d02e13935603706d0.md) | 211 | `result-track:e6ae816d02e13935603706d03798159b52fbcf4dda391fbd300c766013602906` |
| 28 | `theorem` | [intCast_div_of_dvd](../../../../mathematics/Algebra/FieldTheory/Variant7b892c2644d13d27669932fa8e97e6006187b3075d9f4f85b8f0f86c27c4050a.lean/declarations/intcast-div-of-dvd--c933e04994b67c35d31643dd.md) | 215 | `result-track:c933e04994b67c35d31643dd7db74844734e1ec048145e2e0512c9771b46e50d` |
| 29 | `theorem` | [natCast_div_of_dvd](../../../../mathematics/Algebra/FieldTheory/Variant7b892c2644d13d27669932fa8e97e6006187b3075d9f4f85b8f0f86c27c4050a.lean/declarations/natcast-div-of-dvd--706545b8cb60da5cc1e7dd02.md) | 225 | `result-track:706545b8cb60da5cc1e7dd0243c53941b1e22491fee3c2d32b0db08bd79a0b28` |
| 30 | `def` | [noNatZeroDivisors.ofIsCharPZero](../../../../mathematics/Algebra/FieldTheory/Variant7b892c2644d13d27669932fa8e97e6006187b3075d9f4f85b8f0f86c27c4050a.lean/declarations/nonatzerodivisors-ofischarpzero--7057f9183115717007576ca1.md) | 237 | `declaration-track:7057f9183115717007576ca1b66916404caf7b7d67b42398a9c31d05b617346f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
