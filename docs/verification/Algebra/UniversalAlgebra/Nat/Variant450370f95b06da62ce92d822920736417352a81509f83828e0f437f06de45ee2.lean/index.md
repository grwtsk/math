# Verification target: GRWTSK.Algebra.UniversalAlgebra.Nat.Variant450370f95b06da62ce92d822920736417352a81509f83828e0f437f06de45ee2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e08e87652e2def14cfdd25f5133ebd0470ae8cfb",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/Nat/Variant450370f95b06da62ce92d822920736417352a81509f83828e0f437f06de45ee2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/Nat/Variant450370f95b06da62ce92d822920736417352a81509f83828e0f437f06de45ee2.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/Nat/Variant450370f95b06da62ce92d822920736417352a81509f83828e0f437f06de45ee2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e08e87652e2def14cfdd25f5133ebd0470ae8cfb`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/Nat/Variant450370f95b06da62ce92d822920736417352a81509f83828e0f437f06de45ee2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/Nat/Variant450370f95b06da62ce92d822920736417352a81509f83828e0f437f06de45ee2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.GCDMonoid.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Group.Unbundled.Int` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Int.Units` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.GroupWithZero.Nat` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Nat/Variant450370f95b06da62ce92d822920736417352a81509f83828e0f437f06de45ee2.lean/declarations/instance--5e3ebc576e3cea141872f8cc.md) | 29 | `declaration-track:5e3ebc576e3cea141872f8cca19f9e6d84ca2d0f2e76ada74c3f8df0cda96856` |
| 2 | `theorem` | [gcd_eq_nat_gcd](../../../../../mathematics/Algebra/UniversalAlgebra/Nat/Variant450370f95b06da62ce92d822920736417352a81509f83828e0f437f06de45ee2.lean/declarations/gcd-eq-nat-gcd--9a6643adc190ad230323f129.md) | 39 | `result-track:9a6643adc190ad230323f129960b00ee929d6ce18602a622b1bf5061945c3c6d` |
| 3 | `theorem` | [lcm_eq_nat_lcm](../../../../../mathematics/Algebra/UniversalAlgebra/Nat/Variant450370f95b06da62ce92d822920736417352a81509f83828e0f437f06de45ee2.lean/declarations/lcm-eq-nat-lcm--d23f3d336869d661bf2599fd.md) | 42 | `result-track:d23f3d336869d661bf2599fdc5508646cb8b3a786695f5c178583704a6083434` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Nat/Variant450370f95b06da62ce92d822920736417352a81509f83828e0f437f06de45ee2.lean/declarations/instance--689ad2444202a3f9df3a3f90.md) | 45 | `declaration-track:689ad2444202a3f9df3a3f9069d8c800b1879581bfe84f98c696bb618ed8facb` |
| 5 | `instance` | [normalizationMonoid](../../../../../mathematics/Algebra/UniversalAlgebra/Nat/Variant450370f95b06da62ce92d822920736417352a81509f83828e0f437f06de45ee2.lean/declarations/normalizationmonoid--4b1b58bde2afd0de56a74e0c.md) | 55 | `declaration-track:4b1b58bde2afd0de56a74e0c1bef8cae8f3c8462e3f5db5b53e0e2b4840d98d0` |
| 6 | `theorem` | [normUnit_eq](../../../../../mathematics/Algebra/UniversalAlgebra/Nat/Variant450370f95b06da62ce92d822920736417352a81509f83828e0f437f06de45ee2.lean/declarations/normunit-eq--27aa36e684ac296cfb5429d6.md) | 65 | `result-track:27aa36e684ac296cfb5429d62d8a2a35b2bc2a1bac986ca3ade78c5ae81ed047` |
| 7 | `theorem` | [normalize_of_nonneg](../../../../../mathematics/Algebra/UniversalAlgebra/Nat/Variant450370f95b06da62ce92d822920736417352a81509f83828e0f437f06de45ee2.lean/declarations/normalize-of-nonneg--943e9fd25187a3a714b7c415.md) | 67 | `result-track:943e9fd25187a3a714b7c415ab83a039a316c5d02a0ddc08a8849e859705ab79` |
| 8 | `theorem` | [normalize_of_nonpos](../../../../../mathematics/Algebra/UniversalAlgebra/Nat/Variant450370f95b06da62ce92d822920736417352a81509f83828e0f437f06de45ee2.lean/declarations/normalize-of-nonpos--e0c5f767b8fb3a345af3e935.md) | 70 | `result-track:e0c5f767b8fb3a345af3e935bfd7a8a012053ef9f024397ac50545094472973e` |
| 9 | `theorem` | [normalize_coe_nat](../../../../../mathematics/Algebra/UniversalAlgebra/Nat/Variant450370f95b06da62ce92d822920736417352a81509f83828e0f437f06de45ee2.lean/declarations/normalize-coe-nat--77e6ae87ce3c4d9b89849095.md) | 76 | `result-track:77e6ae87ce3c4d9b898490959700b68cf7f65f7a0bea372e2a87b0d81352d583` |
| 10 | `theorem` | [abs_eq_normalize](../../../../../mathematics/Algebra/UniversalAlgebra/Nat/Variant450370f95b06da62ce92d822920736417352a81509f83828e0f437f06de45ee2.lean/declarations/abs-eq-normalize--f3a3953bc33c4feb3e6b049f.md) | 79 | `result-track:f3a3953bc33c4feb3e6b049f73846647587fdd85f69c116fbb47e78db8c9346b` |
| 11 | `theorem` | [nonneg_of_normalize_eq_self](../../../../../mathematics/Algebra/UniversalAlgebra/Nat/Variant450370f95b06da62ce92d822920736417352a81509f83828e0f437f06de45ee2.lean/declarations/nonneg-of-normalize-eq-self--06f12f9f83f00efee2d50af6.md) | 83 | `result-track:06f12f9f83f00efee2d50af67422f3e84b299226ad0086ee07ca4a91fae4b3ad` |
| 12 | `theorem` | [nonneg_iff_normalize_eq_self](../../../../../mathematics/Algebra/UniversalAlgebra/Nat/Variant450370f95b06da62ce92d822920736417352a81509f83828e0f437f06de45ee2.lean/declarations/nonneg-iff-normalize-eq-self--077e71b0343841fe0f005f50.md) | 89 | `result-track:077e71b0343841fe0f005f50e00c57a138c8cf1f74edc07c9f6891536c896c11` |
| 13 | `theorem` | [eq_of_associated_of_nonneg](../../../../../mathematics/Algebra/UniversalAlgebra/Nat/Variant450370f95b06da62ce92d822920736417352a81509f83828e0f437f06de45ee2.lean/declarations/eq-of-associated-of-nonneg--9904adf5bbe374fee3d05f55.md) | 92 | `result-track:9904adf5bbe374fee3d05f55cd5d4eb845560f0b72cab44abb380ec70ec7961c` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Nat/Variant450370f95b06da62ce92d822920736417352a81509f83828e0f437f06de45ee2.lean/declarations/instance--e0a630693cb47f8a5f313500.md) | 100 | `declaration-track:e0a630693cb47f8a5f313500ed267ee6b5112d203acf38739396e76469675de9` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Nat/Variant450370f95b06da62ce92d822920736417352a81509f83828e0f437f06de45ee2.lean/declarations/instance--e8023aa5fda8fe20c63c6896.md) | 112 | `declaration-track:e8023aa5fda8fe20c63c68968fbbac9144c78d7beebfc308b4d25cc0cafff1ec` |
| 16 | `theorem` | [coe_gcd](../../../../../mathematics/Algebra/UniversalAlgebra/Nat/Variant450370f95b06da62ce92d822920736417352a81509f83828e0f437f06de45ee2.lean/declarations/coe-gcd--c03b5b652a6d6df3b1c32ef6.md) | 118 | `result-track:c03b5b652a6d6df3b1c32ef64a2ca4c0152180779b7d50dce6a4e703436563c7` |
| 17 | `theorem` | [coe_lcm](../../../../../mathematics/Algebra/UniversalAlgebra/Nat/Variant450370f95b06da62ce92d822920736417352a81509f83828e0f437f06de45ee2.lean/declarations/coe-lcm--1a8455b15970f9ad4b1a70d7.md) | 121 | `result-track:1a8455b15970f9ad4b1a70d72582dd81d4756371355172604a1a6f522724a16c` |
| 18 | `theorem` | [natAbs_gcd](../../../../../mathematics/Algebra/UniversalAlgebra/Nat/Variant450370f95b06da62ce92d822920736417352a81509f83828e0f437f06de45ee2.lean/declarations/natabs-gcd--9b0a7e8512507b4d63ab95b9.md) | 124 | `result-track:9b0a7e8512507b4d63ab95b921ddda25933f99abb861e0a4ce393a6f1b314e4e` |
| 19 | `theorem` | [natAbs_lcm](../../../../../mathematics/Algebra/UniversalAlgebra/Nat/Variant450370f95b06da62ce92d822920736417352a81509f83828e0f437f06de45ee2.lean/declarations/natabs-lcm--7115d669c3499b90f5d129e8.md) | 127 | `result-track:7115d669c3499b90f5d129e8b3f718361db9f364b43a33749d6ad5c1224616cf` |
| 20 | `theorem` | [exists_unit_of_abs](../../../../../mathematics/Algebra/UniversalAlgebra/Nat/Variant450370f95b06da62ce92d822920736417352a81509f83828e0f437f06de45ee2.lean/declarations/exists-unit-of-abs--a3a7b2b4c4d4703ec2583cb1.md) | 132 | `result-track:a3a7b2b4c4d4703ec2583cb1d6db6857a25d29a9fd33d8c6097d39743d502efa` |
| 21 | `theorem` | [gcd_eq_natAbs](../../../../../mathematics/Algebra/UniversalAlgebra/Nat/Variant450370f95b06da62ce92d822920736417352a81509f83828e0f437f06de45ee2.lean/declarations/gcd-eq-natabs--04f0e88b035844f7e4f1339b.md) | 140 | `result-track:04f0e88b035844f7e4f1339bccc6344a83a1698ee95e1075e9e1a4c10a2f2fba` |
| 22 | `def` | [associatesIntEquivNat](../../../../../mathematics/Algebra/UniversalAlgebra/Nat/Variant450370f95b06da62ce92d822920736417352a81509f83828e0f437f06de45ee2.lean/declarations/associatesintequivnat--37d977271d80f0920266a70f.md) | 145 | `declaration-track:37d977271d80f0920266a70f1f7d37a60b185703d5493d187c7113dfccae8091` |
| 23 | `theorem` | [Int.associated_natAbs](../../../../../mathematics/Algebra/UniversalAlgebra/Nat/Variant450370f95b06da62ce92d822920736417352a81509f83828e0f437f06de45ee2.lean/declarations/int-associated-natabs--c7568eae3b7b634f18a41721.md) | 153 | `result-track:c7568eae3b7b634f18a41721a90ff3425432876c89d83cc3e18603ed1d018773` |
| 24 | `theorem` | [Int.associated_iff_natAbs](../../../../../mathematics/Algebra/UniversalAlgebra/Nat/Variant450370f95b06da62ce92d822920736417352a81509f83828e0f437f06de45ee2.lean/declarations/int-associated-iff-natabs--eba1831b07607dd3be284cde.md) | 156 | `result-track:eba1831b07607dd3be284cde1b938ef435737bad1a982a8ad64bb32c620f657d` |
| 25 | `theorem` | [Int.associated_iff](../../../../../mathematics/Algebra/UniversalAlgebra/Nat/Variant450370f95b06da62ce92d822920736417352a81509f83828e0f437f06de45ee2.lean/declarations/int-associated-iff--e93b495e8d3379fee32ae7a9.md) | 161 | `result-track:e93b495e8d3379fee32ae7a93759fa123e981174704ed60a3ac3d3520f1b6caa` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
