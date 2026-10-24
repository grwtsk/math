# Verification target: GRWTSK.Algebra.Span.Variant8347ebcd269ad8393f202f4573dde28baddeca253aefbc7e81ab7e7eb1adca94

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "64189fd77f07a9a83b650b019e9b1ca08f25e48e",
  "lexical_observation_count": 45,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Span/Variant8347ebcd269ad8393f202f4573dde28baddeca253aefbc7e81ab7e7eb1adca94.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Span/Variant8347ebcd269ad8393f202f4573dde28baddeca253aefbc7e81ab7e7eb1adca94.lean/index.md) · [Full source](../../../../mathematics/Algebra/Span/Variant8347ebcd269ad8393f202f4573dde28baddeca253aefbc7e81ab7e7eb1adca94.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `64189fd77f07a9a83b650b019e9b1ca08f25e48e`.

Source path: `GRWTSK/Algebra/Span/Variant8347ebcd269ad8393f202f4573dde28baddeca253aefbc7e81ab7e7eb1adca94.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Span/Variant8347ebcd269ad8393f202f4573dde28baddeca253aefbc7e81ab7e7eb1adca94.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.GroupWithZero.Associated` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Idempotent` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Regular` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Span.Basic` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Ideal.Lattice` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Ring` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [IsPrincipalIdealRing](../../../../mathematics/Algebra/Span/Variant8347ebcd269ad8393f202f4573dde28baddeca253aefbc7e81ab7e7eb1adca94.lean/declarations/isprincipalidealring--b7d56c884f9b20e1d3eb094c.md) | 42 | `declaration-track:b7d56c884f9b20e1d3eb094c0c159231911a563aabf682b0540b54421233b437` |
| 2 | `def` | [span](../../../../mathematics/Algebra/Span/Variant8347ebcd269ad8393f202f4573dde28baddeca253aefbc7e81ab7e7eb1adca94.lean/declarations/span--c13717d8654868567100b564.md) | 54 | `declaration-track:c13717d8654868567100b56451176daa05829cf5da7d00fca0c3b939ad9a8fdf` |
| 3 | `theorem` | [submodule_span_eq](../../../../mathematics/Algebra/Span/Variant8347ebcd269ad8393f202f4573dde28baddeca253aefbc7e81ab7e7eb1adca94.lean/declarations/submodule-span-eq--42dc7a06911fa5f1b1d15418.md) | 58 | `result-track:42dc7a06911fa5f1b1d154189319744fa3db96cfb5d4553a5647bb5cf0b52e62` |
| 4 | `theorem` | [span_empty](../../../../mathematics/Algebra/Span/Variant8347ebcd269ad8393f202f4573dde28baddeca253aefbc7e81ab7e7eb1adca94.lean/declarations/span-empty--beae088e737c9f771789d45c.md) | 62 | `result-track:beae088e737c9f771789d45cee60f0292125584d4b7568e6e1d0c4ac76a1e7c2` |
| 5 | `theorem` | [span_univ](../../../../mathematics/Algebra/Span/Variant8347ebcd269ad8393f202f4573dde28baddeca253aefbc7e81ab7e7eb1adca94.lean/declarations/span-univ--9b0b97fd6302ca521d79a9ec.md) | 66 | `result-track:9b0b97fd6302ca521d79a9ec621e24de7e99f6b9a60e552259c91e6e075f1ef7` |
| 6 | `theorem` | [span_union](../../../../mathematics/Algebra/Span/Variant8347ebcd269ad8393f202f4573dde28baddeca253aefbc7e81ab7e7eb1adca94.lean/declarations/span-union--21b5b65c2c17db6a5b902797.md) | 69 | `result-track:21b5b65c2c17db6a5b902797fdc6e93321d3767fcaa4c3696af0b1b690f47e87` |
| 7 | `theorem` | [span_iUnion](../../../../mathematics/Algebra/Span/Variant8347ebcd269ad8393f202f4573dde28baddeca253aefbc7e81ab7e7eb1adca94.lean/declarations/span-iunion--3851146b3d9925aa0e667db2.md) | 72 | `result-track:3851146b3d9925aa0e667db2ba2ffd03a90e7b73483d2f969fcfd67a64440f90` |
| 8 | `theorem` | [mem_span](../../../../mathematics/Algebra/Span/Variant8347ebcd269ad8393f202f4573dde28baddeca253aefbc7e81ab7e7eb1adca94.lean/declarations/mem-span--fedb10cad123e1bfe857feb6.md) | 75 | `result-track:fedb10cad123e1bfe857feb685a242c96f2123be7f7e41922e312142f7ae5f88` |
| 9 | `theorem` | [subset_span](../../../../mathematics/Algebra/Span/Variant8347ebcd269ad8393f202f4573dde28baddeca253aefbc7e81ab7e7eb1adca94.lean/declarations/subset-span--285b309b3e86f60878667aed.md) | 78 | `result-track:285b309b3e86f60878667aedcfcf19589525f2a4d3a2c21b4391573f4a4d7ea1` |
| 10 | `theorem` | [span_le](../../../../mathematics/Algebra/Span/Variant8347ebcd269ad8393f202f4573dde28baddeca253aefbc7e81ab7e7eb1adca94.lean/declarations/span-le--bec24acdf296247b2007620b.md) | 81 | `result-track:bec24acdf296247b2007620ba72822ee3f1dff10520676764678d7f8ea6f2fd7` |
| 11 | `theorem` | [span_mono](../../../../mathematics/Algebra/Span/Variant8347ebcd269ad8393f202f4573dde28baddeca253aefbc7e81ab7e7eb1adca94.lean/declarations/span-mono--762475ea710aecadc284eddd.md) | 85 | `result-track:762475ea710aecadc284eddd770ecfbab8bde7d2d5ac6818e553769045186757` |
| 12 | `theorem` | [span_eq](../../../../mathematics/Algebra/Span/Variant8347ebcd269ad8393f202f4573dde28baddeca253aefbc7e81ab7e7eb1adca94.lean/declarations/span-eq--0394f4350d03029c1488ab82.md) | 89 | `result-track:0394f4350d03029c1488ab82bff860bc602094616767fde1bc33074326adc77f` |
| 13 | `theorem` | [span_singleton_one](../../../../mathematics/Algebra/Span/Variant8347ebcd269ad8393f202f4573dde28baddeca253aefbc7e81ab7e7eb1adca94.lean/declarations/span-singleton-one--bd64f979df4f20037aa73cc9.md) | 93 | `result-track:bd64f979df4f20037aa73cc9a92f189932c9cf9a5ebd529f10747dc29d20fcef` |
| 14 | `theorem` | [isCompactElement_top](../../../../mathematics/Algebra/Span/Variant8347ebcd269ad8393f202f4573dde28baddeca253aefbc7e81ab7e7eb1adca94.lean/declarations/iscompactelement-top--aceda6e563a571e245d4cc67.md) | 96 | `result-track:aceda6e563a571e245d4cc67eb87541f9c474d2a8b5d9f24b0b7b78928b821cd` |
| 15 | `theorem` | [mem_span_insert](../../../../mathematics/Algebra/Span/Variant8347ebcd269ad8393f202f4573dde28baddeca253aefbc7e81ab7e7eb1adca94.lean/declarations/mem-span-insert--151e4092e7405594569d7dac.md) | 99 | `result-track:151e4092e7405594569d7dac411a55d1662248703ed49d49c487560b79c51cc2` |
| 16 | `theorem` | [mem_span_singleton'](../../../../mathematics/Algebra/Span/Variant8347ebcd269ad8393f202f4573dde28baddeca253aefbc7e81ab7e7eb1adca94.lean/declarations/mem-span-singleton--04c1945eb819968865ea2ea5.md) | 103 | `result-track:04c1945eb819968865ea2ea54b57406b0cf58d54c8dd060f1bb3b204810dd3fa` |
| 17 | `theorem` | [mem_span_singleton_self](../../../../mathematics/Algebra/Span/Variant8347ebcd269ad8393f202f4573dde28baddeca253aefbc7e81ab7e7eb1adca94.lean/declarations/mem-span-singleton-self--b5d81311f85b389422afec29.md) | 106 | `result-track:b5d81311f85b389422afec297cf8595788da21deb2b1b3dc6165df61e99abbf7` |
| 18 | `theorem` | [span_singleton_le_iff_mem](../../../../mathematics/Algebra/Span/Variant8347ebcd269ad8393f202f4573dde28baddeca253aefbc7e81ab7e7eb1adca94.lean/declarations/span-singleton-le-iff-mem--2cb2e6646a9d3a3f3156eec5.md) | 109 | `result-track:2cb2e6646a9d3a3f3156eec5f387976cb1c1a6d24cdce3074de2ce994283f1ba` |
| 19 | `theorem` | [span_singleton_mul_left_unit](../../../../mathematics/Algebra/Span/Variant8347ebcd269ad8393f202f4573dde28baddeca253aefbc7e81ab7e7eb1adca94.lean/declarations/span-singleton-mul-left-unit--d76c7eefb629142a315505da.md) | 112 | `result-track:d76c7eefb629142a315505da6ae3b4024f228abeb4a35412ccbb69381b9a5de5` |
| 20 | `theorem` | [span_insert](../../../../mathematics/Algebra/Span/Variant8347ebcd269ad8393f202f4573dde28baddeca253aefbc7e81ab7e7eb1adca94.lean/declarations/span-insert--8da706e7d9c48dce1aa924af.md) | 117 | `result-track:8da706e7d9c48dce1aa924af3e15a342309d3ee8a423dab87ff1da84e503f7cf` |
| 21 | `theorem` | [span_eq_bot](../../../../mathematics/Algebra/Span/Variant8347ebcd269ad8393f202f4573dde28baddeca253aefbc7e81ab7e7eb1adca94.lean/declarations/span-eq-bot--da78e2c2a3897e11785e155d.md) | 120 | `result-track:da78e2c2a3897e11785e155d3f138741a35615f2b960cd1c5609fd00c68e1a95` |
| 22 | `theorem` | [span_singleton_eq_bot](../../../../mathematics/Algebra/Span/Variant8347ebcd269ad8393f202f4573dde28baddeca253aefbc7e81ab7e7eb1adca94.lean/declarations/span-singleton-eq-bot--3f74f40fd1caa2b5113fad77.md) | 124 | `result-track:3f74f40fd1caa2b5113fad77e07c56c03aa70bdc0ab96be049e8bbda09a2b0ed` |
| 23 | `theorem` | [span_singleton_ne_top](../../../../mathematics/Algebra/Span/Variant8347ebcd269ad8393f202f4573dde28baddeca253aefbc7e81ab7e7eb1adca94.lean/declarations/span-singleton-ne-top--b7205519d391aaf0086d0f80.md) | 127 | `result-track:b7205519d391aaf0086d0f800df0327097a431971260493e206b657a98fefc42` |
| 24 | `theorem` | [span_zero](../../../../mathematics/Algebra/Span/Variant8347ebcd269ad8393f202f4573dde28baddeca253aefbc7e81ab7e7eb1adca94.lean/declarations/span-zero--d1a40ba24f756d3792ee5b11.md) | 134 | `result-track:d1a40ba24f756d3792ee5b11ae0381c383ea729e83505d2d630f7c0003771754` |
| 25 | `theorem` | [span_one](../../../../mathematics/Algebra/Span/Variant8347ebcd269ad8393f202f4573dde28baddeca253aefbc7e81ab7e7eb1adca94.lean/declarations/span-one--6037c2d2e643d6456470bb44.md) | 137 | `result-track:6037c2d2e643d6456470bb44aa5d240176e54361e012f0a7341c560985c862d5` |
| 26 | `theorem` | [span_eq_top_iff_finite](../../../../mathematics/Algebra/Span/Variant8347ebcd269ad8393f202f4573dde28baddeca253aefbc7e81ab7e7eb1adca94.lean/declarations/span-eq-top-iff-finite--72f8176166e5329df7472efc.md) | 139 | `result-track:72f8176166e5329df7472efc51d47274a677dcecb5cae81cedf15ccf12e71b94` |
| 27 | `theorem` | [mem_span_singleton_sup](../../../../mathematics/Algebra/Span/Variant8347ebcd269ad8393f202f4573dde28baddeca253aefbc7e81ab7e7eb1adca94.lean/declarations/mem-span-singleton-sup--b1aa6ba946329e0344e28ca4.md) | 144 | `result-track:b1aa6ba946329e0344e28ca414213def545b2f98f7446408a653dbca1a1bf400` |
| 28 | `def` | [ofRel](../../../../mathematics/Algebra/Span/Variant8347ebcd269ad8393f202f4573dde28baddeca253aefbc7e81ab7e7eb1adca94.lean/declarations/ofrel--054a6da7ce7cb3cff7c57741.md) | 156 | `declaration-track:054a6da7ce7cb3cff7c577417b984b87a88de6cb89cf301abaea9a6572dfc77e` |
| 29 | `theorem` | [zero_ne_one_of_proper](../../../../mathematics/Algebra/Span/Variant8347ebcd269ad8393f202f4573dde28baddeca253aefbc7e81ab7e7eb1adca94.lean/declarations/zero-ne-one-of-proper--f87217339625078cb8089968.md) | 159 | `result-track:f87217339625078cb8089968feedb306454de182ab8b0fe503bd9c0d267e7dad` |
| 30 | `theorem` | [span_pair_comm](../../../../mathematics/Algebra/Span/Variant8347ebcd269ad8393f202f4573dde28baddeca253aefbc7e81ab7e7eb1adca94.lean/declarations/span-pair-comm--b48b49b6df69467043651bec.md) | 162 | `result-track:b48b49b6df69467043651bece7ce7bb4edcf15485c60fc65d24b276581146352` |
| 31 | `theorem` | [mem_span_pair](../../../../mathematics/Algebra/Span/Variant8347ebcd269ad8393f202f4573dde28baddeca253aefbc7e81ab7e7eb1adca94.lean/declarations/mem-span-pair--3cebf6db1ebbb998af3f1c34.md) | 165 | `result-track:3cebf6db1ebbb998af3f1c34aaafb33a92ca7b600311f3682daea361c62aa46a` |
| 32 | `theorem` | [span_pair_add_mul_left](../../../../mathematics/Algebra/Span/Variant8347ebcd269ad8393f202f4573dde28baddeca253aefbc7e81ab7e7eb1adca94.lean/declarations/span-pair-add-mul-left--a36256aab3a6505a52018a05.md) | 169 | `result-track:a36256aab3a6505a52018a0554ec67f17022a2cc448eac44b7ac923b025d2e18` |
| 33 | `theorem` | [span_pair_add_mul_right](../../../../mathematics/Algebra/Span/Variant8347ebcd269ad8393f202f4573dde28baddeca253aefbc7e81ab7e7eb1adca94.lean/declarations/span-pair-add-mul-right--92e71d67acc8df84b3497783.md) | 184 | `result-track:92e71d67acc8df84b3497783988b4f3601ebc2658ce722835f4ba489bc64d6a5` |
| 34 | `theorem` | [mem_span_singleton](../../../../mathematics/Algebra/Span/Variant8347ebcd269ad8393f202f4573dde28baddeca253aefbc7e81ab7e7eb1adca94.lean/declarations/mem-span-singleton--593d5dc9440e3e6d59b38cff.md) | 202 | `result-track:593d5dc9440e3e6d59b38cffae6782f65b38bbe015c674e75054fe800c7da7d1` |
| 35 | `theorem` | [span_singleton_le_span_singleton](../../../../mathematics/Algebra/Span/Variant8347ebcd269ad8393f202f4573dde28baddeca253aefbc7e81ab7e7eb1adca94.lean/declarations/span-singleton-le-span-singleton--c512b0dd063d1ed347a0a9e1.md) | 205 | `result-track:c512b0dd063d1ed347a0a9e1bd95fc9d35e25935cb5faa8a93e542becc62214f` |
| 36 | `theorem` | [span_singleton_eq_span_singleton](../../../../mathematics/Algebra/Span/Variant8347ebcd269ad8393f202f4573dde28baddeca253aefbc7e81ab7e7eb1adca94.lean/declarations/span-singleton-eq-span-singleton--62d697130518284806985092.md) | 209 | `result-track:62d69713051828480698509223ce5f7b1bfd720b22eadcdc6b538810e56c6c0c` |
| 37 | `theorem` | [span_singleton_mul_right_unit](../../../../mathematics/Algebra/Span/Variant8347ebcd269ad8393f202f4573dde28baddeca253aefbc7e81ab7e7eb1adca94.lean/declarations/span-singleton-mul-right-unit--0de50ddbf6eb50484ebb8063.md) | 214 | `result-track:0de50ddbf6eb50484ebb806370013501d0e1ccae99a258b70f1fbc67a20a0739` |
| 38 | `theorem` | [span_singleton_eq_top](../../../../mathematics/Algebra/Span/Variant8347ebcd269ad8393f202f4573dde28baddeca253aefbc7e81ab7e7eb1adca94.lean/declarations/span-singleton-eq-top--e617cbc304c72113a1a37abd.md) | 218 | `result-track:e617cbc304c72113a1a37abd7e5a43d7e6e7693ba69bb64e1c3cdd0051b97970` |
| 39 | `theorem` | [factors_decreasing](../../../../mathematics/Algebra/Span/Variant8347ebcd269ad8393f202f4573dde28baddeca253aefbc7e81ab7e7eb1adca94.lean/declarations/factors-decreasing--550e4ce5b014ddd3fb826c03.md) | 221 | `result-track:550e4ce5b014ddd3fb826c03349f8c1ec922a99a2357aeb8f19f831437f3f2a2` |
| 40 | `theorem` | [mem_span_insert'](../../../../mathematics/Algebra/Span/Variant8347ebcd269ad8393f202f4573dde28baddeca253aefbc7e81ab7e7eb1adca94.lean/declarations/mem-span-insert--6cd09d9804713d564d0c2a49.md) | 238 | `result-track:6cd09d9804713d564d0c2a4904c2e1aff76d21bba07c1e15ffefad2f63055d9d` |
| 41 | `theorem` | [span_singleton_neg](../../../../mathematics/Algebra/Span/Variant8347ebcd269ad8393f202f4573dde28baddeca253aefbc7e81ab7e7eb1adca94.lean/declarations/span-singleton-neg--4816b3c253584b0a48d0918b.md) | 242 | `result-track:4816b3c253584b0a48d0918b294abf6b9036648510df04e7464a6e59ff18261b` |
| 42 | `theorem` | [span_singleton_abs](../../../../mathematics/Algebra/Span/Variant8347ebcd269ad8393f202f4573dde28baddeca253aefbc7e81ab7e7eb1adca94.lean/declarations/span-singleton-abs--70d69192334c11e2af07774a.md) | 248 | `result-track:70d69192334c11e2af07774a77297ebe666a5edaedae258bd1605a84494cd4cc` |
| 43 | `theorem` | [ker_toSpanSingleton_eq_span](../../../../mathematics/Algebra/Span/Variant8347ebcd269ad8393f202f4573dde28baddeca253aefbc7e81ab7e7eb1adca94.lean/declarations/ker-tospansingleton-eq-span--e3c5d2a4148518dea9313fcd.md) | 262 | `result-track:e3c5d2a4148518dea9313fcd4f03540f403579dec0ee20d6555a53e5bf1f9363` |
| 44 | `theorem` | [ker_toSpanSingleton_one_sub_eq_span](../../../../mathematics/Algebra/Span/Variant8347ebcd269ad8393f202f4573dde28baddeca253aefbc7e81ab7e7eb1adca94.lean/declarations/ker-tospansingleton-one-sub-eq-span--27f7754ea06dc8f72c0fe091.md) | 270 | `result-track:27f7754ea06dc8f72c0fe0916d51ca3c90c74466c0f5835ecdc479401dbd0ec8` |
| 45 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Span/Variant8347ebcd269ad8393f202f4573dde28baddeca253aefbc7e81ab7e7eb1adca94.lean/declarations/instance--fcd13108504ccb70d5f82cd8.md) | 278 | `declaration-track:fcd13108504ccb70d5f82cd804f9a0ebb96cb55de8412531d03a85db478ee34c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
