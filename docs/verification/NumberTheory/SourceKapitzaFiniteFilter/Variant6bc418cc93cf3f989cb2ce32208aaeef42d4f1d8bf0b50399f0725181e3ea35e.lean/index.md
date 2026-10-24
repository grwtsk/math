# Verification target: GRWTSK.NumberTheory.SourceKapitzaFiniteFilter.Variant6bc418cc93cf3f989cb2ce32208aaeef42d4f1d8bf0b50399f0725181e3ea35e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "560280abfbd02d3dfd3b02c4c44dd9d08f4cc448",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/SourceKapitzaFiniteFilter/Variant6bc418cc93cf3f989cb2ce32208aaeef42d4f1d8bf0b50399f0725181e3ea35e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/SourceKapitzaFiniteFilter/Variant6bc418cc93cf3f989cb2ce32208aaeef42d4f1d8bf0b50399f0725181e3ea35e.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/SourceKapitzaFiniteFilter/Variant6bc418cc93cf3f989cb2ce32208aaeef42d4f1d8bf0b50399f0725181e3ea35e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `560280abfbd02d3dfd3b02c4c44dd9d08f4cc448`.

Source path: `GRWTSK/NumberTheory/SourceKapitzaFiniteFilter/Variant6bc418cc93cf3f989cb2ce32208aaeef42d4f1d8bf0b50399f0725181e3ea35e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/SourceKapitzaFiniteFilter/Variant6bc418cc93cf3f989cb2ce32208aaeef42d4f1d8bf0b50399f0725181e3ea35e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.NumberTheory.ArithmeticFunction.VonMangoldt` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.IntervalCases` — import line 2; external provider; requires a separately pinned dependency.
- `Lean.Elab.Tactic.Omega` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [properCoprimeDivisorInventory](../../../../mathematics/NumberTheory/SourceKapitzaFiniteFilter/Variant6bc418cc93cf3f989cb2ce32208aaeef42d4f1d8bf0b50399f0725181e3ea35e.lean/declarations/propercoprimedivisorinventory--2f5a8e1255c7cb6f60bc2d22.md) | 32 | `declaration-track:2f5a8e1255c7cb6f60bc2d22f5f1654cb26f55262d6011ad27474d0bacf9b4c6` |
| 2 | `def` | [properCoprimeDivisorCoeff](../../../../mathematics/NumberTheory/SourceKapitzaFiniteFilter/Variant6bc418cc93cf3f989cb2ce32208aaeef42d4f1d8bf0b50399f0725181e3ea35e.lean/declarations/propercoprimedivisorcoeff--1d8fb7ded90de7ff12888b15.md) | 36 | `declaration-track:1d8fb7ded90de7ff12888b15903df71921ae2e9cf8cd60deb2751d059d9d3315` |
| 3 | `theorem` | [mem_properCoprimeDivisorInventory](../../../../mathematics/NumberTheory/SourceKapitzaFiniteFilter/Variant6bc418cc93cf3f989cb2ce32208aaeef42d4f1d8bf0b50399f0725181e3ea35e.lean/declarations/mem-propercoprimedivisorinventory--401a372e67ee6c2a723c1ff4.md) | 40 | `result-track:401a372e67ee6c2a723c1ff45c877765e4027b7b2f86d0d97544e118bd9dfee1` |
| 4 | `theorem` | [properCoprimeDivisorInventory_subset_divisors](../../../../mathematics/NumberTheory/SourceKapitzaFiniteFilter/Variant6bc418cc93cf3f989cb2ce32208aaeef42d4f1d8bf0b50399f0725181e3ea35e.lean/declarations/propercoprimedivisorinventory-subset-divisors--e3f4e1eac1fff7b41fe89dee.md) | 46 | `result-track:e3f4e1eac1fff7b41fe89dee8c98d50339049ba2e18af87534bea4a019c928c3` |
| 5 | `theorem` | [proper_coprime_six_ge_five](../../../../mathematics/NumberTheory/SourceKapitzaFiniteFilter/Variant6bc418cc93cf3f989cb2ce32208aaeef42d4f1d8bf0b50399f0725181e3ea35e.lean/declarations/proper-coprime-six-ge-five--169619f4f92a169e379d342e.md) | 52 | `result-track:169619f4f92a169e379d342edb35796e089cf2df7391a7ba38bddcbfe1c1cbc9` |
| 6 | `theorem` | [product_ge_ten_of_mem](../../../../mathematics/NumberTheory/SourceKapitzaFiniteFilter/Variant6bc418cc93cf3f989cb2ce32208aaeef42d4f1d8bf0b50399f0725181e3ea35e.lean/declarations/product-ge-ten-of-mem--dbc61a62b6dd83a7341dc1e7.md) | 63 | `result-track:dbc61a62b6dd83a7341dc1e71c52fff9ddb4959b252365da942b00176daa7e7d` |
| 7 | `theorem` | [properCoprimeDivisorCoeff_nonneg](../../../../mathematics/NumberTheory/SourceKapitzaFiniteFilter/Variant6bc418cc93cf3f989cb2ce32208aaeef42d4f1d8bf0b50399f0725181e3ea35e.lean/declarations/propercoprimedivisorcoeff-nonneg--9246d83e3daffe1aa6803cce.md) | 73 | `result-track:9246d83e3daffe1aa6803cceb62b52a579f7455c555fe6db0ad7f8cf94065c0b` |
| 8 | `theorem` | [properCoprimeDivisorCoeff_le_log](../../../../mathematics/NumberTheory/SourceKapitzaFiniteFilter/Variant6bc418cc93cf3f989cb2ce32208aaeef42d4f1d8bf0b50399f0725181e3ea35e.lean/declarations/propercoprimedivisorcoeff-le-log--987728f0125c811237cfb596.md) | 79 | `result-track:987728f0125c811237cfb59654a5cbcd17afd02e211022a98805e1b946da7602` |
| 9 | `theorem` | [properCoprimeDivisorInventory_empty_of_lt_ten](../../../../mathematics/NumberTheory/SourceKapitzaFiniteFilter/Variant6bc418cc93cf3f989cb2ce32208aaeef42d4f1d8bf0b50399f0725181e3ea35e.lean/declarations/propercoprimedivisorinventory-empty-of-lt-ten--7d072cd0f5a71ba756182d57.md) | 91 | `result-track:7d072cd0f5a71ba756182d578866d6bb1c98e3d971b223a381d277bc2c2d57cb` |
| 10 | `theorem` | [properCoprimeDivisorCoeff_eq_zero_of_lt_ten](../../../../mathematics/NumberTheory/SourceKapitzaFiniteFilter/Variant6bc418cc93cf3f989cb2ce32208aaeef42d4f1d8bf0b50399f0725181e3ea35e.lean/declarations/propercoprimedivisorcoeff-eq-zero-of-lt-ten--b6362651c91d22ca330bfc9f.md) | 98 | `result-track:b6362651c91d22ca330bfc9f780b5dc7d6022081979f0bd9404620a6b4ba6744` |
| 11 | `theorem` | [properCoprimeDivisorInventory_ten](../../../../mathematics/NumberTheory/SourceKapitzaFiniteFilter/Variant6bc418cc93cf3f989cb2ce32208aaeef42d4f1d8bf0b50399f0725181e3ea35e.lean/declarations/propercoprimedivisorinventory-ten--e16a76bb00cedc804c37ac2e.md) | 104 | `result-track:e16a76bb00cedc804c37ac2e7016becfd7ac15ee84120fc3859598a21daef66e` |
| 12 | `theorem` | [properCoprimeDivisorCoeff_ten](../../../../mathematics/NumberTheory/SourceKapitzaFiniteFilter/Variant6bc418cc93cf3f989cb2ce32208aaeef42d4f1d8bf0b50399f0725181e3ea35e.lean/declarations/propercoprimedivisorcoeff-ten--b231fd950bc11130e0448cdc.md) | 123 | `result-track:b231fd950bc11130e0448cdc26fda8f9932f8833201cad06f83cd39bc395123f` |
| 13 | `theorem` | [properCoprimeDivisorCoeff_ten_pos](../../../../mathematics/NumberTheory/SourceKapitzaFiniteFilter/Variant6bc418cc93cf3f989cb2ce32208aaeef42d4f1d8bf0b50399f0725181e3ea35e.lean/declarations/propercoprimedivisorcoeff-ten-pos--aad70ed8aca311ff77a6b9e3.md) | 130 | `result-track:aad70ed8aca311ff77a6b9e3049ffb7ec05e60065406116254d216892034ce6e` |
| 14 | `theorem` | [primePower_four_mem_inventory_twenty](../../../../mathematics/NumberTheory/SourceKapitzaFiniteFilter/Variant6bc418cc93cf3f989cb2ce32208aaeef42d4f1d8bf0b50399f0725181e3ea35e.lean/declarations/primepower-four-mem-inventory-twenty--22d77c550282f95bb4279d15.md) | 135 | `result-track:22d77c550282f95bb4279d15ae5823a3528bf12c92220e34deafb3dc8094944b` |
| 15 | `def` | [finiteFilter](../../../../mathematics/NumberTheory/SourceKapitzaFiniteFilter/Variant6bc418cc93cf3f989cb2ce32208aaeef42d4f1d8bf0b50399f0725181e3ea35e.lean/declarations/finitefilter--408de29110c0c415537b0561.md) | 140 | `declaration-track:408de29110c0c415537b0561956b4f0e0241e5890677aec46279d63233c22c7c` |
| 16 | `theorem` | [finiteFilter_unit_can_be_nonzero](../../../../mathematics/NumberTheory/SourceKapitzaFiniteFilter/Variant6bc418cc93cf3f989cb2ce32208aaeef42d4f1d8bf0b50399f0725181e3ea35e.lean/declarations/finitefilter-unit-can-be-nonzero--5e51e66e2496c9400b42dc9f.md) | 144 | `result-track:5e51e66e2496c9400b42dc9fbc1319aa4d3479a438b7e61b0b4e34b8a664a95c` |
| 17 | `theorem` | [sum_supported_dilate](../../../../mathematics/NumberTheory/SourceKapitzaFiniteFilter/Variant6bc418cc93cf3f989cb2ce32208aaeef42d4f1d8bf0b50399f0725181e3ea35e.lean/declarations/sum-supported-dilate--df76f1f308f699ee9c58d55b.md) | 149 | `result-track:df76f1f308f699ee9c58d55bc0f8fcc6036ac25bfdee14e1c0a45311a638e31b` |
| 18 | `theorem` | [sum_finiteFilter_eq_coprime](../../../../mathematics/NumberTheory/SourceKapitzaFiniteFilter/Variant6bc418cc93cf3f989cb2ce32208aaeef42d4f1d8bf0b50399f0725181e3ea35e.lean/declarations/sum-finitefilter-eq-coprime--21e2f9f9067f1e9949497c81.md) | 181 | `result-track:21e2f9f9067f1e9949497c8131d7a9d0a27c7a2d9d2e4d326723106bcc824e34` |
| 19 | `theorem` | [sum_Icc_one](../../../../mathematics/NumberTheory/SourceKapitzaFiniteFilter/Variant6bc418cc93cf3f989cb2ce32208aaeef42d4f1d8bf0b50399f0725181e3ea35e.lean/declarations/sum-icc-one--a12bc3b6bd9734eecd28278f.md) | 208 | `result-track:a12bc3b6bd9734eecd28278f05bbf5afa66ef755996ded55c6d8427699afd5d5` |
| 20 | `theorem` | [bounded_divisor_sum](../../../../mathematics/NumberTheory/SourceKapitzaFiniteFilter/Variant6bc418cc93cf3f989cb2ce32208aaeef42d4f1d8bf0b50399f0725181e3ea35e.lean/declarations/bounded-divisor-sum--6a40881c280fea48645c5fde.md) | 217 | `result-track:6a40881c280fea48645c5fde73402231d502a7b837eabf52ee890ebd59a81290` |
| 21 | `theorem` | [logarithmic_sum_eq_rows](../../../../mathematics/NumberTheory/SourceKapitzaFiniteFilter/Variant6bc418cc93cf3f989cb2ce32208aaeef42d4f1d8bf0b50399f0725181e3ea35e.lean/declarations/logarithmic-sum-eq-rows--87367eef5fb945add291af13.md) | 234 | `result-track:87367eef5fb945add291af1326b8196efbdf73e770d0e1bbee162e9e188c360e` |
| 22 | `def` | [properRow](../../../../mathematics/NumberTheory/SourceKapitzaFiniteFilter/Variant6bc418cc93cf3f989cb2ce32208aaeef42d4f1d8bf0b50399f0725181e3ea35e.lean/declarations/properrow--17771fd0e2f63267a73e0a57.md) | 260 | `declaration-track:17771fd0e2f63267a73e0a57b593d9037ef09393991f33c128c4a85b57945f84` |
| 23 | `def` | [finiteResidual](../../../../mathematics/NumberTheory/SourceKapitzaFiniteFilter/Variant6bc418cc93cf3f989cb2ce32208aaeef42d4f1d8bf0b50399f0725181e3ea35e.lean/declarations/finiteresidual--66efacbeeab8a379858082aa.md) | 264 | `declaration-track:66efacbeeab8a379858082aa5f39c7478859b84c3ddd18b786e5f8eab308647c` |
| 24 | `def` | [finiteJ](../../../../mathematics/NumberTheory/SourceKapitzaFiniteFilter/Variant6bc418cc93cf3f989cb2ce32208aaeef42d4f1d8bf0b50399f0725181e3ea35e.lean/declarations/finitej--407d619624a78a45fa1318de.md) | 272 | `declaration-track:407d619624a78a45fa1318de5b9f6ad9a5305a48958e86e7e92d6faac13b8d53` |
| 25 | `def` | [finiteZ](../../../../mathematics/NumberTheory/SourceKapitzaFiniteFilter/Variant6bc418cc93cf3f989cb2ce32208aaeef42d4f1d8bf0b50399f0725181e3ea35e.lean/declarations/finitez--3c8b3c28a11c377ae0635bbd.md) | 280 | `declaration-track:3c8b3c28a11c377ae0635bbd2fb5ed55075caf71220cf3be1fcccc98edb61e71` |
| 26 | `theorem` | [properRow_zero_of_large](../../../../mathematics/NumberTheory/SourceKapitzaFiniteFilter/Variant6bc418cc93cf3f989cb2ce32208aaeef42d4f1d8bf0b50399f0725181e3ea35e.lean/declarations/properrow-zero-of-large--d16ec8e30653959215fafe5b.md) | 284 | `result-track:d16ec8e30653959215fafe5be91083fb8d06d1fd9cebf156f9bbfd8ed9a05f45` |
| 27 | `theorem` | [finite_divisor_balance](../../../../mathematics/NumberTheory/SourceKapitzaFiniteFilter/Variant6bc418cc93cf3f989cb2ce32208aaeef42d4f1d8bf0b50399f0725181e3ea35e.lean/declarations/finite-divisor-balance--e9962a0e0b7e159f8edc21aa.md) | 295 | `result-track:e9962a0e0b7e159f8edc21aa1ccd98629ffff8012facdf40d11fee78bec55733` |
| 28 | `theorem` | [properRow_eq_clipped](../../../../mathematics/NumberTheory/SourceKapitzaFiniteFilter/Variant6bc418cc93cf3f989cb2ce32208aaeef42d4f1d8bf0b50399f0725181e3ea35e.lean/declarations/properrow-eq-clipped--957e14b5b6a0d2ecec81a67a.md) | 352 | `result-track:957e14b5b6a0d2ecec81a67a5693051708054a6856a91c2ac29fc83726e06935` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
