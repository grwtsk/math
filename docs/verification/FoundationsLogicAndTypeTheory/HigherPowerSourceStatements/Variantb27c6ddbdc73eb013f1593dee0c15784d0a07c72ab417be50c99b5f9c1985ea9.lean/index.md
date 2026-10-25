# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.HigherPowerSourceStatements.Variantb27c6ddbdc73eb013f1593dee0c15784d0a07c72ab417be50c99b5f9c1985ea9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a9e524d601fbb23a95bbe8a8d0d0868098c0e928",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/HigherPowerSourceStatements/Variantb27c6ddbdc73eb013f1593dee0c15784d0a07c72ab417be50c99b5f9c1985ea9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/FoundationsLogicAndTypeTheory/HigherPowerSourceStatements/Variantb27c6ddbdc73eb013f1593dee0c15784d0a07c72ab417be50c99b5f9c1985ea9.lean/index.md) · [Full source](../../../../mathematics/FoundationsLogicAndTypeTheory/HigherPowerSourceStatements/Variantb27c6ddbdc73eb013f1593dee0c15784d0a07c72ab417be50c99b5f9c1985ea9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a9e524d601fbb23a95bbe8a8d0d0868098c0e928`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/HigherPowerSourceStatements/Variantb27c6ddbdc73eb013f1593dee0c15784d0a07c72ab417be50c99b5f9c1985ea9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/HigherPowerSourceStatements/Variantb27c6ddbdc73eb013f1593dee0c15784d0a07c72ab417be50c99b5f9c1985ea9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceComparison.ProperPrimePowers` — import line 1; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceComparison.PrimeSquareSource` — import line 2; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceComparison.PrimeSector` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Prime.Int` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsHigherPrimePower](../../../../mathematics/FoundationsLogicAndTypeTheory/HigherPowerSourceStatements/Variantb27c6ddbdc73eb013f1593dee0c15784d0a07c72ab417be50c99b5f9c1985ea9.lean/declarations/ishigherprimepower--032871cfc641a28af41abe7c.md) | 16 | `declaration-track:032871cfc641a28af41abe7c13a8bb5d66543596d613e78ac7f9d0bebe90c0a5` |
| 2 | `def` | [higherPrimePowerIndices](../../../../mathematics/FoundationsLogicAndTypeTheory/HigherPowerSourceStatements/Variantb27c6ddbdc73eb013f1593dee0c15784d0a07c72ab417be50c99b5f9c1985ea9.lean/declarations/higherprimepowerindices--b45fc1f1543c6b8230be4b9e.md) | 19 | `declaration-track:b45fc1f1543c6b8230be4b9e1dc566cd6f696f1e30ae7aef975bea4e7f80ea54` |
| 3 | `def` | [higherPrimePowerContribution](../../../../mathematics/FoundationsLogicAndTypeTheory/HigherPowerSourceStatements/Variantb27c6ddbdc73eb013f1593dee0c15784d0a07c72ab417be50c99b5f9c1985ea9.lean/declarations/higherprimepowercontribution--a95c618d771a4e178a2aa98a.md) | 24 | `declaration-track:a95c618d771a4e178a2aa98aa19c5a8338a479673afbb300eb6145f3321311d7` |
| 4 | `theorem` | [prime_power_representation_unique](../../../../mathematics/FoundationsLogicAndTypeTheory/HigherPowerSourceStatements/Variantb27c6ddbdc73eb013f1593dee0c15784d0a07c72ab417be50c99b5f9c1985ea9.lean/declarations/prime-power-representation-unique--1934856755b7da3556096c7e.md) | 30 | `result-track:1934856755b7da3556096c7e76579540b019eaf71126ba95623dab6b4c775797` |
| 5 | `theorem` | [primeSquare_not_higher](../../../../mathematics/FoundationsLogicAndTypeTheory/HigherPowerSourceStatements/Variantb27c6ddbdc73eb013f1593dee0c15784d0a07c72ab417be50c99b5f9c1985ea9.lean/declarations/primesquare-not-higher--00cd8fe7212a9eab7c179486.md) | 36 | `result-track:00cd8fe7212a9eab7c17948624735f93647970b887db78027a4dd7197704d194` |
| 6 | `theorem` | [primeSquare_not_prime](../../../../mathematics/FoundationsLogicAndTypeTheory/HigherPowerSourceStatements/Variantb27c6ddbdc73eb013f1593dee0c15784d0a07c72ab417be50c99b5f9c1985ea9.lean/declarations/primesquare-not-prime--9d015dff8ec548f4de5175c8.md) | 44 | `result-track:9d015dff8ec548f4de5175c8f67406cf6a90d368364fae49a17fd42af7b6f5a5` |
| 7 | `theorem` | [higher_not_prime](../../../../mathematics/FoundationsLogicAndTypeTheory/HigherPowerSourceStatements/Variantb27c6ddbdc73eb013f1593dee0c15784d0a07c72ab417be50c99b5f9c1985ea9.lean/declarations/higher-not-prime--ff0cb3f3e7744d8c6d6663a3.md) | 49 | `result-track:ff0cb3f3e7744d8c6d6663a377c6c5e88947d924a156346889b27c0ab6dca9ef` |
| 8 | `theorem` | [nonprime_primePower_iff](../../../../mathematics/FoundationsLogicAndTypeTheory/HigherPowerSourceStatements/Variantb27c6ddbdc73eb013f1593dee0c15784d0a07c72ab417be50c99b5f9c1985ea9.lean/declarations/nonprime-primepower-iff--a21e80cd8bdb22c13053c12a.md) | 54 | `result-track:a21e80cd8bdb22c13053c12a0e42b197092591e7115c31e55a18b193705e34f8` |
| 9 | `theorem` | [nonprime_weight_zero_of_outside](../../../../mathematics/FoundationsLogicAndTypeTheory/HigherPowerSourceStatements/Variantb27c6ddbdc73eb013f1593dee0c15784d0a07c72ab417be50c99b5f9c1985ea9.lean/declarations/nonprime-weight-zero-of-outside--fe85034dfdcf274f67e29849.md) | 74 | `result-track:fe85034dfdcf274f67e298498087ee92c3a5ddc1ae1bc09e5f248d63031f5287` |
| 10 | `theorem` | [primeSquare_higher_indices_disjoint](../../../../mathematics/FoundationsLogicAndTypeTheory/HigherPowerSourceStatements/Variantb27c6ddbdc73eb013f1593dee0c15784d0a07c72ab417be50c99b5f9c1985ea9.lean/declarations/primesquare-higher-indices-disjoint--f0addd398dec68121afdcd30.md) | 82 | `result-track:f0addd398dec68121afdcd3075b45a80e6e4500c6d25e8d9dc030a0068c40e7c` |
| 11 | `theorem` | [properPrimePowerContribution_eq_square_add_higher](../../../../mathematics/FoundationsLogicAndTypeTheory/HigherPowerSourceStatements/Variantb27c6ddbdc73eb013f1593dee0c15784d0a07c72ab417be50c99b5f9c1985ea9.lean/declarations/properprimepowercontribution-eq-square-add-higher--3d7a4b64ae18deaada03b75e.md) | 90 | `result-track:3d7a4b64ae18deaada03b75e0533ec2cbeca280d359087714e16f8a17761618a` |
| 12 | `theorem` | [primePowerContribution_eq_prime_square_higher](../../../../mathematics/FoundationsLogicAndTypeTheory/HigherPowerSourceStatements/Variantb27c6ddbdc73eb013f1593dee0c15784d0a07c72ab417be50c99b5f9c1985ea9.lean/declarations/primepowercontribution-eq-prime-square-higher--1e14df969c7a4a452acf1e29.md) | 111 | `result-track:1e14df969c7a4a452acf1e2902bdb7fdcc46a1ee4ff62b416b557b0cc6dba159` |
| 13 | `theorem` | [eight_higher_not_square](../../../../mathematics/FoundationsLogicAndTypeTheory/HigherPowerSourceStatements/Variantb27c6ddbdc73eb013f1593dee0c15784d0a07c72ab417be50c99b5f9c1985ea9.lean/declarations/eight-higher-not-square--39e1d64d078c31fc483a3177.md) | 119 | `result-track:39e1d64d078c31fc483a31773f8b09fa32b7cec60af2e6ec73f56fe42bc7a839` |
| 14 | `theorem` | [eight_mem_higherPrimePowerIndices_iff](../../../../mathematics/FoundationsLogicAndTypeTheory/HigherPowerSourceStatements/Variantb27c6ddbdc73eb013f1593dee0c15784d0a07c72ab417be50c99b5f9c1985ea9.lean/declarations/eight-mem-higherprimepowerindices-iff--838c7fdc18fd7181526c52f4.md) | 124 | `result-track:838c7fdc18fd7181526c52f4e7842f7a2336e24086370475d56d00d19b41df49` |
| 15 | `example` | [(anonymous)](../../../../mathematics/FoundationsLogicAndTypeTheory/HigherPowerSourceStatements/Variantb27c6ddbdc73eb013f1593dee0c15784d0a07c72ab417be50c99b5f9c1985ea9.lean/declarations/example--5cc4ada546177ddb7ffe3de5.md) | 145 | `declaration-track:5cc4ada546177ddb7ffe3de5e5ab12701f7f0b80116ebcdab987838767affae5` |
| 16 | `example` | [(anonymous)](../../../../mathematics/FoundationsLogicAndTypeTheory/HigherPowerSourceStatements/Variantb27c6ddbdc73eb013f1593dee0c15784d0a07c72ab417be50c99b5f9c1985ea9.lean/declarations/example--7801cd794c66c2152c02edca.md) | 147 | `declaration-track:7801cd794c66c2152c02edca5515b314c0b0ae99a421b778c5e961d55b088471` |
| 17 | `example` | [(anonymous)](../../../../mathematics/FoundationsLogicAndTypeTheory/HigherPowerSourceStatements/Variantb27c6ddbdc73eb013f1593dee0c15784d0a07c72ab417be50c99b5f9c1985ea9.lean/declarations/example--cb6f4d9e57f5fd59ab70aad6.md) | 150 | `declaration-track:cb6f4d9e57f5fd59ab70aad6849a3e9597a907775b064e041a5baafe25c09463` |
| 18 | `example` | [(anonymous)](../../../../mathematics/FoundationsLogicAndTypeTheory/HigherPowerSourceStatements/Variantb27c6ddbdc73eb013f1593dee0c15784d0a07c72ab417be50c99b5f9c1985ea9.lean/declarations/example--fe378908c0d8ca2068960c61.md) | 155 | `declaration-track:fe378908c0d8ca2068960c6193010e11ad0e0cced8d829bc479f741aba588d62` |
| 19 | `example` | [(anonymous)](../../../../mathematics/FoundationsLogicAndTypeTheory/HigherPowerSourceStatements/Variantb27c6ddbdc73eb013f1593dee0c15784d0a07c72ab417be50c99b5f9c1985ea9.lean/declarations/example--12106264bd631b640357b950.md) | 160 | `declaration-track:12106264bd631b640357b9505b6aabedd438b8412295aac2c075de39043e56c3` |
| 20 | `example` | [(anonymous)](../../../../mathematics/FoundationsLogicAndTypeTheory/HigherPowerSourceStatements/Variantb27c6ddbdc73eb013f1593dee0c15784d0a07c72ab417be50c99b5f9c1985ea9.lean/declarations/example--8dd9df694cb14d6cba6295ae.md) | 163 | `declaration-track:8dd9df694cb14d6cba6295ae8452fad3d707a6cb9a0822a8937f9f5b00ad1ca0` |
| 21 | `example` | [(anonymous)](../../../../mathematics/FoundationsLogicAndTypeTheory/HigherPowerSourceStatements/Variantb27c6ddbdc73eb013f1593dee0c15784d0a07c72ab417be50c99b5f9c1985ea9.lean/declarations/example--698895866a92970b4f3d83ef.md) | 166 | `declaration-track:698895866a92970b4f3d83efca75e87f27248e1966a31d16ac509bf6f2b8e896` |
| 22 | `example` | [(anonymous)](../../../../mathematics/FoundationsLogicAndTypeTheory/HigherPowerSourceStatements/Variantb27c6ddbdc73eb013f1593dee0c15784d0a07c72ab417be50c99b5f9c1985ea9.lean/declarations/example--2518f424a214a336f15b64f6.md) | 169 | `declaration-track:2518f424a214a336f15b64f68ec307834628e97c9f2563aaddada59ab42276d7` |
| 23 | `example` | [(anonymous)](../../../../mathematics/FoundationsLogicAndTypeTheory/HigherPowerSourceStatements/Variantb27c6ddbdc73eb013f1593dee0c15784d0a07c72ab417be50c99b5f9c1985ea9.lean/declarations/example--d1164ad9db3de5d01850d231.md) | 173 | `declaration-track:d1164ad9db3de5d01850d231e1df052cac42e7c455cddec82ce3ccb2cfa4ef89` |
| 24 | `example` | [(anonymous)](../../../../mathematics/FoundationsLogicAndTypeTheory/HigherPowerSourceStatements/Variantb27c6ddbdc73eb013f1593dee0c15784d0a07c72ab417be50c99b5f9c1985ea9.lean/declarations/example--a64f52e2f8779fc12742fc20.md) | 178 | `declaration-track:a64f52e2f8779fc12742fc20f9a840d3f7b4912dce0fad8dd64c62fcaf355bf3` |
| 25 | `example` | [(anonymous)](../../../../mathematics/FoundationsLogicAndTypeTheory/HigherPowerSourceStatements/Variantb27c6ddbdc73eb013f1593dee0c15784d0a07c72ab417be50c99b5f9c1985ea9.lean/declarations/example--9cb8fb1d295e62f01d94d581.md) | 182 | `declaration-track:9cb8fb1d295e62f01d94d5813c79450c3622d36cdbc914833f1d450060a66ac7` |
| 26 | `example` | [(anonymous)](../../../../mathematics/FoundationsLogicAndTypeTheory/HigherPowerSourceStatements/Variantb27c6ddbdc73eb013f1593dee0c15784d0a07c72ab417be50c99b5f9c1985ea9.lean/declarations/example--61ebc81423b93d421380e312.md) | 186 | `declaration-track:61ebc81423b93d421380e312fb48ce4a36db8accb55f76aa77314656c9eec3a4` |
| 27 | `example` | [(anonymous)](../../../../mathematics/FoundationsLogicAndTypeTheory/HigherPowerSourceStatements/Variantb27c6ddbdc73eb013f1593dee0c15784d0a07c72ab417be50c99b5f9c1985ea9.lean/declarations/example--d069c395b2575a8785f7fb55.md) | 191 | `declaration-track:d069c395b2575a8785f7fb5536a48a65bdcd59eb3c2edbbc898b082b4ec395dc` |
| 28 | `example` | [(anonymous)](../../../../mathematics/FoundationsLogicAndTypeTheory/HigherPowerSourceStatements/Variantb27c6ddbdc73eb013f1593dee0c15784d0a07c72ab417be50c99b5f9c1985ea9.lean/declarations/example--69031fbc29f12ed09a3f247b.md) | 194 | `declaration-track:69031fbc29f12ed09a3f247b379a702a676000160c3e8de9087fa4f493279a1a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
