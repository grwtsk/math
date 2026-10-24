# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Matrix.Variant60aa305475c8df5182ef129a6f5c6e9c626ca488ffd49f8b8a0d335333ed3c43

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4a0c77078e33a0c6e76ef7e317303eaf7214c045",
  "lexical_observation_count": 36,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Matrix/Variant60aa305475c8df5182ef129a6f5c6e9c626ca488ffd49f8b8a0d335333ed3c43.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Matrix/Variant60aa305475c8df5182ef129a6f5c6e9c626ca488ffd49f8b8a0d335333ed3c43.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Matrix/Variant60aa305475c8df5182ef129a6f5c6e9c626ca488ffd49f8b8a0d335333ed3c43.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4a0c77078e33a0c6e76ef7e317303eaf7214c045`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Matrix/Variant60aa305475c8df5182ef129a6f5c6e9c626ca488ffd49f8b8a0d335333ed3c43.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Matrix/Variant60aa305475c8df5182ef129a6f5c6e9c626ca488ffd49f8b8a0d335333ed3c43.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `LeanCert.ML.Optimized.IntervalArray` — import line 11; external provider; requires a separately pinned dependency.
- `LeanCert.ML.Optimized.QuantizedLayer` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Matrix.Basic` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [IntMatrix](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Matrix/Variant60aa305475c8df5182ef129a6f5c6e9c626ca488ffd49f8b8a0d335333ed3c43.lean/declarations/intmatrix--f16157b8615832737035b699.md) | 38 | `declaration-track:f16157b8615832737035b699abf7807bb9554346f450aeac8f66ed09e4aea62b` |
| 2 | `theorem` | [row_major_lt_of_lt_mul_of_lt](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Matrix/Variant60aa305475c8df5182ef129a6f5c6e9c626ca488ffd49f8b8a0d335333ed3c43.lean/declarations/row-major-lt-of-lt-mul-of-lt--85e4a585a348586dee956608.md) | 46 | `result-track:85e4a585a348586dee95660872068dc9ee2275abe45414a7d53af4ec193593a9` |
| 3 | `def` | [get](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Matrix/Variant60aa305475c8df5182ef129a6f5c6e9c626ca488ffd49f8b8a0d335333ed3c43.lean/declarations/get--f6812121fc9fec2cf69211f4.md) | 53 | `declaration-track:f6812121fc9fec2cf69211f4488ef20e520d228fd539d7d2bcc7ae8e7bae39bf` |
| 4 | `theorem` | [lt_mul_comm](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Matrix/Variant60aa305475c8df5182ef129a6f5c6e9c626ca488ffd49f8b8a0d335333ed3c43.lean/declarations/lt-mul-comm--c7a0972abfd333d14e0c43cd.md) | 59 | `result-track:c7a0972abfd333d14e0c43cd1646838adce32eab5352dd39a665330a2d2f586a` |
| 5 | `def` | [flatToElem](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Matrix/Variant60aa305475c8df5182ef129a6f5c6e9c626ca488ffd49f8b8a0d335333ed3c43.lean/declarations/flattoelem--50d2aabe91a26185d75e7915.md) | 63 | `declaration-track:50d2aabe91a26185d75e791511679fbc8f14d0baf900f8691dbe9cfdb3aba5d7` |
| 6 | `def` | [ofFn](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Matrix/Variant60aa305475c8df5182ef129a6f5c6e9c626ca488ffd49f8b8a0d335333ed3c43.lean/declarations/offn--945f6fa453fbfd753aea62eb.md) | 72 | `declaration-track:945f6fa453fbfd753aea62eb801382a582555edffad2ce980ac1b591a38261db` |
| 7 | `theorem` | [ofFn_get](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Matrix/Variant60aa305475c8df5182ef129a6f5c6e9c626ca488ffd49f8b8a0d335333ed3c43.lean/declarations/offn-get--0b9ef32825215a9b24fb49fd.md) | 80 | `result-track:0b9ef32825215a9b24fb49fd1b4d04ad74248005cff8501e059666f8cf5016f3` |
| 8 | `def` | [transpose](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Matrix/Variant60aa305475c8df5182ef129a6f5c6e9c626ca488ffd49f8b8a0d335333ed3c43.lean/declarations/transpose--09eab9cc670a20eae2a6c712.md) | 99 | `declaration-track:09eab9cc670a20eae2a6c7124d9b14731cd959c315ebed94a031334a32f7d4c7` |
| 9 | `def` | [zero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Matrix/Variant60aa305475c8df5182ef129a6f5c6e9c626ca488ffd49f8b8a0d335333ed3c43.lean/declarations/zero--b0d666e7e1e743120f9a3d22.md) | 103 | `declaration-track:b0d666e7e1e743120f9a3d22bd912800a8c2698fd6abd40e5fbff01869779cc7` |
| 10 | `structure` | [IntervalMatrix](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Matrix/Variant60aa305475c8df5182ef129a6f5c6e9c626ca488ffd49f8b8a0d335333ed3c43.lean/declarations/intervalmatrix--b4d9f9aed7cc5741c725ff55.md) | 111 | `declaration-track:b4d9f9aed7cc5741c725ff55afedda5cc3d4e24a2c83c0d03321f7fb17825199` |
| 11 | `def` | [getBounds](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Matrix/Variant60aa305475c8df5182ef129a6f5c6e9c626ca488ffd49f8b8a0d335333ed3c43.lean/declarations/getbounds--23ade49e12174df626eb60bc.md) | 118 | `declaration-track:23ade49e12174df626eb60bc9ad5139530ed0370d86d391c84a942c7e8be74b5` |
| 12 | `def` | [intervalMul](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Matrix/Variant60aa305475c8df5182ef129a6f5c6e9c626ca488ffd49f8b8a0d335333ed3c43.lean/declarations/intervalmul--fd7eee65fb7faf86912a068a.md) | 130 | `declaration-track:fd7eee65fb7faf86912a068ab092028c5d11a7352f6f0cc32d3bd9928e722338` |
| 13 | `def` | [intervalAdd](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Matrix/Variant60aa305475c8df5182ef129a6f5c6e9c626ca488ffd49f8b8a0d335333ed3c43.lean/declarations/intervaladd--6c79d6ed6d14091c17969f4c.md) | 140 | `declaration-track:6c79d6ed6d14091c17969f4c39584aacceb9e8c39a4792ba0037c46459785d81` |
| 14 | `def` | [matmul](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Matrix/Variant60aa305475c8df5182ef129a6f5c6e9c626ca488ffd49f8b8a0d335333ed3c43.lean/declarations/matmul--1e0b68bb7d6f8f6ccacd2841.md) | 152 | `declaration-track:1e0b68bb7d6f8f6ccacd2841527f247a5a3dcff71b4c2937a0f1bebec76e16b0` |
| 15 | `def` | [transpose](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Matrix/Variant60aa305475c8df5182ef129a6f5c6e9c626ca488ffd49f8b8a0d335333ed3c43.lean/declarations/transpose--c0bc09ee4b9cdac26f1e8d0c.md) | 183 | `declaration-track:c0bc09ee4b9cdac26f1e8d0c2ddc056068557664237ae2b90c26cfdbb9e4221a` |
| 16 | `def` | [zero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Matrix/Variant60aa305475c8df5182ef129a6f5c6e9c626ca488ffd49f8b8a0d335333ed3c43.lean/declarations/zero--0a150ce64a828aa35181b39e.md) | 187 | `declaration-track:0a150ce64a828aa35181b39e1b4cfc6beb56b02c53be275c35d29ea24a60327c` |
| 17 | `def` | [ofFn](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Matrix/Variant60aa305475c8df5182ef129a6f5c6e9c626ca488ffd49f8b8a0d335333ed3c43.lean/declarations/offn--7d7dd2163c798dbd522834e3.md) | 191 | `declaration-track:7d7dd2163c798dbd522834e3aaf7b3b0288c5c0813f87e812f035e012fbefd15` |
| 18 | `def` | [intVal](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Matrix/Variant60aa305475c8df5182ef129a6f5c6e9c626ca488ffd49f8b8a0d335333ed3c43.lean/declarations/intval--e5cab30b44caa1610555d717.md) | 199 | `declaration-track:e5cab30b44caa1610555d7173c0c8a96792ce3d7aeb936c8a3d5d9a390bf5ab4` |
| 19 | `theorem` | [intVal_mul](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Matrix/Variant60aa305475c8df5182ef129a6f5c6e9c626ca488ffd49f8b8a0d335333ed3c43.lean/declarations/intval-mul--2d0cb3747d6af030c69b693d.md) | 202 | `result-track:2d0cb3747d6af030c69b693d65e5a74ac6d446668fe187d16618e8d4d00921cb` |
| 20 | `theorem` | [intVal_add](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Matrix/Variant60aa305475c8df5182ef129a6f5c6e9c626ca488ffd49f8b8a0d335333ed3c43.lean/declarations/intval-add--bc142e2412d21b930dffaecb.md) | 211 | `result-track:bc142e2412d21b930dffaecbe8a400dcf2429c2b57a0b8c5b82602c7ab0f881e` |
| 21 | `def` | [IntMatrix.valAt](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Matrix/Variant60aa305475c8df5182ef129a6f5c6e9c626ca488ffd49f8b8a0d335333ed3c43.lean/declarations/intmatrix-valat--ec6fe6f5ae081974fd7bdb66.md) | 217 | `declaration-track:ec6fe6f5ae081974fd7bdb66ef3b7dd1f7201ecaec153761eefd3d698326fad6` |
| 22 | `def` | [IntervalMatrix.mem](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Matrix/Variant60aa305475c8df5182ef129a6f5c6e9c626ca488ffd49f8b8a0d335333ed3c43.lean/declarations/intervalmatrix-mem--610cc9eeab9e508316441e89.md) | 221 | `declaration-track:610cc9eeab9e508316441e8942b401167b1c37dc8bcd629e771c8eceffa96967` |
| 23 | `theorem` | [foldl_add_f_eq_foldl_map](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Matrix/Variant60aa305475c8df5182ef129a6f5c6e9c626ca488ffd49f8b8a0d335333ed3c43.lean/declarations/foldl-add-f-eq-foldl-map--5fcf2949e0523d6aac62aec8.md) | 230 | `result-track:5fcf2949e0523d6aac62aec8faefe7f8cf8d3f23d671102ed616ccbf66bb541a` |
| 24 | `theorem` | [finRange_foldl_add_eq_sum](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Matrix/Variant60aa305475c8df5182ef129a6f5c6e9c626ca488ffd49f8b8a0d335333ed3c43.lean/declarations/finrange-foldl-add-eq-sum--ccbd3a5d6dc1725380b75036.md) | 242 | `result-track:ccbd3a5d6dc1725380b75036ec8446ccba2584cddc19ea9fe75f8cc9bc4f48c4` |
| 25 | `theorem` | [Int_cast_foldl_add_gen](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Matrix/Variant60aa305475c8df5182ef129a6f5c6e9c626ca488ffd49f8b8a0d335333ed3c43.lean/declarations/int-cast-foldl-add-gen--0f1d4ab6cb6881da966cfdf1.md) | 249 | `result-track:0f1d4ab6cb6881da966cfdf1948639968238851437d41ee96613de26076db546` |
| 26 | `theorem` | [Int_cast_foldl_add](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Matrix/Variant60aa305475c8df5182ef129a6f5c6e9c626ca488ffd49f8b8a0d335333ed3c43.lean/declarations/int-cast-foldl-add--31b75289528a76cf61313aaa.md) | 260 | `result-track:31b75289528a76cf61313aaaa03eda696457550d167531923ed9ee7a73c1c7fa` |
| 27 | `theorem` | [sum_interval_le](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Matrix/Variant60aa305475c8df5182ef129a6f5c6e9c626ca488ffd49f8b8a0d335333ed3c43.lean/declarations/sum-interval-le--b6364310d1d9c90af7c0c1fd.md) | 270 | `result-track:b6364310d1d9c90af7c0c1fd9323d5f7590da7128d7bef7f944bbf49c06b033a` |
| 28 | `theorem` | [mul_mem_endpoints_left](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Matrix/Variant60aa305475c8df5182ef129a6f5c6e9c626ca488ffd49f8b8a0d335333ed3c43.lean/declarations/mul-mem-endpoints-left--38dec3bbfbac6b03dce154ea.md) | 282 | `result-track:38dec3bbfbac6b03dce154ea1bb71a453a6945dd81c8e915200f2278d60f54c3` |
| 29 | `theorem` | [mul_mem_endpoints_right](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Matrix/Variant60aa305475c8df5182ef129a6f5c6e9c626ca488ffd49f8b8a0d335333ed3c43.lean/declarations/mul-mem-endpoints-right--07e5b4f8fc98a8b0722a102d.md) | 295 | `result-track:07e5b4f8fc98a8b0722a102ddfe4366aad6e5285bc6eaa3e4077ccce0759bd07` |
| 30 | `theorem` | [mul_lower_bound](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Matrix/Variant60aa305475c8df5182ef129a6f5c6e9c626ca488ffd49f8b8a0d335333ed3c43.lean/declarations/mul-lower-bound--3bc48622c0730da7c494f8ea.md) | 308 | `result-track:3bc48622c0730da7c494f8ea9fb78d2bf8ce678fbf320f8bb00c903e629d785e` |
| 31 | `theorem` | [mul_upper_bound](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Matrix/Variant60aa305475c8df5182ef129a6f5c6e9c626ca488ffd49f8b8a0d335333ed3c43.lean/declarations/mul-upper-bound--08047fdc6a6d14ad7a5d3f78.md) | 327 | `result-track:08047fdc6a6d14ad7a5d3f78b1819d99d278f541f5d95da88cf6d66fde949587` |
| 32 | `theorem` | [mul_mem_corners](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Matrix/Variant60aa305475c8df5182ef129a6f5c6e9c626ca488ffd49f8b8a0d335333ed3c43.lean/declarations/mul-mem-corners--da16c485704b7bd58a5de2bc.md) | 346 | `result-track:da16c485704b7bd58a5de2bcdbe0bffe973c2e7fd3b07ddb9f453a22e29b5e01` |
| 33 | `theorem` | [intervalMul_sound](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Matrix/Variant60aa305475c8df5182ef129a6f5c6e9c626ca488ffd49f8b8a0d335333ed3c43.lean/declarations/intervalmul-sound--452a884d3c9c5f7246d1fa40.md) | 354 | `result-track:452a884d3c9c5f7246d1fa40a4823c6bd3574f1b4ba10e34107baf565b88342d` |
| 34 | `theorem` | [intervalMul_sound_scaled](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Matrix/Variant60aa305475c8df5182ef129a6f5c6e9c626ca488ffd49f8b8a0d335333ed3c43.lean/declarations/intervalmul-sound-scaled--218f2dad6c98b723bf1bfe01.md) | 374 | `result-track:218f2dad6c98b723bf1bfe01e151c7fae346bd4038ec306fe919a0dcaec82406` |
| 35 | `theorem` | [mem_transpose](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Matrix/Variant60aa305475c8df5182ef129a6f5c6e9c626ca488ffd49f8b8a0d335333ed3c43.lean/declarations/mem-transpose--c445be56a5134ac631266c5f.md) | 436 | `result-track:c445be56a5134ac631266c5f1f7c34871eef555fbe2bfa8055193cbd8aa315fa` |
| 36 | `theorem` | [mem_matmul](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Matrix/Variant60aa305475c8df5182ef129a6f5c6e9c626ca488ffd49f8b8a0d335333ed3c43.lean/declarations/mem-matmul--bef90e941ff9cf27e08ba69c.md) | 455 | `result-track:bef90e941ff9cf27e08ba69ca189b502dc299e1dabee184b1c1478f9ba8cdb2e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
