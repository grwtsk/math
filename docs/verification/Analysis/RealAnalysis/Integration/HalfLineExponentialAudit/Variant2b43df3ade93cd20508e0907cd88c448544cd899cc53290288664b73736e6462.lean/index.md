# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.HalfLineExponentialAudit.Variant2b43df3ade93cd20508e0907cd88c448544cd899cc53290288664b73736e6462

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9d2d58a195644c7b631df6f48d35424974967650",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/HalfLineExponentialAudit/Variant2b43df3ade93cd20508e0907cd88c448544cd899cc53290288664b73736e6462.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HalfLineExponentialAudit/Variant2b43df3ade93cd20508e0907cd88c448544cd899cc53290288664b73736e6462.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HalfLineExponentialAudit/Variant2b43df3ade93cd20508e0907cd88c448544cd899cc53290288664b73736e6462.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9d2d58a195644c7b631df6f48d35424974967650`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/HalfLineExponentialAudit/Variant2b43df3ade93cd20508e0907cd88c448544cd899cc53290288664b73736e6462.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/HalfLineExponentialAudit/Variant2b43df3ade93cd20508e0907cd88c448544cd899cc53290288664b73736e6462.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Function.L2Space` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.ImproperIntegrals` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [halfLineMeasure](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HalfLineExponentialAudit/Variant2b43df3ade93cd20508e0907cd88c448544cd899cc53290288664b73736e6462.lean/declarations/halflinemeasure--2a1b9ae8d0ceb1ff7f6aa51f.md) | 12 | `declaration-track:2a1b9ae8d0ceb1ff7f6aa51f53049023e635fd0a15c4b7203b7c0239e98f1c09` |
| 2 | `abbrev` | [H](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HalfLineExponentialAudit/Variant2b43df3ade93cd20508e0907cd88c448544cd899cc53290288664b73736e6462.lean/declarations/h--5d108dd8674dbccbda089d57.md) | 15 | `declaration-track:5d108dd8674dbccbda089d57e25956ed69d493d90acbf56992065c31fe9b02a4` |
| 3 | `def` | [exponentialFunction](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HalfLineExponentialAudit/Variant2b43df3ade93cd20508e0907cd88c448544cd899cc53290288664b73736e6462.lean/declarations/exponentialfunction--41751a656a1a011f6341d6a6.md) | 18 | `declaration-track:41751a656a1a011f6341d6a6c12f645c53cd4476660f07fd23b63e2040faac24` |
| 4 | `theorem` | [exponentialFunction_continuous](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HalfLineExponentialAudit/Variant2b43df3ade93cd20508e0907cd88c448544cd899cc53290288664b73736e6462.lean/declarations/exponentialfunction-continuous--80ef292e9aaa3fd2c1ceef13.md) | 20 | `result-track:80ef292e9aaa3fd2c1ceef1327d11629aaab14d099f952a82903bc2c28d1ec24` |
| 5 | `theorem` | [exponentialFunction_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HalfLineExponentialAudit/Variant2b43df3ade93cd20508e0907cd88c448544cd899cc53290288664b73736e6462.lean/declarations/exponentialfunction-integrable--b376c4833bdd9af9464ac51b.md) | 24 | `result-track:b376c4833bdd9af9464ac51bf7e0a939b4f1a144343dfef854acabde85f2b4c2` |
| 6 | `theorem` | [exponentialFunction_norm_sq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HalfLineExponentialAudit/Variant2b43df3ade93cd20508e0907cd88c448544cd899cc53290288664b73736e6462.lean/declarations/exponentialfunction-norm-sq--6ca0da9b5f11503c73480930.md) | 28 | `result-track:6ca0da9b5f11503c7348093096a9698616117f8c6aebb3564229bc5079ec821d` |
| 7 | `theorem` | [exponentialFunction_sq_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HalfLineExponentialAudit/Variant2b43df3ade93cd20508e0907cd88c448544cd899cc53290288664b73736e6462.lean/declarations/exponentialfunction-sq-integrable--c145ee379ef1cc86dd250837.md) | 37 | `result-track:c145ee379ef1cc86dd25083729a43d8e03d363c6da63366ebae5d752a84cc4a7` |
| 8 | `theorem` | [exponentialFunction_memLp](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HalfLineExponentialAudit/Variant2b43df3ade93cd20508e0907cd88c448544cd899cc53290288664b73736e6462.lean/declarations/exponentialfunction-memlp--ec33baeff8d60ccc0086a3fc.md) | 42 | `result-track:ec33baeff8d60ccc0086a3fc093971fe6c7b970c302a5d572564388d687d75eb` |
| 9 | `theorem` | [exponentialFunction_sq_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HalfLineExponentialAudit/Variant2b43df3ade93cd20508e0907cd88c448544cd899cc53290288664b73736e6462.lean/declarations/exponentialfunction-sq-integral--63024fb69d0f578221a9ccec.md) | 48 | `result-track:63024fb69d0f578221a9ccec6512dc64bb4883dc9e9ab7699957d23ddf6deeb3` |
| 10 | `def` | [exponentialVector](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HalfLineExponentialAudit/Variant2b43df3ade93cd20508e0907cd88c448544cd899cc53290288664b73736e6462.lean/declarations/exponentialvector--d011fbb203525411bbaf514e.md) | 55 | `declaration-track:d011fbb203525411bbaf514e0c0befb93509b8109af9d9fbbc99f91fce661d67` |
| 11 | `theorem` | [exponentialVector_ae](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HalfLineExponentialAudit/Variant2b43df3ade93cd20508e0907cd88c448544cd899cc53290288664b73736e6462.lean/declarations/exponentialvector-ae--dc85370d4bb420623e89187f.md) | 58 | `result-track:dc85370d4bb420623e89187fa188ded9adb987b61610d8bdba1bda72b68ac40b` |
| 12 | `theorem` | [pointwise_inner_exponential](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HalfLineExponentialAudit/Variant2b43df3ade93cd20508e0907cd88c448544cd899cc53290288664b73736e6462.lean/declarations/pointwise-inner-exponential--514dc2e9418052d3010d47a5.md) | 62 | `result-track:514dc2e9418052d3010d47a50b6ddcef4ccda4904437e18a60bbd6a2fc883b65` |
| 13 | `theorem` | [inner_exponential_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HalfLineExponentialAudit/Variant2b43df3ade93cd20508e0907cd88c448544cd899cc53290288664b73736e6462.lean/declarations/inner-exponential-integrable--e13e9e283835132b9a5e9ce8.md) | 72 | `result-track:e13e9e283835132b9a5e9ce80467551dc5f36504398ececd2954d79c72cd41ce` |
| 14 | `theorem` | [inner_exponential_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HalfLineExponentialAudit/Variant2b43df3ade93cd20508e0907cd88c448544cd899cc53290288664b73736e6462.lean/declarations/inner-exponential-integral--e48b43e57c21e42541d86a75.md) | 78 | `result-track:e48b43e57c21e42541d86a7530d767addde360df5f7942aeaa9b13bcd2f86e54` |
| 15 | `theorem` | [inner_exponentialVector](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HalfLineExponentialAudit/Variant2b43df3ade93cd20508e0907cd88c448544cd899cc53290288664b73736e6462.lean/declarations/inner-exponentialvector--808929bb7bc035347df0dfe1.md) | 87 | `result-track:808929bb7bc035347df0dfe1af744bde71ba543ce3065d162f1a35fcba2dca71` |
| 16 | `theorem` | [exponentialVector_norm_sq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HalfLineExponentialAudit/Variant2b43df3ade93cd20508e0907cd88c448544cd899cc53290288664b73736e6462.lean/declarations/exponentialvector-norm-sq--1636f4554b95e65269fe3814.md) | 98 | `result-track:1636f4554b95e65269fe381415a04d3f0ff8c66431634caa42dc09a8ad307f8a` |
| 17 | `theorem` | [exponentialVector_ne_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HalfLineExponentialAudit/Variant2b43df3ade93cd20508e0907cd88c448544cd899cc53290288664b73736e6462.lean/declarations/exponentialvector-ne-zero--691c5c487398bd147cae7159.md) | 109 | `result-track:691c5c487398bd147cae715943b39d740775919dfd0dc2278f31f8bbe794c0a3` |
| 18 | `def` | [referenceVector](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HalfLineExponentialAudit/Variant2b43df3ade93cd20508e0907cd88c448544cd899cc53290288664b73736e6462.lean/declarations/referencevector--1eee9a6d64ba76daa27f20d9.md) | 118 | `declaration-track:1eee9a6d64ba76daa27f20d950f4868f3ae27478420967801ad8874e56abc203` |
| 19 | `theorem` | [referenceVector_ae](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HalfLineExponentialAudit/Variant2b43df3ade93cd20508e0907cd88c448544cd899cc53290288664b73736e6462.lean/declarations/referencevector-ae--c58c7402fdc80b1cc60fdca4.md) | 120 | `result-track:c58c7402fdc80b1cc60fdca4d28c23a74fb71e8456e47c3b104f20ec85bd0a7d` |
| 20 | `theorem` | [referenceVector_norm_sq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HalfLineExponentialAudit/Variant2b43df3ade93cd20508e0907cd88c448544cd899cc53290288664b73736e6462.lean/declarations/referencevector-norm-sq--060366c635d927917b93310a.md) | 126 | `result-track:060366c635d927917b93310a35bda84e199b19777acde0edc92ae13581c85062` |
| 21 | `theorem` | [inner_reference_exponential](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HalfLineExponentialAudit/Variant2b43df3ade93cd20508e0907cd88c448544cd899cc53290288664b73736e6462.lean/declarations/inner-reference-exponential--0e8da751a82a8a125f5f9da7.md) | 129 | `result-track:0e8da751a82a8a125f5f9da71907cab5772d7b4687aa8e87e6447f72a10bb833` |
| 22 | `theorem` | [inner_exponential_reference](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HalfLineExponentialAudit/Variant2b43df3ade93cd20508e0907cd88c448544cd899cc53290288664b73736e6462.lean/declarations/inner-exponential-reference--2e383f91311f27c18f80bbf0.md) | 133 | `result-track:2e383f91311f27c18f80bbf0c7f216be017fc55f3a9d92a97363f21d096f6c13` |
| 23 | `theorem` | [norm_sq_inner_reference_exponential](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HalfLineExponentialAudit/Variant2b43df3ade93cd20508e0907cd88c448544cd899cc53290288664b73736e6462.lean/declarations/norm-sq-inner-reference-exponential--39fc620060cbd9dd88dde09d.md) | 137 | `result-track:39fc620060cbd9dd88dde09dba0c62421803e10308044fbccdcf6cb5842e203b` |
| 24 | `theorem` | [reference_projection_coefficient](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HalfLineExponentialAudit/Variant2b43df3ade93cd20508e0907cd88c448544cd899cc53290288664b73736e6462.lean/declarations/reference-projection-coefficient--0c3f6bd8dff6896c4b174b00.md) | 145 | `result-track:0c3f6bd8dff6896c4b174b00d00e715172e596e36032f2d022d5b02334411381` |
| 25 | `theorem` | [one_add_ne_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HalfLineExponentialAudit/Variant2b43df3ade93cd20508e0907cd88c448544cd899cc53290288664b73736e6462.lean/declarations/one-add-ne-zero--560f9ae8782f6e17f2081c53.md) | 152 | `result-track:560f9ae8782f6e17f2081c53917e82847a1d6488a911d25f44ba5ffe12a16395` |
| 26 | `theorem` | [reference_projection_coefficient_pos](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HalfLineExponentialAudit/Variant2b43df3ade93cd20508e0907cd88c448544cd899cc53290288664b73736e6462.lean/declarations/reference-projection-coefficient-pos--c53469cdd8453109859ef368.md) | 158 | `result-track:c53469cdd8453109859ef368d099d9bae0f7cb0d002f489184f9247571a215ff` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
