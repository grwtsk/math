# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Matrix.Varianted3afbea2644d1b8f06963367a60ced7b83130d909e2b507381e6fe17b053625

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f8ccf5ee529afc5eb69067839b4c883f2152e0ac",
  "lexical_observation_count": 36,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Matrix/Varianted3afbea2644d1b8f06963367a60ced7b83130d909e2b507381e6fe17b053625.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Matrix/Varianted3afbea2644d1b8f06963367a60ced7b83130d909e2b507381e6fe17b053625.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Matrix/Varianted3afbea2644d1b8f06963367a60ced7b83130d909e2b507381e6fe17b053625.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f8ccf5ee529afc5eb69067839b4c883f2152e0ac`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Matrix/Varianted3afbea2644d1b8f06963367a60ced7b83130d909e2b507381e6fe17b053625.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Matrix/Varianted3afbea2644d1b8f06963367a60ced7b83130d909e2b507381e6fe17b053625.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `LeanCert.ML.Optimized.IntervalArray` — import line 6; external provider; requires a separately pinned dependency.
- `LeanCert.ML.Optimized.QuantizedLayer` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Matrix.Basic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [IntMatrix](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Matrix/Varianted3afbea2644d1b8f06963367a60ced7b83130d909e2b507381e6fe17b053625.lean/declarations/intmatrix--57c8370e9c546ddf8c0c6f1c.md) | 30 | `declaration-track:57c8370e9c546ddf8c0c6f1c3caff658fda844559542851809e865e0229a52fa` |
| 2 | `theorem` | [row_major_lt_of_lt_mul_of_lt](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Matrix/Varianted3afbea2644d1b8f06963367a60ced7b83130d909e2b507381e6fe17b053625.lean/declarations/row-major-lt-of-lt-mul-of-lt--5e232f5e10a94bf9f23296db.md) | 38 | `result-track:5e232f5e10a94bf9f23296dbc178e3413c8e29662fe6dbf846cd0cdb49ee9810` |
| 3 | `def` | [get](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Matrix/Varianted3afbea2644d1b8f06963367a60ced7b83130d909e2b507381e6fe17b053625.lean/declarations/get--e686c5710cd3e9dabd524a98.md) | 45 | `declaration-track:e686c5710cd3e9dabd524a98ad5b89943b042c2ef0af04199fad2ff5c8ecca04` |
| 4 | `theorem` | [lt_mul_comm](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Matrix/Varianted3afbea2644d1b8f06963367a60ced7b83130d909e2b507381e6fe17b053625.lean/declarations/lt-mul-comm--b1f70cc60714b470645525a2.md) | 51 | `result-track:b1f70cc60714b470645525a2c245740535d4520be088e71b471578044f9a051a` |
| 5 | `def` | [flatToElem](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Matrix/Varianted3afbea2644d1b8f06963367a60ced7b83130d909e2b507381e6fe17b053625.lean/declarations/flattoelem--3200a7705c0eeeae11cb01d9.md) | 55 | `declaration-track:3200a7705c0eeeae11cb01d9b80e76ce8d401ff36a9e21f7ad89e47c0a04826a` |
| 6 | `def` | [ofFn](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Matrix/Varianted3afbea2644d1b8f06963367a60ced7b83130d909e2b507381e6fe17b053625.lean/declarations/offn--800bef788493a5ddb6b75e8f.md) | 64 | `declaration-track:800bef788493a5ddb6b75e8ff3844eecd9ed6cf7a8cbbd5cc7f4895e1e176744` |
| 7 | `theorem` | [ofFn_get](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Matrix/Varianted3afbea2644d1b8f06963367a60ced7b83130d909e2b507381e6fe17b053625.lean/declarations/offn-get--09a66703d38493d11b698a23.md) | 72 | `result-track:09a66703d38493d11b698a2308d2e6229834dcb6360fd94ecc5e5f5896ff0f27` |
| 8 | `def` | [transpose](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Matrix/Varianted3afbea2644d1b8f06963367a60ced7b83130d909e2b507381e6fe17b053625.lean/declarations/transpose--2549417d997b2563e99146f0.md) | 91 | `declaration-track:2549417d997b2563e99146f0925f303fb86f08eb2bf3f4def839f5b494159ebb` |
| 9 | `def` | [zero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Matrix/Varianted3afbea2644d1b8f06963367a60ced7b83130d909e2b507381e6fe17b053625.lean/declarations/zero--1da01f6ba43cf4db66a2712e.md) | 95 | `declaration-track:1da01f6ba43cf4db66a2712e3c2fc68184ca3d87b47fac3a01ad1a9c3de0b77f` |
| 10 | `structure` | [IntervalMatrix](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Matrix/Varianted3afbea2644d1b8f06963367a60ced7b83130d909e2b507381e6fe17b053625.lean/declarations/intervalmatrix--fa3aab52fce15d2abb54a843.md) | 103 | `declaration-track:fa3aab52fce15d2abb54a84349a02ac5489f78ae9d07b3bd58050049c13380b3` |
| 11 | `def` | [getBounds](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Matrix/Varianted3afbea2644d1b8f06963367a60ced7b83130d909e2b507381e6fe17b053625.lean/declarations/getbounds--d02e288ed27c4134d4bafc45.md) | 110 | `declaration-track:d02e288ed27c4134d4bafc45aebfa613985a9b02b1ea545aa1f27d4757a78076` |
| 12 | `def` | [intervalMul](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Matrix/Varianted3afbea2644d1b8f06963367a60ced7b83130d909e2b507381e6fe17b053625.lean/declarations/intervalmul--06f0d6e0f10671c24fe12784.md) | 122 | `declaration-track:06f0d6e0f10671c24fe12784a3ddaf40d94c2e2d1282ac928a5074e265a20535` |
| 13 | `def` | [intervalAdd](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Matrix/Varianted3afbea2644d1b8f06963367a60ced7b83130d909e2b507381e6fe17b053625.lean/declarations/intervaladd--b4bc5b86beea2694dfe6d6da.md) | 132 | `declaration-track:b4bc5b86beea2694dfe6d6daf81259cb2929bb5de4e3855da1f1eb429c6e61e5` |
| 14 | `def` | [matmul](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Matrix/Varianted3afbea2644d1b8f06963367a60ced7b83130d909e2b507381e6fe17b053625.lean/declarations/matmul--cc4a05bc9e90e5226b135898.md) | 144 | `declaration-track:cc4a05bc9e90e5226b135898e81a6c479308c83ad64f6b7318f55f8ede5d1db9` |
| 15 | `def` | [transpose](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Matrix/Varianted3afbea2644d1b8f06963367a60ced7b83130d909e2b507381e6fe17b053625.lean/declarations/transpose--81436b0166f172a30c9a2d42.md) | 175 | `declaration-track:81436b0166f172a30c9a2d421caa7bc1f6cefb951e9d41c6d1b1a1703d0e7fbd` |
| 16 | `def` | [zero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Matrix/Varianted3afbea2644d1b8f06963367a60ced7b83130d909e2b507381e6fe17b053625.lean/declarations/zero--110eed76c976f78271539db4.md) | 179 | `declaration-track:110eed76c976f78271539db4022ea1398df5aa5dcb52bf6f5f87f14f1bf5ce6c` |
| 17 | `def` | [ofFn](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Matrix/Varianted3afbea2644d1b8f06963367a60ced7b83130d909e2b507381e6fe17b053625.lean/declarations/offn--0f904da43709388e8666f255.md) | 183 | `declaration-track:0f904da43709388e8666f2552b56063fcd3dc581a53807325f3ae999a430e4ce` |
| 18 | `def` | [intVal](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Matrix/Varianted3afbea2644d1b8f06963367a60ced7b83130d909e2b507381e6fe17b053625.lean/declarations/intval--3b2cf7e551cd4edb17800222.md) | 191 | `declaration-track:3b2cf7e551cd4edb17800222940f4f2be0c10f5e9e2e4ba1494b0afd767587bc` |
| 19 | `theorem` | [intVal_mul](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Matrix/Varianted3afbea2644d1b8f06963367a60ced7b83130d909e2b507381e6fe17b053625.lean/declarations/intval-mul--801a87343c1ac262b81b6b2f.md) | 194 | `result-track:801a87343c1ac262b81b6b2f39fb78d7ca5a841bcdb544ec128697e25cdb3b37` |
| 20 | `theorem` | [intVal_add](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Matrix/Varianted3afbea2644d1b8f06963367a60ced7b83130d909e2b507381e6fe17b053625.lean/declarations/intval-add--908c327c9ed1d0832ddefa90.md) | 203 | `result-track:908c327c9ed1d0832ddefa90907829fa80072021448adc95de5c820bf7adbd83` |
| 21 | `def` | [IntMatrix.valAt](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Matrix/Varianted3afbea2644d1b8f06963367a60ced7b83130d909e2b507381e6fe17b053625.lean/declarations/intmatrix-valat--b8097279e76cc2c079527e09.md) | 209 | `declaration-track:b8097279e76cc2c079527e0918ff58fecb4d51e23b05961efca66062a7dd9be3` |
| 22 | `def` | [IntervalMatrix.mem](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Matrix/Varianted3afbea2644d1b8f06963367a60ced7b83130d909e2b507381e6fe17b053625.lean/declarations/intervalmatrix-mem--cecdd2a83c8683c4ee9d4426.md) | 213 | `declaration-track:cecdd2a83c8683c4ee9d4426023e67f1397db86dc328f63cff94d197f0541a41` |
| 23 | `theorem` | [foldl_add_f_eq_foldl_map](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Matrix/Varianted3afbea2644d1b8f06963367a60ced7b83130d909e2b507381e6fe17b053625.lean/declarations/foldl-add-f-eq-foldl-map--f1946031f036f074a7446cb6.md) | 222 | `result-track:f1946031f036f074a7446cb66448d34a24ccdc7b1385aa4cda13ebbc8ec19fa3` |
| 24 | `theorem` | [finRange_foldl_add_eq_sum](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Matrix/Varianted3afbea2644d1b8f06963367a60ced7b83130d909e2b507381e6fe17b053625.lean/declarations/finrange-foldl-add-eq-sum--34fdf7e2b37f072c999a145a.md) | 234 | `result-track:34fdf7e2b37f072c999a145a6bfc1fe59c276429b32cde388d2bea04bf89d97d` |
| 25 | `theorem` | [Int_cast_foldl_add_gen](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Matrix/Varianted3afbea2644d1b8f06963367a60ced7b83130d909e2b507381e6fe17b053625.lean/declarations/int-cast-foldl-add-gen--ae4726036ccf8569d0bc7ff0.md) | 241 | `result-track:ae4726036ccf8569d0bc7ff05eb7aca79d6913c896c4c1934b8b801089bcb710` |
| 26 | `theorem` | [Int_cast_foldl_add](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Matrix/Varianted3afbea2644d1b8f06963367a60ced7b83130d909e2b507381e6fe17b053625.lean/declarations/int-cast-foldl-add--94355917618eaee37298b89d.md) | 252 | `result-track:94355917618eaee37298b89d79dad553e4abf5f3f464dcad47450605d3ad94fc` |
| 27 | `theorem` | [sum_interval_le](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Matrix/Varianted3afbea2644d1b8f06963367a60ced7b83130d909e2b507381e6fe17b053625.lean/declarations/sum-interval-le--d803cb0fcde88e9c29155af3.md) | 262 | `result-track:d803cb0fcde88e9c29155af3bc3fbda3e0a3d8ac51f0aace5ef24ecccd69f9a6` |
| 28 | `theorem` | [mul_mem_endpoints_left](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Matrix/Varianted3afbea2644d1b8f06963367a60ced7b83130d909e2b507381e6fe17b053625.lean/declarations/mul-mem-endpoints-left--eaf665bd22745e4e31399061.md) | 274 | `result-track:eaf665bd22745e4e31399061a1d767d626022084d2a1f8e79e5b004cd96048c1` |
| 29 | `theorem` | [mul_mem_endpoints_right](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Matrix/Varianted3afbea2644d1b8f06963367a60ced7b83130d909e2b507381e6fe17b053625.lean/declarations/mul-mem-endpoints-right--31718e0cd9e5c9d818208c62.md) | 287 | `result-track:31718e0cd9e5c9d818208c627d300a2708150c5af05e68d991930448b41127f1` |
| 30 | `theorem` | [mul_lower_bound](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Matrix/Varianted3afbea2644d1b8f06963367a60ced7b83130d909e2b507381e6fe17b053625.lean/declarations/mul-lower-bound--e7386cbc1b19cb792fc3fc3a.md) | 300 | `result-track:e7386cbc1b19cb792fc3fc3af9f96493758fb347632cc1d5abbba3b23f115468` |
| 31 | `theorem` | [mul_upper_bound](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Matrix/Varianted3afbea2644d1b8f06963367a60ced7b83130d909e2b507381e6fe17b053625.lean/declarations/mul-upper-bound--79d7ecf26d53d1b3fb924b61.md) | 319 | `result-track:79d7ecf26d53d1b3fb924b61597f159bc6d485ba1e2ab44372c92f2e8e33919f` |
| 32 | `theorem` | [mul_mem_corners](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Matrix/Varianted3afbea2644d1b8f06963367a60ced7b83130d909e2b507381e6fe17b053625.lean/declarations/mul-mem-corners--02c6635919398d8a96eea15a.md) | 338 | `result-track:02c6635919398d8a96eea15a7f2fd322b69a992df44cce5de27e88cb4844339b` |
| 33 | `theorem` | [intervalMul_sound](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Matrix/Varianted3afbea2644d1b8f06963367a60ced7b83130d909e2b507381e6fe17b053625.lean/declarations/intervalmul-sound--8b724cb6e984dc09aeebb270.md) | 346 | `result-track:8b724cb6e984dc09aeebb270f1ad6ada1d3702fa4436e10960e3469f55ee8f72` |
| 34 | `theorem` | [intervalMul_sound_scaled](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Matrix/Varianted3afbea2644d1b8f06963367a60ced7b83130d909e2b507381e6fe17b053625.lean/declarations/intervalmul-sound-scaled--6098db1048d07a8aad4ac7c6.md) | 366 | `result-track:6098db1048d07a8aad4ac7c62c022230313b534c60db25dacaafbb1777612691` |
| 35 | `theorem` | [mem_transpose](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Matrix/Varianted3afbea2644d1b8f06963367a60ced7b83130d909e2b507381e6fe17b053625.lean/declarations/mem-transpose--ce0ea8cdd7d21a62937ea3d3.md) | 428 | `result-track:ce0ea8cdd7d21a62937ea3d3fe3e6bca71ba222f2e954cc4d6b86046484cc7f6` |
| 36 | `theorem` | [mem_matmul](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Matrix/Varianted3afbea2644d1b8f06963367a60ced7b83130d909e2b507381e6fe17b053625.lean/declarations/mem-matmul--c06ff67ddbeee635dd593d24.md) | 447 | `result-track:c06ff67ddbeee635dd593d24d861961a3b39fed00b08824c19c6ccd2a507c17f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
