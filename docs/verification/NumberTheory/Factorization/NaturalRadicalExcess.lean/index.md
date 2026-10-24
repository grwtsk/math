# Verification target: GRWTSK.NumberTheory.Factorization.NaturalRadicalExcess

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1392f6a2237cc7af5ebc6d994188900c6e0f4657",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Factorization/NaturalRadicalExcess.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Factorization/NaturalRadicalExcess.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Factorization/NaturalRadicalExcess.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1392f6a2237cc7af5ebc6d994188900c6e0f4657`.

Source path: `GRWTSK/NumberTheory/Factorization/NaturalRadicalExcess.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Factorization/NaturalRadicalExcess.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.Log.Basic` — import line 10; external provider; requires a separately pinned dependency.
- `Lean.Elab.Tactic.Omega` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Ring` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Linarith` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.NormNum` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [occupied](../../../../mathematics/NumberTheory/Factorization/NaturalRadicalExcess.lean/declarations/occupied--fc77a30d7b5ab990e8f9c250.md) | 24 | `declaration-track:fc77a30d7b5ab990e8f9c2506998fef74187510b75704a0850c7f96aeef766d2` |
| 2 | `def` | [indicator](../../../../mathematics/NumberTheory/Factorization/NaturalRadicalExcess.lean/declarations/indicator--14ac56bc6235dc24515d7a11.md) | 26 | `declaration-track:14ac56bc6235dc24515d7a11cd7042ad3f37e419bf08a422ce6a171180562f1a` |
| 3 | `def` | [excess](../../../../mathematics/NumberTheory/Factorization/NaturalRadicalExcess.lean/declarations/excess--b6925a1b9750e11a3cc6ab48.md) | 28 | `declaration-track:b6925a1b9750e11a3cc6ab48cbf9ddae2e40f40b5097590a4a7a642df38884f1` |
| 4 | `def` | [overlap](../../../../mathematics/NumberTheory/Factorization/NaturalRadicalExcess.lean/declarations/overlap--dce7f073365623c7e0eaf022.md) | 31 | `declaration-track:dce7f073365623c7e0eaf022508684cd37ed17563b7419a4b69a492e2182d936` |
| 5 | `theorem` | [multiplicity_split](../../../../mathematics/NumberTheory/Factorization/NaturalRadicalExcess.lean/declarations/multiplicity-split--9fc02d05a176616edaca5dce.md) | 34 | `result-track:9fc02d05a176616edaca5dce02f8002e4b109768bcf62ee0590c53eeb799ceca` |
| 6 | `theorem` | [prime_depth_eq_padicValNat](../../../../mathematics/NumberTheory/Factorization/NaturalRadicalExcess.lean/declarations/prime-depth-eq-padicvalnat--fd9e0257ba38c715dc7d4d41.md) | 40 | `result-track:fd9e0257ba38c715dc7d4d41b279b7cebc259d68bc8689ae1c1802b05fa61fa3` |
| 7 | `theorem` | [excess_zero_iff](../../../../mathematics/NumberTheory/Factorization/NaturalRadicalExcess.lean/declarations/excess-zero-iff--10f343453fc994fe2b3f4080.md) | 43 | `result-track:10f343453fc994fe2b3f4080ce7d9d444c25e01f8217c6dcdb8a6f96dda54505` |
| 8 | `theorem` | [mem_occupied_iff](../../../../mathematics/NumberTheory/Factorization/NaturalRadicalExcess.lean/declarations/mem-occupied-iff--f10fbbd6a5b31c683ec9e347.md) | 48 | `result-track:f10fbbd6a5b31c683ec9e34781834692ecc4af92d902c1730f97bd9095fb6d14` |
| 9 | `theorem` | [occupied_mul](../../../../mathematics/NumberTheory/Factorization/NaturalRadicalExcess.lean/declarations/occupied-mul--476932500ed80502930751ed.md) | 52 | `result-track:476932500ed80502930751ed1d8731bda52029d8541722ee5c7c834b7cb55885` |
| 10 | `theorem` | [occupied_pow](../../../../mathematics/NumberTheory/Factorization/NaturalRadicalExcess.lean/declarations/occupied-pow--78ccf4827e0026744b7c570e.md) | 59 | `result-track:78ccf4827e0026744b7c570ea061598a2f9e750c185b05badbcb80fd85eafd5d` |
| 11 | `theorem` | [occupied_prime](../../../../mathematics/NumberTheory/Factorization/NaturalRadicalExcess.lean/declarations/occupied-prime--c5b442f89c9d8ffc4546e184.md) | 64 | `result-track:c5b442f89c9d8ffc4546e1841e8d1652a8a5e5ab0351b4e0c1f9e4b1fc51b310` |
| 12 | `theorem` | [product_depth](../../../../mathematics/NumberTheory/Factorization/NaturalRadicalExcess.lean/declarations/product-depth--6f156e4cb29c4534601959a7.md) | 68 | `result-track:6f156e4cb29c4534601959a75c4ce76d2d454a2622cba7b1edbfe4893ab375d6` |
| 13 | `theorem` | [product_support_overlap](../../../../mathematics/NumberTheory/Factorization/NaturalRadicalExcess.lean/declarations/product-support-overlap--495461a777b6f19c51d6c582.md) | 72 | `result-track:495461a777b6f19c51d6c582999867c51bca8c4fd5133ae58c18e19c8988e477` |
| 14 | `theorem` | [product_excess](../../../../mathematics/NumberTheory/Factorization/NaturalRadicalExcess.lean/declarations/product-excess--ec7a5deaa4dde857e0c67c75.md) | 80 | `result-track:ec7a5deaa4dde857e0c67c75ea7c3af595fd258f9e3b2aa317728053feaf3b61` |
| 15 | `theorem` | [prime_power_excess](../../../../mathematics/NumberTheory/Factorization/NaturalRadicalExcess.lean/declarations/prime-power-excess--5907dd53a27893dbb528ebbc.md) | 87 | `result-track:5907dd53a27893dbb528ebbc1861c742c811262f47e71c2f9b6a116f0e52b3a7` |
| 16 | `theorem` | [prime_power_unbounded](../../../../mathematics/NumberTheory/Factorization/NaturalRadicalExcess.lean/declarations/prime-power-unbounded--980ab90347a6c23fb85d68ec.md) | 92 | `result-track:980ab90347a6c23fb85d68ec442771bfacec0dfcbbfbd440aa875245751a80b8` |
| 17 | `def` | [radical](../../../../mathematics/NumberTheory/Factorization/NaturalRadicalExcess.lean/declarations/radical--7870025577d180e383b137e2.md) | 100 | `declaration-track:7870025577d180e383b137e25a3de5014b12199889c186828073c065dd05ce60` |
| 18 | `def` | [supportLog](../../../../mathematics/NumberTheory/Factorization/NaturalRadicalExcess.lean/declarations/supportlog--c9d7f5c26effc9cea9d9f39b.md) | 102 | `declaration-track:c9d7f5c26effc9cea9d9f39badf47c67c341e94c1dae978a3d11298f064c0237` |
| 19 | `def` | [excessLog](../../../../mathematics/NumberTheory/Factorization/NaturalRadicalExcess.lean/declarations/excesslog--93e4ba435f1d4cd28a252ddb.md) | 104 | `declaration-track:93e4ba435f1d4cd28a252ddbc12b177f1243f4271a780b1c8830b38f37d505b2` |
| 20 | `def` | [overlapLog](../../../../mathematics/NumberTheory/Factorization/NaturalRadicalExcess.lean/declarations/overlaplog--785af724354510a6ada0decb.md) | 107 | `declaration-track:785af724354510a6ada0decb125d941d50c3274478813fe97a2f642d3fc4d276` |
| 21 | `theorem` | [log_radical](../../../../mathematics/NumberTheory/Factorization/NaturalRadicalExcess.lean/declarations/log-radical--2795672138b746815bfa13b1.md) | 111 | `result-track:2795672138b746815bfa13b1722924b1289c549271d3563db6f37ba69a1d7c81` |
| 22 | `theorem` | [log_decomposition](../../../../mathematics/NumberTheory/Factorization/NaturalRadicalExcess.lean/declarations/log-decomposition--c92dd11971ae71385accc62f.md) | 123 | `result-track:c92dd11971ae71385accc62f19d28cd8fac0836d2f0f7fa221ec106eae14f29f` |
| 23 | `theorem` | [excessLog_nonneg](../../../../mathematics/NumberTheory/Factorization/NaturalRadicalExcess.lean/declarations/excesslog-nonneg--7a394c132b0fa321a0525988.md) | 139 | `result-track:7a394c132b0fa321a052598859b6ba530386f972bf57ba8f42bc6cd3e2b35367` |
| 24 | `theorem` | [supportLog_product](../../../../mathematics/NumberTheory/Factorization/NaturalRadicalExcess.lean/declarations/supportlog-product--62e20d8d106330f15747a485.md) | 145 | `result-track:62e20d8d106330f15747a4850bfb72a7c9593afa45d1d1311b96deb003f1d5f1` |
| 25 | `theorem` | [excessLog_product](../../../../mathematics/NumberTheory/Factorization/NaturalRadicalExcess.lean/declarations/excesslog-product--88ac96accef4ef3654899faa.md) | 152 | `result-track:88ac96accef4ef3654899faaaa43e67b20e0642f29a9a4d913ca16f6a1d32259` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
