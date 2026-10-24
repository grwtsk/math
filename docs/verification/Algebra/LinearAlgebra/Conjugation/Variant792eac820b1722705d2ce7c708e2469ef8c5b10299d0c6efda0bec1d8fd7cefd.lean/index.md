# Verification target: GRWTSK.Algebra.LinearAlgebra.Conjugation.Variant792eac820b1722705d2ce7c708e2469ef8c5b10299d0c6efda0bec1d8fd7cefd

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8944a726cf84bb8ac2eb240a32bd44fb8fe9359c",
  "lexical_observation_count": 44,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Conjugation/Variant792eac820b1722705d2ce7c708e2469ef8c5b10299d0c6efda0bec1d8fd7cefd.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Conjugation/Variant792eac820b1722705d2ce7c708e2469ef8c5b10299d0c6efda0bec1d8fd7cefd.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Conjugation/Variant792eac820b1722705d2ce7c708e2469ef8c5b10299d0c6efda0bec1d8fd7cefd.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8944a726cf84bb8ac2eb240a32bd44fb8fe9359c`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Conjugation/Variant792eac820b1722705d2ce7c708e2469ef8c5b10299d0c6efda0bec1d8fd7cefd.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Conjugation/Variant792eac820b1722705d2ce7c708e2469ef8c5b10299d0c6efda0bec1d8fd7cefd.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.CliffordAlgebra.Grading` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Module.Opposite` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [involute](../../../../../mathematics/Algebra/LinearAlgebra/Conjugation/Variant792eac820b1722705d2ce7c708e2469ef8c5b10299d0c6efda0bec1d8fd7cefd.lean/declarations/involute--252a61031c0a3fea41ffcfd0.md) | 43 | `declaration-track:252a61031c0a3fea41ffcfd02e6c9a090b13010e19ac3ad4477d19734894e95e` |
| 2 | `theorem` | [involute_ι](../../../../../mathematics/Algebra/LinearAlgebra/Conjugation/Variant792eac820b1722705d2ce7c708e2469ef8c5b10299d0c6efda0bec1d8fd7cefd.lean/declarations/involute--3a2126769bb892823ecb5d58.md) | 47 | `result-track:3a2126769bb892823ecb5d5870be36a182b4d4078a5495eee744fa6fcd60a912` |
| 3 | `theorem` | [involute_comp_involute](../../../../../mathematics/Algebra/LinearAlgebra/Conjugation/Variant792eac820b1722705d2ce7c708e2469ef8c5b10299d0c6efda0bec1d8fd7cefd.lean/declarations/involute-comp-involute--d0a4d0aa7474fdb08596ba04.md) | 51 | `result-track:d0a4d0aa7474fdb08596ba041c4ae93790821a619398b60c96aaddca97769abd` |
| 4 | `theorem` | [involute_involutive](../../../../../mathematics/Algebra/LinearAlgebra/Conjugation/Variant792eac820b1722705d2ce7c708e2469ef8c5b10299d0c6efda0bec1d8fd7cefd.lean/declarations/involute-involutive--398655b927f89de7694ed2eb.md) | 54 | `result-track:398655b927f89de7694ed2eb9bcf304c5d7e9cdfb24bf16bfe3bd46e41851f1e` |
| 5 | `theorem` | [involute_involute](../../../../../mathematics/Algebra/LinearAlgebra/Conjugation/Variant792eac820b1722705d2ce7c708e2469ef8c5b10299d0c6efda0bec1d8fd7cefd.lean/declarations/involute-involute--11202fb4afae35b2d2e0c827.md) | 58 | `result-track:11202fb4afae35b2d2e0c827e77a81fbac835065301c5dad2e7520a3c1d16417` |
| 6 | `def` | [involuteEquiv](../../../../../mathematics/Algebra/LinearAlgebra/Conjugation/Variant792eac820b1722705d2ce7c708e2469ef8c5b10299d0c6efda0bec1d8fd7cefd.lean/declarations/involuteequiv--18d19ff0d0a33894763ec4bb.md) | 63 | `declaration-track:18d19ff0d0a33894763ec4bbf4b5dc3601972d9696c3180a72cbda562195195a` |
| 7 | `def` | [reverseOp](../../../../../mathematics/Algebra/LinearAlgebra/Conjugation/Variant792eac820b1722705d2ce7c708e2469ef8c5b10299d0c6efda0bec1d8fd7cefd.lean/declarations/reverseop--4a787fb3c73d3043c8d8c386.md) | 74 | `declaration-track:4a787fb3c73d3043c8d8c3863d077b5f974a148ae10c0f9533526db707d49ffe` |
| 8 | `theorem` | [reverseOp_ι](../../../../../mathematics/Algebra/LinearAlgebra/Conjugation/Variant792eac820b1722705d2ce7c708e2469ef8c5b10299d0c6efda0bec1d8fd7cefd.lean/declarations/reverseop--d8fb67d2f28cf4834dbad57e.md) | 79 | `result-track:d8fb67d2f28cf4834dbad57e21cfb1012b8b1e314f34639e09d709bd754261e3` |
| 9 | `def` | [reverseOpEquiv](../../../../../mathematics/Algebra/LinearAlgebra/Conjugation/Variant792eac820b1722705d2ce7c708e2469ef8c5b10299d0c6efda0bec1d8fd7cefd.lean/declarations/reverseopequiv--6c49e601fac7ed14b439c48f.md) | 83 | `declaration-track:6c49e601fac7ed14b439c48f810286de02ff15a7a4081ed418d266736b20e183` |
| 10 | `theorem` | [reverseOpEquiv_opComm](../../../../../mathematics/Algebra/LinearAlgebra/Conjugation/Variant792eac820b1722705d2ce7c708e2469ef8c5b10299d0c6efda0bec1d8fd7cefd.lean/declarations/reverseopequiv-opcomm--51eae1a9b322d351966920a6.md) | 89 | `result-track:51eae1a9b322d351966920a6ddcabf9889de62203cfb602b0e45faf260dcdf9f` |
| 11 | `def` | [reverse](../../../../../mathematics/Algebra/LinearAlgebra/Conjugation/Variant792eac820b1722705d2ce7c708e2469ef8c5b10299d0c6efda0bec1d8fd7cefd.lean/declarations/reverse--6212de98f71246df1652396a.md) | 94 | `declaration-track:6212de98f71246df1652396a14af09b6e2162c1f59d85814ec35f97908885e57` |
| 12 | `theorem` | [unop_reverseOp](../../../../../mathematics/Algebra/LinearAlgebra/Conjugation/Variant792eac820b1722705d2ce7c708e2469ef8c5b10299d0c6efda0bec1d8fd7cefd.lean/declarations/unop-reverseop--6710eec2a43da7b394b77ef4.md) | 97 | `result-track:6710eec2a43da7b394b77ef479358fa846f038f1614bfc31c27c06b6996011cb` |
| 13 | `theorem` | [op_reverse](../../../../../mathematics/Algebra/LinearAlgebra/Conjugation/Variant792eac820b1722705d2ce7c708e2469ef8c5b10299d0c6efda0bec1d8fd7cefd.lean/declarations/op-reverse--fce43f731f2cdd2c24c4fa0b.md) | 99 | `result-track:fce43f731f2cdd2c24c4fa0bfc977606c61236eccd0136aaa9b627eb67a653c3` |
| 14 | `theorem` | [reverse_ι](../../../../../mathematics/Algebra/LinearAlgebra/Conjugation/Variant792eac820b1722705d2ce7c708e2469ef8c5b10299d0c6efda0bec1d8fd7cefd.lean/declarations/reverse--8b7e3b877ad897a5cb88b41f.md) | 102 | `result-track:8b7e3b877ad897a5cb88b41f38c795c1a90e5e3286870b46baad646fe135c259` |
| 15 | `theorem` | [reverse.commutes](../../../../../mathematics/Algebra/LinearAlgebra/Conjugation/Variant792eac820b1722705d2ce7c708e2469ef8c5b10299d0c6efda0bec1d8fd7cefd.lean/declarations/reverse-commutes--3193ba46cc7f7c35fbae02b7.md) | 105 | `result-track:3193ba46cc7f7c35fbae02b74ef8f5983fdd4ed2734366f85d3e19442bdc24db` |
| 16 | `theorem` | [reverse.map_one](../../../../../mathematics/Algebra/LinearAlgebra/Conjugation/Variant792eac820b1722705d2ce7c708e2469ef8c5b10299d0c6efda0bec1d8fd7cefd.lean/declarations/reverse-map-one--5dc701189bf7ede60741a3dd.md) | 110 | `result-track:5dc701189bf7ede60741a3dd2a4f0f8093cff445e668eba16c96d6036cef7dc1` |
| 17 | `theorem` | [reverse.map_mul](../../../../../mathematics/Algebra/LinearAlgebra/Conjugation/Variant792eac820b1722705d2ce7c708e2469ef8c5b10299d0c6efda0bec1d8fd7cefd.lean/declarations/reverse-map-mul--656ac4d3dff39dfd65d1b405.md) | 114 | `result-track:656ac4d3dff39dfd65d1b40567d673023c4e172a16fcd5c8390a106a8dbe8b9a` |
| 18 | `theorem` | [reverse_involutive](../../../../../mathematics/Algebra/LinearAlgebra/Conjugation/Variant792eac820b1722705d2ce7c708e2469ef8c5b10299d0c6efda0bec1d8fd7cefd.lean/declarations/reverse-involutive--8f559453d64dac11f5e389e1.md) | 119 | `result-track:8f559453d64dac11f5e389e12b9e01708f0c5ab305c645702a42d5da973bc282` |
| 19 | `theorem` | [reverse_comp_reverse](../../../../../mathematics/Algebra/LinearAlgebra/Conjugation/Variant792eac820b1722705d2ce7c708e2469ef8c5b10299d0c6efda0bec1d8fd7cefd.lean/declarations/reverse-comp-reverse--8219e486a091885fe510390b.md) | 123 | `result-track:8219e486a091885fe510390be8a57da16277b151b13ed6c79af1be48df3892c1` |
| 20 | `theorem` | [reverse_reverse](../../../../../mathematics/Algebra/LinearAlgebra/Conjugation/Variant792eac820b1722705d2ce7c708e2469ef8c5b10299d0c6efda0bec1d8fd7cefd.lean/declarations/reverse-reverse--56f4aeb3c1e93e53eab67f98.md) | 128 | `result-track:56f4aeb3c1e93e53eab67f98bcc16423dc4b66eb45b481ec5e14728b0788f796` |
| 21 | `def` | [reverseEquiv](../../../../../mathematics/Algebra/LinearAlgebra/Conjugation/Variant792eac820b1722705d2ce7c708e2469ef8c5b10299d0c6efda0bec1d8fd7cefd.lean/declarations/reverseequiv--15998d80ba3138e51567a588.md) | 133 | `declaration-track:15998d80ba3138e51567a5889aa7d58ba95e8dd13c1e329c17bbca47d8d4ca53` |
| 22 | `theorem` | [reverse_comp_involute](../../../../../mathematics/Algebra/LinearAlgebra/Conjugation/Variant792eac820b1722705d2ce7c708e2469ef8c5b10299d0c6efda0bec1d8fd7cefd.lean/declarations/reverse-comp-involute--e569b8cff520e33f15b28094.md) | 136 | `result-track:e569b8cff520e33f15b280945e721476d033f77f9d0f02c9d714f2e6f6f3bddb` |
| 23 | `theorem` | [reverse_involute_commute](../../../../../mathematics/Algebra/LinearAlgebra/Conjugation/Variant792eac820b1722705d2ce7c708e2469ef8c5b10299d0c6efda0bec1d8fd7cefd.lean/declarations/reverse-involute-commute--3a744d21297b7ea97da91fce.md) | 149 | `result-track:3a744d21297b7ea97da91fce6eb54418317eed9c6793f501898e5429045da2bc` |
| 24 | `theorem` | [reverse_involute](../../../../../mathematics/Algebra/LinearAlgebra/Conjugation/Variant792eac820b1722705d2ce7c708e2469ef8c5b10299d0c6efda0bec1d8fd7cefd.lean/declarations/reverse-involute--f75f728fb0614050b334e484.md) | 152 | `result-track:f75f728fb0614050b334e484d2546e578a4fc76c6e8f3681c7276f1897d9336b` |
| 25 | `theorem` | [reverse_prod_map_ι](../../../../../mathematics/Algebra/LinearAlgebra/Conjugation/Variant792eac820b1722705d2ce7c708e2469ef8c5b10299d0c6efda0bec1d8fd7cefd.lean/declarations/reverse-prod-map--0a4da4b67add63865afdf116.md) | 167 | `result-track:0a4da4b67add63865afdf1163b704e74bbb831ffb22c548c4f2349c33a93a9ef` |
| 26 | `theorem` | [involute_prod_map_ι](../../../../../mathematics/Algebra/LinearAlgebra/Conjugation/Variant792eac820b1722705d2ce7c708e2469ef8c5b10299d0c6efda0bec1d8fd7cefd.lean/declarations/involute-prod-map--ca79a7f2f28ac68f444c6cf9.md) | 174 | `result-track:ca79a7f2f28ac68f444c6cf953f76a5d5d53d21ccc49cedd4f49495b87ef5f4d` |
| 27 | `theorem` | [submodule_map_involute_eq_comap](../../../../../mathematics/Algebra/LinearAlgebra/Conjugation/Variant792eac820b1722705d2ce7c708e2469ef8c5b10299d0c6efda0bec1d8fd7cefd.lean/declarations/submodule-map-involute-eq-comap--71344f23b88545c1866f7153.md) | 192 | `result-track:71344f23b88545c1866f71536f0f1cdf24bbe2f8283f013e19242ef3a84a7757` |
| 28 | `theorem` | [ι_range_map_involute](../../../../../mathematics/Algebra/LinearAlgebra/Conjugation/Variant792eac820b1722705d2ce7c708e2469ef8c5b10299d0c6efda0bec1d8fd7cefd.lean/declarations/range-map-involute--236a13e7926497ed997f32ab.md) | 198 | `result-track:236a13e7926497ed997f32ab11fc77a7129e8170181c63e073f3a78d8a2cabcf` |
| 29 | `theorem` | [ι_range_comap_involute](../../../../../mathematics/Algebra/LinearAlgebra/Conjugation/Variant792eac820b1722705d2ce7c708e2469ef8c5b10299d0c6efda0bec1d8fd7cefd.lean/declarations/range-comap-involute--9b5b6e92aa3d2d895352ff2b.md) | 204 | `result-track:9b5b6e92aa3d2d895352ff2bf22d9bcf1dc31245fec3c6c4d41765c524cd2f5e` |
| 30 | `theorem` | [evenOdd_map_involute](../../../../../mathematics/Algebra/LinearAlgebra/Conjugation/Variant792eac820b1722705d2ce7c708e2469ef8c5b10299d0c6efda0bec1d8fd7cefd.lean/declarations/evenodd-map-involute--39383e93a0e3ec8d88f49c84.md) | 211 | `result-track:39383e93a0e3ec8d88f49c843d63faf6619df2418999f13204c16f8f5acdbeb3` |
| 31 | `theorem` | [evenOdd_comap_involute](../../../../../mathematics/Algebra/LinearAlgebra/Conjugation/Variant792eac820b1722705d2ce7c708e2469ef8c5b10299d0c6efda0bec1d8fd7cefd.lean/declarations/evenodd-comap-involute--2b735bab08416edf9d4675a1.md) | 217 | `result-track:2b735bab08416edf9d4675a1deb657e112d208d644a08484cb089a80ad400ca7` |
| 32 | `theorem` | [submodule_map_reverse_eq_comap](../../../../../mathematics/Algebra/LinearAlgebra/Conjugation/Variant792eac820b1722705d2ce7c708e2469ef8c5b10299d0c6efda0bec1d8fd7cefd.lean/declarations/submodule-map-reverse-eq-comap--bed44e73b815a790ab77bcff.md) | 226 | `result-track:bed44e73b815a790ab77bcff098f4c8def40de0efb66fc3c9b2f5201aa875dcc` |
| 33 | `theorem` | [ι_range_map_reverse](../../../../../mathematics/Algebra/LinearAlgebra/Conjugation/Variant792eac820b1722705d2ce7c708e2469ef8c5b10299d0c6efda0bec1d8fd7cefd.lean/declarations/range-map-reverse--76bdafa9e176e42c1666602e.md) | 232 | `result-track:76bdafa9e176e42c1666602e78470f6acbdf3eb43240e7bb623d67f1cd346b45` |
| 34 | `theorem` | [ι_range_comap_reverse](../../../../../mathematics/Algebra/LinearAlgebra/Conjugation/Variant792eac820b1722705d2ce7c708e2469ef8c5b10299d0c6efda0bec1d8fd7cefd.lean/declarations/range-comap-reverse--e35b2b841eacbcf1e0764764.md) | 240 | `result-track:e35b2b841eacbcf1e0764764ed53e0198d5835785ad8e3e1b1976f3321e11e05` |
| 35 | `theorem` | [submodule_map_mul_reverse](../../../../../mathematics/Algebra/LinearAlgebra/Conjugation/Variant792eac820b1722705d2ce7c708e2469ef8c5b10299d0c6efda0bec1d8fd7cefd.lean/declarations/submodule-map-mul-reverse--d38cf33257d418d2740c2960.md) | 246 | `result-track:d38cf33257d418d2740c2960aab6941383a202bbc1e9388a9a63c48b93add368` |
| 36 | `theorem` | [submodule_comap_mul_reverse](../../../../../mathematics/Algebra/LinearAlgebra/Conjugation/Variant792eac820b1722705d2ce7c708e2469ef8c5b10299d0c6efda0bec1d8fd7cefd.lean/declarations/submodule-comap-mul-reverse--475589de9df8aa1c5fc766ec.md) | 252 | `result-track:475589de9df8aa1c5fc766ecb7a42aa859fffb5a8bc81ed7eb11ee9eed509fb2` |
| 37 | `theorem` | [submodule_map_pow_reverse](../../../../../mathematics/Algebra/LinearAlgebra/Conjugation/Variant792eac820b1722705d2ce7c708e2469ef8c5b10299d0c6efda0bec1d8fd7cefd.lean/declarations/submodule-map-pow-reverse--264e7a06d08c9712396e055c.md) | 259 | `result-track:264e7a06d08c9712396e055cf3a87dff218282ff57030cff256a2c7e5e4145ed` |
| 38 | `theorem` | [submodule_comap_pow_reverse](../../../../../mathematics/Algebra/LinearAlgebra/Conjugation/Variant792eac820b1722705d2ce7c708e2469ef8c5b10299d0c6efda0bec1d8fd7cefd.lean/declarations/submodule-comap-pow-reverse--5b6199dde2f2d7b59c410235.md) | 264 | `result-track:5b6199dde2f2d7b59c4102351b6b752f8b76e5735505fd66194c17198ea90940` |
| 39 | `theorem` | [evenOdd_map_reverse](../../../../../mathematics/Algebra/LinearAlgebra/Conjugation/Variant792eac820b1722705d2ce7c708e2469ef8c5b10299d0c6efda0bec1d8fd7cefd.lean/declarations/evenodd-map-reverse--74c9d857613bff44a36328d7.md) | 270 | `result-track:74c9d857613bff44a36328d7d65491a4cbb0c99528305bcf6b53f6871e956b17` |
| 40 | `theorem` | [evenOdd_comap_reverse](../../../../../mathematics/Algebra/LinearAlgebra/Conjugation/Variant792eac820b1722705d2ce7c708e2469ef8c5b10299d0c6efda0bec1d8fd7cefd.lean/declarations/evenodd-comap-reverse--de8a6c876bb619a10c396cf2.md) | 275 | `result-track:de8a6c876bb619a10c396cf2949f9ae7d4463f09308e0c84490d6561df3ccd99` |
| 41 | `theorem` | [involute_mem_evenOdd_iff](../../../../../mathematics/Algebra/LinearAlgebra/Conjugation/Variant792eac820b1722705d2ce7c708e2469ef8c5b10299d0c6efda0bec1d8fd7cefd.lean/declarations/involute-mem-evenodd-iff--4cd56f49c2bdba955277c41e.md) | 282 | `result-track:4cd56f49c2bdba955277c41edc0e19d5ff04e0127108cc3be1b0705d94e510dd` |
| 42 | `theorem` | [reverse_mem_evenOdd_iff](../../../../../mathematics/Algebra/LinearAlgebra/Conjugation/Variant792eac820b1722705d2ce7c708e2469ef8c5b10299d0c6efda0bec1d8fd7cefd.lean/declarations/reverse-mem-evenodd-iff--aa8297a9ea48868ce0f909fd.md) | 287 | `result-track:aa8297a9ea48868ce0f909fd8bcb9366cde5d1a2649a901c2a3463e987c3d666` |
| 43 | `theorem` | [involute_eq_of_mem_even](../../../../../mathematics/Algebra/LinearAlgebra/Conjugation/Variant792eac820b1722705d2ce7c708e2469ef8c5b10299d0c6efda0bec1d8fd7cefd.lean/declarations/involute-eq-of-mem-even--8935c388d4af2a471e52988e.md) | 300 | `result-track:8935c388d4af2a471e52988e34ac520e1286422844a466bcd632b4f73f2facbd` |
| 44 | `theorem` | [involute_eq_of_mem_odd](../../../../../mathematics/Algebra/LinearAlgebra/Conjugation/Variant792eac820b1722705d2ce7c708e2469ef8c5b10299d0c6efda0bec1d8fd7cefd.lean/declarations/involute-eq-of-mem-odd--e0b1608348fcad775d530ef9.md) | 308 | `result-track:e0b1608348fcad775d530ef95bf26598b79c409671c17660800eb7eb16c7353e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
