# Verification target: GRWTSK.NumberTheory.ElementaryNumberTheory.SourceKapitzaFiniteFilter.Varianta38c7422743814edc54471740db34d738ce01030975a7c7a0bf2c090758031bf

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "937c4b47e07749408853d6ccbd8e043d6dca938e",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ElementaryNumberTheory/SourceKapitzaFiniteFilter/Varianta38c7422743814edc54471740db34d738ce01030975a7c7a0bf2c090758031bf.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/SourceKapitzaFiniteFilter/Varianta38c7422743814edc54471740db34d738ce01030975a7c7a0bf2c090758031bf.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/SourceKapitzaFiniteFilter/Varianta38c7422743814edc54471740db34d738ce01030975a7c7a0bf2c090758031bf.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `937c4b47e07749408853d6ccbd8e043d6dca938e`.

Source path: `GRWTSK/NumberTheory/ElementaryNumberTheory/SourceKapitzaFiniteFilter/Varianta38c7422743814edc54471740db34d738ce01030975a7c7a0bf2c090758031bf.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ElementaryNumberTheory/SourceKapitzaFiniteFilter/Varianta38c7422743814edc54471740db34d738ce01030975a7c7a0bf2c090758031bf.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.NumberTheory.ArithmeticFunction.VonMangoldt` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.IntervalCases` — import line 7; external provider; requires a separately pinned dependency.
- `Lean.Elab.Tactic.Omega` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [properCoprimeDivisorInventory](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/SourceKapitzaFiniteFilter/Varianta38c7422743814edc54471740db34d738ce01030975a7c7a0bf2c090758031bf.lean/declarations/propercoprimedivisorinventory--2d154750fb0ebff77f9cdb1c.md) | 40 | `declaration-track:2d154750fb0ebff77f9cdb1c9ad17fffaf4642f4db99ba70c75d4867aa7c3b52` |
| 2 | `def` | [properCoprimeDivisorCoeff](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/SourceKapitzaFiniteFilter/Varianta38c7422743814edc54471740db34d738ce01030975a7c7a0bf2c090758031bf.lean/declarations/propercoprimedivisorcoeff--a493652eb8bcdf03e878c926.md) | 44 | `declaration-track:a493652eb8bcdf03e878c926cb8d66355c4769ceac551e68d28835c190f21188` |
| 3 | `theorem` | [mem_properCoprimeDivisorInventory](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/SourceKapitzaFiniteFilter/Varianta38c7422743814edc54471740db34d738ce01030975a7c7a0bf2c090758031bf.lean/declarations/mem-propercoprimedivisorinventory--f0f7b2934aab89cc3d87da09.md) | 48 | `result-track:f0f7b2934aab89cc3d87da095e8cd56149df308edc7f557912938e9d6fd2ae8a` |
| 4 | `theorem` | [properCoprimeDivisorInventory_subset_divisors](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/SourceKapitzaFiniteFilter/Varianta38c7422743814edc54471740db34d738ce01030975a7c7a0bf2c090758031bf.lean/declarations/propercoprimedivisorinventory-subset-divisors--dd72c525ddb80681c9fb4068.md) | 54 | `result-track:dd72c525ddb80681c9fb40681ebbc404a16a3c7a66e68be8ec5cfd678bb1d1d0` |
| 5 | `theorem` | [proper_coprime_six_ge_five](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/SourceKapitzaFiniteFilter/Varianta38c7422743814edc54471740db34d738ce01030975a7c7a0bf2c090758031bf.lean/declarations/proper-coprime-six-ge-five--4124d251e8f4f0114005c4c8.md) | 60 | `result-track:4124d251e8f4f0114005c4c8bb7157f64a3e1388a8067500747cee991131f9e6` |
| 6 | `theorem` | [product_ge_ten_of_mem](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/SourceKapitzaFiniteFilter/Varianta38c7422743814edc54471740db34d738ce01030975a7c7a0bf2c090758031bf.lean/declarations/product-ge-ten-of-mem--ceb0fc63974dd510c5f72891.md) | 71 | `result-track:ceb0fc63974dd510c5f72891be6642df6d89c051cd67f7fbfa024cbc1e754445` |
| 7 | `theorem` | [properCoprimeDivisorCoeff_nonneg](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/SourceKapitzaFiniteFilter/Varianta38c7422743814edc54471740db34d738ce01030975a7c7a0bf2c090758031bf.lean/declarations/propercoprimedivisorcoeff-nonneg--4fcdc14a7ae06185bd906763.md) | 81 | `result-track:4fcdc14a7ae06185bd90676384d8eebf1810e9c0b34210fc2d0c5d5923fba0e2` |
| 8 | `theorem` | [properCoprimeDivisorCoeff_le_log](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/SourceKapitzaFiniteFilter/Varianta38c7422743814edc54471740db34d738ce01030975a7c7a0bf2c090758031bf.lean/declarations/propercoprimedivisorcoeff-le-log--9fe8fd94699c40e337de534b.md) | 87 | `result-track:9fe8fd94699c40e337de534bb82a61fb53ab7440524b41c235c1712c3ac02a41` |
| 9 | `theorem` | [properCoprimeDivisorInventory_empty_of_lt_ten](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/SourceKapitzaFiniteFilter/Varianta38c7422743814edc54471740db34d738ce01030975a7c7a0bf2c090758031bf.lean/declarations/propercoprimedivisorinventory-empty-of-lt-ten--7e4e0dc8d52e11c4c845cebd.md) | 99 | `result-track:7e4e0dc8d52e11c4c845cebd8cc62d13a232de954aa727cf8bcb4db5b808e651` |
| 10 | `theorem` | [properCoprimeDivisorCoeff_eq_zero_of_lt_ten](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/SourceKapitzaFiniteFilter/Varianta38c7422743814edc54471740db34d738ce01030975a7c7a0bf2c090758031bf.lean/declarations/propercoprimedivisorcoeff-eq-zero-of-lt-ten--6f181aea3a6b3cc3be415e7d.md) | 106 | `result-track:6f181aea3a6b3cc3be415e7d7bddf80f8d63eb5975b965f07e897d1ee6f2c9a9` |
| 11 | `theorem` | [properCoprimeDivisorInventory_ten](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/SourceKapitzaFiniteFilter/Varianta38c7422743814edc54471740db34d738ce01030975a7c7a0bf2c090758031bf.lean/declarations/propercoprimedivisorinventory-ten--91ff00f3879e6d694bcda9ce.md) | 112 | `result-track:91ff00f3879e6d694bcda9ce2981e5f8f4803d4d55057b25d994e2a5f921bc6c` |
| 12 | `theorem` | [properCoprimeDivisorCoeff_ten](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/SourceKapitzaFiniteFilter/Varianta38c7422743814edc54471740db34d738ce01030975a7c7a0bf2c090758031bf.lean/declarations/propercoprimedivisorcoeff-ten--65aa13473dc2354b4501a192.md) | 131 | `result-track:65aa13473dc2354b4501a1925cbbb1d5279c85fba923b7d7a08d571340984d4b` |
| 13 | `theorem` | [properCoprimeDivisorCoeff_ten_pos](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/SourceKapitzaFiniteFilter/Varianta38c7422743814edc54471740db34d738ce01030975a7c7a0bf2c090758031bf.lean/declarations/propercoprimedivisorcoeff-ten-pos--8c5bdd94ff0d28b53e89346b.md) | 138 | `result-track:8c5bdd94ff0d28b53e89346bb068dfa18f8a866995c9ba723913c9ad2cc8012d` |
| 14 | `theorem` | [primePower_four_mem_inventory_twenty](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/SourceKapitzaFiniteFilter/Varianta38c7422743814edc54471740db34d738ce01030975a7c7a0bf2c090758031bf.lean/declarations/primepower-four-mem-inventory-twenty--ed00610b689ce395ff76dcb8.md) | 143 | `result-track:ed00610b689ce395ff76dcb8ee6cdf3129d6d5d2a7a69917ec8af6d02bed5d40` |
| 15 | `def` | [finiteFilter](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/SourceKapitzaFiniteFilter/Varianta38c7422743814edc54471740db34d738ce01030975a7c7a0bf2c090758031bf.lean/declarations/finitefilter--c2534d170e69561b28d1eefb.md) | 148 | `declaration-track:c2534d170e69561b28d1eefb7cd58cb5bf3d950d7ebb94cbae792a646ed64b97` |
| 16 | `theorem` | [finiteFilter_unit_can_be_nonzero](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/SourceKapitzaFiniteFilter/Varianta38c7422743814edc54471740db34d738ce01030975a7c7a0bf2c090758031bf.lean/declarations/finitefilter-unit-can-be-nonzero--bbb2f35d6f3e3d4aa2aa13b0.md) | 152 | `result-track:bbb2f35d6f3e3d4aa2aa13b07bd291e957e1885bc03ffe78c66f02b8bb616414` |
| 17 | `theorem` | [sum_supported_dilate](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/SourceKapitzaFiniteFilter/Varianta38c7422743814edc54471740db34d738ce01030975a7c7a0bf2c090758031bf.lean/declarations/sum-supported-dilate--e50215b91f87808bf7206b1e.md) | 157 | `result-track:e50215b91f87808bf7206b1ed52dd61a2aaa3a24bacc4b45473e820733352b49` |
| 18 | `theorem` | [sum_finiteFilter_eq_coprime](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/SourceKapitzaFiniteFilter/Varianta38c7422743814edc54471740db34d738ce01030975a7c7a0bf2c090758031bf.lean/declarations/sum-finitefilter-eq-coprime--edf0e44836c9adc67db0247b.md) | 189 | `result-track:edf0e44836c9adc67db0247b51720f574e8e372ef030199c81905c875b47a610` |
| 19 | `theorem` | [sum_Icc_one](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/SourceKapitzaFiniteFilter/Varianta38c7422743814edc54471740db34d738ce01030975a7c7a0bf2c090758031bf.lean/declarations/sum-icc-one--78a9fa1042e6c9ac602d635c.md) | 216 | `result-track:78a9fa1042e6c9ac602d635ca44afffb4641f82d8700aa866aae6df7793ce327` |
| 20 | `theorem` | [bounded_divisor_sum](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/SourceKapitzaFiniteFilter/Varianta38c7422743814edc54471740db34d738ce01030975a7c7a0bf2c090758031bf.lean/declarations/bounded-divisor-sum--86000202e1c9a51bc32eb2bd.md) | 225 | `result-track:86000202e1c9a51bc32eb2bd30277875e3cdd470faf7b6dcc4d2b1ebfe8725f8` |
| 21 | `theorem` | [logarithmic_sum_eq_rows](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/SourceKapitzaFiniteFilter/Varianta38c7422743814edc54471740db34d738ce01030975a7c7a0bf2c090758031bf.lean/declarations/logarithmic-sum-eq-rows--736b893413fbf162912aa2ac.md) | 242 | `result-track:736b893413fbf162912aa2ac6ce6cfbe93a945f2f9e95bbfdaa46a6d43d8c5d6` |
| 22 | `def` | [properRow](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/SourceKapitzaFiniteFilter/Varianta38c7422743814edc54471740db34d738ce01030975a7c7a0bf2c090758031bf.lean/declarations/properrow--f15b1d110d0123ce9818fb1c.md) | 268 | `declaration-track:f15b1d110d0123ce9818fb1c1bcee4c7c1865c96ddff7dfa209148a98a9330ce` |
| 23 | `def` | [finiteResidual](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/SourceKapitzaFiniteFilter/Varianta38c7422743814edc54471740db34d738ce01030975a7c7a0bf2c090758031bf.lean/declarations/finiteresidual--64354538d0ea6b89aede0341.md) | 272 | `declaration-track:64354538d0ea6b89aede0341c797cfd05eb3d6505d8499543ec736a5902e4144` |
| 24 | `def` | [finiteJ](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/SourceKapitzaFiniteFilter/Varianta38c7422743814edc54471740db34d738ce01030975a7c7a0bf2c090758031bf.lean/declarations/finitej--19949c7d7f47b8d857f8969e.md) | 275 | `declaration-track:19949c7d7f47b8d857f8969ea44c96f8c1d175a7b23d4d67ffb396564b5ccd75` |
| 25 | `def` | [finiteZ](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/SourceKapitzaFiniteFilter/Varianta38c7422743814edc54471740db34d738ce01030975a7c7a0bf2c090758031bf.lean/declarations/finitez--9d0acc9d047416e9e1f9efb5.md) | 278 | `declaration-track:9d0acc9d047416e9e1f9efb5fea228d07f66cb500a2ac76b1d43c45faae597b8` |
| 26 | `theorem` | [properRow_zero_of_large](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/SourceKapitzaFiniteFilter/Varianta38c7422743814edc54471740db34d738ce01030975a7c7a0bf2c090758031bf.lean/declarations/properrow-zero-of-large--40726dbd3de3aace99e5d9cc.md) | 282 | `result-track:40726dbd3de3aace99e5d9cce7dcfe2571314e918162fbb29c5be3a967e34972` |
| 27 | `theorem` | [finite_divisor_balance](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/SourceKapitzaFiniteFilter/Varianta38c7422743814edc54471740db34d738ce01030975a7c7a0bf2c090758031bf.lean/declarations/finite-divisor-balance--7070db6655bf4acc76390ea8.md) | 293 | `result-track:7070db6655bf4acc76390ea80f90863dcd59a5fc6562791db98d9af7b3edbc0e` |
| 28 | `theorem` | [properRow_eq_clipped](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/SourceKapitzaFiniteFilter/Varianta38c7422743814edc54471740db34d738ce01030975a7c7a0bf2c090758031bf.lean/declarations/properrow-eq-clipped--3bbef985b931aaff9b13987a.md) | 350 | `result-track:3bbef985b931aaff9b13987ae922bf612b1fb15c04b7d5dcaa6d01b38bbe3968` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
