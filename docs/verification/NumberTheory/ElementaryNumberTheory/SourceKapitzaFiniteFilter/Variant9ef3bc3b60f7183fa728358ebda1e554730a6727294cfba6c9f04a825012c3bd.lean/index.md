# Verification target: GRWTSK.NumberTheory.ElementaryNumberTheory.SourceKapitzaFiniteFilter.Variant9ef3bc3b60f7183fa728358ebda1e554730a6727294cfba6c9f04a825012c3bd

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "760888a34439c2f473dd01b68ab12c537fb7e1c7",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ElementaryNumberTheory/SourceKapitzaFiniteFilter/Variant9ef3bc3b60f7183fa728358ebda1e554730a6727294cfba6c9f04a825012c3bd.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/SourceKapitzaFiniteFilter/Variant9ef3bc3b60f7183fa728358ebda1e554730a6727294cfba6c9f04a825012c3bd.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/SourceKapitzaFiniteFilter/Variant9ef3bc3b60f7183fa728358ebda1e554730a6727294cfba6c9f04a825012c3bd.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `760888a34439c2f473dd01b68ab12c537fb7e1c7`.

Source path: `GRWTSK/NumberTheory/ElementaryNumberTheory/SourceKapitzaFiniteFilter/Variant9ef3bc3b60f7183fa728358ebda1e554730a6727294cfba6c9f04a825012c3bd.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ElementaryNumberTheory/SourceKapitzaFiniteFilter/Variant9ef3bc3b60f7183fa728358ebda1e554730a6727294cfba6c9f04a825012c3bd.lean.json)

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

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [properCoprimeDivisorInventory](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/SourceKapitzaFiniteFilter/Variant9ef3bc3b60f7183fa728358ebda1e554730a6727294cfba6c9f04a825012c3bd.lean/declarations/propercoprimedivisorinventory--cf4cb237e46c33410d20a6f4.md) | 32 | `declaration-track:cf4cb237e46c33410d20a6f404fc59efd8f840f3fba7a25989fe45132d6a2cb3` |
| 2 | `def` | [properCoprimeDivisorCoeff](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/SourceKapitzaFiniteFilter/Variant9ef3bc3b60f7183fa728358ebda1e554730a6727294cfba6c9f04a825012c3bd.lean/declarations/propercoprimedivisorcoeff--0b9173f8b7630b54b288500e.md) | 36 | `declaration-track:0b9173f8b7630b54b288500e457809e582ddc647d38935ad1f5db526e30098dd` |
| 3 | `theorem` | [mem_properCoprimeDivisorInventory](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/SourceKapitzaFiniteFilter/Variant9ef3bc3b60f7183fa728358ebda1e554730a6727294cfba6c9f04a825012c3bd.lean/declarations/mem-propercoprimedivisorinventory--90ebbbc87e033260ab997108.md) | 40 | `result-track:90ebbbc87e033260ab9971088fe68f70d414ac83f468afa7d96be70aa6ec3a54` |
| 4 | `theorem` | [properCoprimeDivisorInventory_subset_divisors](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/SourceKapitzaFiniteFilter/Variant9ef3bc3b60f7183fa728358ebda1e554730a6727294cfba6c9f04a825012c3bd.lean/declarations/propercoprimedivisorinventory-subset-divisors--1c8fe9db3ac5a16e75af700f.md) | 46 | `result-track:1c8fe9db3ac5a16e75af700fa47aff05d20c222294c8daebf416677362964972` |
| 5 | `theorem` | [proper_coprime_six_ge_five](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/SourceKapitzaFiniteFilter/Variant9ef3bc3b60f7183fa728358ebda1e554730a6727294cfba6c9f04a825012c3bd.lean/declarations/proper-coprime-six-ge-five--de89f03104394fe18ab1a553.md) | 52 | `result-track:de89f03104394fe18ab1a553d8947fdad286be89a9cf725442b4eebca0cb0125` |
| 6 | `theorem` | [product_ge_ten_of_mem](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/SourceKapitzaFiniteFilter/Variant9ef3bc3b60f7183fa728358ebda1e554730a6727294cfba6c9f04a825012c3bd.lean/declarations/product-ge-ten-of-mem--33a96ce7254aaed6b6013261.md) | 63 | `result-track:33a96ce7254aaed6b6013261348dd83570820723138b9f2c44dfd2ee760b9a0e` |
| 7 | `theorem` | [properCoprimeDivisorCoeff_nonneg](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/SourceKapitzaFiniteFilter/Variant9ef3bc3b60f7183fa728358ebda1e554730a6727294cfba6c9f04a825012c3bd.lean/declarations/propercoprimedivisorcoeff-nonneg--5ea389b4755096f53349fb28.md) | 73 | `result-track:5ea389b4755096f53349fb28dee0905b72462720cdf1e2a2d9bd2ca54e4ef34a` |
| 8 | `theorem` | [properCoprimeDivisorCoeff_le_log](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/SourceKapitzaFiniteFilter/Variant9ef3bc3b60f7183fa728358ebda1e554730a6727294cfba6c9f04a825012c3bd.lean/declarations/propercoprimedivisorcoeff-le-log--43275cac6c210d494c7639c7.md) | 79 | `result-track:43275cac6c210d494c7639c7a177e9b5ba3f1064bf07f8c1bf7737366ef920ec` |
| 9 | `theorem` | [properCoprimeDivisorInventory_empty_of_lt_ten](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/SourceKapitzaFiniteFilter/Variant9ef3bc3b60f7183fa728358ebda1e554730a6727294cfba6c9f04a825012c3bd.lean/declarations/propercoprimedivisorinventory-empty-of-lt-ten--3870677f81655c5bf102ba6e.md) | 91 | `result-track:3870677f81655c5bf102ba6e4534216311185d65bcd8e0ae0acdf6238573fec3` |
| 10 | `theorem` | [properCoprimeDivisorCoeff_eq_zero_of_lt_ten](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/SourceKapitzaFiniteFilter/Variant9ef3bc3b60f7183fa728358ebda1e554730a6727294cfba6c9f04a825012c3bd.lean/declarations/propercoprimedivisorcoeff-eq-zero-of-lt-ten--74cd3215e0d4d835739e15e5.md) | 98 | `result-track:74cd3215e0d4d835739e15e56984dc6fc708554f88cc8bc255fc1498cc826de1` |
| 11 | `theorem` | [properCoprimeDivisorInventory_ten](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/SourceKapitzaFiniteFilter/Variant9ef3bc3b60f7183fa728358ebda1e554730a6727294cfba6c9f04a825012c3bd.lean/declarations/propercoprimedivisorinventory-ten--b53214f29a32f2c9edc97986.md) | 104 | `result-track:b53214f29a32f2c9edc97986083d3aa3326286addbeb1243b19a3160afb1fdbb` |
| 12 | `theorem` | [properCoprimeDivisorCoeff_ten](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/SourceKapitzaFiniteFilter/Variant9ef3bc3b60f7183fa728358ebda1e554730a6727294cfba6c9f04a825012c3bd.lean/declarations/propercoprimedivisorcoeff-ten--715a8fc0e8c593f636b901d9.md) | 123 | `result-track:715a8fc0e8c593f636b901d9139da3525071716c11b6236391e274fa4596d70e` |
| 13 | `theorem` | [properCoprimeDivisorCoeff_ten_pos](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/SourceKapitzaFiniteFilter/Variant9ef3bc3b60f7183fa728358ebda1e554730a6727294cfba6c9f04a825012c3bd.lean/declarations/propercoprimedivisorcoeff-ten-pos--e6de61aa088f3090a8ff70c4.md) | 130 | `result-track:e6de61aa088f3090a8ff70c4d65ee6be6a8388e3eea260c906717c71606effe4` |
| 14 | `theorem` | [primePower_four_mem_inventory_twenty](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/SourceKapitzaFiniteFilter/Variant9ef3bc3b60f7183fa728358ebda1e554730a6727294cfba6c9f04a825012c3bd.lean/declarations/primepower-four-mem-inventory-twenty--ccaf612e1a298471e31ee4fe.md) | 135 | `result-track:ccaf612e1a298471e31ee4fea26d795486e831d54663655aad4b25e94c6128b7` |
| 15 | `def` | [finiteFilter](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/SourceKapitzaFiniteFilter/Variant9ef3bc3b60f7183fa728358ebda1e554730a6727294cfba6c9f04a825012c3bd.lean/declarations/finitefilter--2d7217aad13ca7aa10dcf575.md) | 140 | `declaration-track:2d7217aad13ca7aa10dcf575646ebf51c539c0deeb26db453a2d3cbb1624c4f3` |
| 16 | `theorem` | [finiteFilter_unit_can_be_nonzero](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/SourceKapitzaFiniteFilter/Variant9ef3bc3b60f7183fa728358ebda1e554730a6727294cfba6c9f04a825012c3bd.lean/declarations/finitefilter-unit-can-be-nonzero--371c8db3a86e99f124e180b2.md) | 144 | `result-track:371c8db3a86e99f124e180b2ca333810b6837d966df3eb5253959a48fb602105` |
| 17 | `theorem` | [sum_supported_dilate](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/SourceKapitzaFiniteFilter/Variant9ef3bc3b60f7183fa728358ebda1e554730a6727294cfba6c9f04a825012c3bd.lean/declarations/sum-supported-dilate--d6f9b13b8b56dff9ad21a5cb.md) | 149 | `result-track:d6f9b13b8b56dff9ad21a5cb36437678b970314be329daf36f8a56a0eea695a1` |
| 18 | `theorem` | [sum_finiteFilter_eq_coprime](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/SourceKapitzaFiniteFilter/Variant9ef3bc3b60f7183fa728358ebda1e554730a6727294cfba6c9f04a825012c3bd.lean/declarations/sum-finitefilter-eq-coprime--0bb1483ee256a6db92b22cd0.md) | 181 | `result-track:0bb1483ee256a6db92b22cd0cea3ded6607ca90d7f849cb8f490b485e9e6e6e3` |
| 19 | `theorem` | [sum_Icc_one](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/SourceKapitzaFiniteFilter/Variant9ef3bc3b60f7183fa728358ebda1e554730a6727294cfba6c9f04a825012c3bd.lean/declarations/sum-icc-one--d5f43a1dfab29616e7a27f4a.md) | 208 | `result-track:d5f43a1dfab29616e7a27f4aa4edb0669d6e6060ea5c39aad40c43852b9510d7` |
| 20 | `theorem` | [bounded_divisor_sum](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/SourceKapitzaFiniteFilter/Variant9ef3bc3b60f7183fa728358ebda1e554730a6727294cfba6c9f04a825012c3bd.lean/declarations/bounded-divisor-sum--8a5f1934905f9734f0e65f0b.md) | 217 | `result-track:8a5f1934905f9734f0e65f0b9668e76d0ab3b384e9eb009d17e4e9d73db4ac5c` |
| 21 | `theorem` | [logarithmic_sum_eq_rows](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/SourceKapitzaFiniteFilter/Variant9ef3bc3b60f7183fa728358ebda1e554730a6727294cfba6c9f04a825012c3bd.lean/declarations/logarithmic-sum-eq-rows--ac8c2c7d3aa32e87d5a43f66.md) | 234 | `result-track:ac8c2c7d3aa32e87d5a43f6632ee37fd7c9593d11471839772568ceb52ac0035` |
| 22 | `def` | [properRow](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/SourceKapitzaFiniteFilter/Variant9ef3bc3b60f7183fa728358ebda1e554730a6727294cfba6c9f04a825012c3bd.lean/declarations/properrow--7aa932573c5b2502b20b9c34.md) | 260 | `declaration-track:7aa932573c5b2502b20b9c349073f5575374d01e540598277b993b34c289d3f5` |
| 23 | `def` | [finiteResidual](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/SourceKapitzaFiniteFilter/Variant9ef3bc3b60f7183fa728358ebda1e554730a6727294cfba6c9f04a825012c3bd.lean/declarations/finiteresidual--80f059183974f5603e3221c8.md) | 264 | `declaration-track:80f059183974f5603e3221c8d5cf2081a0d557847c03d8697c2684a4ffe792ef` |
| 24 | `def` | [finiteJ](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/SourceKapitzaFiniteFilter/Variant9ef3bc3b60f7183fa728358ebda1e554730a6727294cfba6c9f04a825012c3bd.lean/declarations/finitej--9ca433c8c608b60fdd34770e.md) | 267 | `declaration-track:9ca433c8c608b60fdd34770e2628b29eb3b385842dc6aa676f1483aa5b9311d2` |
| 25 | `def` | [finiteZ](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/SourceKapitzaFiniteFilter/Variant9ef3bc3b60f7183fa728358ebda1e554730a6727294cfba6c9f04a825012c3bd.lean/declarations/finitez--a169d95b4c5d41e712921eec.md) | 270 | `declaration-track:a169d95b4c5d41e712921eecd1682680edc48c5d9ffa4e3c634401862c8b5614` |
| 26 | `theorem` | [properRow_zero_of_large](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/SourceKapitzaFiniteFilter/Variant9ef3bc3b60f7183fa728358ebda1e554730a6727294cfba6c9f04a825012c3bd.lean/declarations/properrow-zero-of-large--5350e06fcbb6336f81b97d17.md) | 274 | `result-track:5350e06fcbb6336f81b97d17649599d29929b7961e6318042e1a7df489c82dae` |
| 27 | `theorem` | [finite_divisor_balance](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/SourceKapitzaFiniteFilter/Variant9ef3bc3b60f7183fa728358ebda1e554730a6727294cfba6c9f04a825012c3bd.lean/declarations/finite-divisor-balance--3970b100ba25474a7c4d5eb2.md) | 285 | `result-track:3970b100ba25474a7c4d5eb21d399dc548353deed43b8999edf720da0d4e11ac` |
| 28 | `theorem` | [properRow_eq_clipped](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/SourceKapitzaFiniteFilter/Variant9ef3bc3b60f7183fa728358ebda1e554730a6727294cfba6c9f04a825012c3bd.lean/declarations/properrow-eq-clipped--015d39b0fca1e688b6eb78dd.md) | 342 | `result-track:015d39b0fca1e688b6eb78dd03474da6e283b79509d7411b10ebb117bfb1c75e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
