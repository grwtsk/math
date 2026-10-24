# Verification target: GRWTSK.NumberTheory.ArithmeticFunctions.LiouvilleOddLiftDyadicRecurrence

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a57b6376f4fcecb6c4ae962ff47d885eda17ec38",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ArithmeticFunctions/LiouvilleOddLiftDyadicRecurrence.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/LiouvilleOddLiftDyadicRecurrence.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/LiouvilleOddLiftDyadicRecurrence.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a57b6376f4fcecb6c4ae962ff47d885eda17ec38`.

Source path: `GRWTSK/NumberTheory/ArithmeticFunctions/LiouvilleOddLiftDyadicRecurrence.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ArithmeticFunctions/LiouvilleOddLiftDyadicRecurrence.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.ArithmeticFunctions.LiouvilleWalshSourceBridge`](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/LiouvilleWalshSourceBridge.lean/index.md) — import line 5; pinned internal source present.
- `Mathlib.Tactic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [ordinaryProductTerm](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/LiouvilleOddLiftDyadicRecurrence.lean/declarations/ordinaryproductterm--d324fcb5d5659eb8a6cabf68.md) | 45 | `declaration-track:d324fcb5d5659eb8a6cabf6880c336bb6171c09a24fb8383fa86d087d2643626` |
| 2 | `def` | [oddLiftedProductTerm](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/LiouvilleOddLiftDyadicRecurrence.lean/declarations/oddliftedproductterm--0c8250f9378166cece5a8264.md) | 52 | `declaration-track:0c8250f9378166cece5a826454ffc3f0e1a5570392178fb3a53acbbeea936224` |
| 3 | `def` | [oddResidualProductTerm](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/LiouvilleOddLiftDyadicRecurrence.lean/declarations/oddresidualproductterm--fdbb0772c5ad065869e0e534.md) | 59 | `declaration-track:fdbb0772c5ad065869e0e534f298e5f92de73f1c4a5043b0031e2f87c7f020fe` |
| 4 | `theorem` | [oddLiftedProduct_evenRoot](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/LiouvilleOddLiftDyadicRecurrence.lean/declarations/oddliftedproduct-evenroot--cd932af0c214334d6bd1e839.md) | 65 | `result-track:cd932af0c214334d6bd1e83909a5cdb9a566d28861042491b13525ba1c6a705b` |
| 5 | `theorem` | [oddLiftedProduct_oddRoot](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/LiouvilleOddLiftDyadicRecurrence.lean/declarations/oddliftedproduct-oddroot--11f8b669d8420b6f2c0ba391.md) | 90 | `result-track:11f8b669d8420b6f2c0ba3915c463f063c4f838c032beed4105b886c8fb65761` |
| 6 | `theorem` | [rational_evenOdd_sum](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/LiouvilleOddLiftDyadicRecurrence.lean/declarations/rational-evenodd-sum--c46e7be6295ec706b72268d6.md) | 104 | `result-track:c46e7be6295ec706b72268d68e7b13a28de9ca5128eb5aaef8628f6bff49a586` |
| 7 | `theorem` | [oddLifted_sum_split](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/LiouvilleOddLiftDyadicRecurrence.lean/declarations/oddlifted-sum-split--9318f3ce3d1e75ec3db58ae8.md) | 129 | `result-track:9318f3ce3d1e75ec3db58ae856dd9e355da53e1571a1a6f6d8b527b7153a22f4` |
| 8 | `def` | [oddLiftedMean](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/LiouvilleOddLiftDyadicRecurrence.lean/declarations/oddliftedmean--577e07a501ffa284ca4ff682.md) | 149 | `declaration-track:577e07a501ffa284ca4ff682cc43bce3681bcca60865156fff0ecb1f2d929907` |
| 9 | `def` | [oddResidualMean](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/LiouvilleOddLiftDyadicRecurrence.lean/declarations/oddresidualmean--f534ca93ea595f9ea14dfb5f.md) | 155 | `declaration-track:f534ca93ea595f9ea14dfb5f104eb435de5da30492271a12977fc6626af96caa` |
| 10 | `theorem` | [oddLiftedMean_half_source_plus_residual](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/LiouvilleOddLiftDyadicRecurrence.lean/declarations/oddliftedmean-half-source-plus-residual--65fcee697b98589286122916.md) | 162 | `result-track:65fcee697b98589286122916e730aeaa81c26d6454bc0ded715c64fe71717702` |
| 11 | `theorem` | [oddLiftedMean_abs_le_source_add_residual](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/LiouvilleOddLiftDyadicRecurrence.lean/declarations/oddliftedmean-abs-le-source-add-residual--51e38d61c4efd55e177a743e.md) | 182 | `result-track:51e38d61c4efd55e177a743ea3d6fed1446b030782271af8beb819f9a5cc3cdd` |
| 12 | `def` | [OddResidualEnvelope](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/LiouvilleOddLiftDyadicRecurrence.lean/declarations/oddresidualenvelope--ed1fdec0ecf7bc2f283fddc2.md) | 203 | `declaration-track:ed1fdec0ecf7bc2f283fddc2360f39cdeae71e41f2806b92f65470dee5e16443` |
| 13 | `theorem` | [oddLiftedMean_le_of_two_suppliers](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/LiouvilleOddLiftDyadicRecurrence.lean/declarations/oddliftedmean-le-of-two-suppliers--09d56e45aafdda5d3dd0a68d.md) | 210 | `result-track:09d56e45aafdda5d3dd0a68ddc5fef2a259420aa773a707ffed3ac3b4ee43e83` |
| 14 | `def` | [oddLiftedAllOrderEnergy](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/LiouvilleOddLiftDyadicRecurrence.lean/declarations/oddliftedallorderenergy--942357cf86bd8edabc8c1cf4.md) | 224 | `declaration-track:942357cf86bd8edabc8c1cf416d1be0d14a9faa1a007bded247e6c3ba29f5e9b` |
| 15 | `def` | [oddResidualAllOrderEnergy](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/LiouvilleOddLiftDyadicRecurrence.lean/declarations/oddresidualallorderenergy--0f46da0521084da9ff981744.md) | 230 | `declaration-track:0f46da0521084da9ff98174439a49a931857e627bd957fa648f25c4008509d5c` |
| 16 | `theorem` | [oddLiftedMean_sq_le_source_residual_average](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/LiouvilleOddLiftDyadicRecurrence.lean/declarations/oddliftedmean-sq-le-source-residual-average--14f290c802942a5ba624c751.md) | 237 | `result-track:14f290c802942a5ba624c7511a3794e74af6daa6d7bdc1deb4ed9bf88a209dfc` |
| 17 | `theorem` | [oddLiftedAllOrderEnergy_le_source_add_residual](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/LiouvilleOddLiftDyadicRecurrence.lean/declarations/oddliftedallorderenergy-le-source-add-residual--4a40834c4f546b8efe7a342d.md) | 263 | `result-track:4a40834c4f546b8efe7a342d0d716fafb6e0f0988a44e3f637af1053ad3ba89f` |
| 18 | `theorem` | [oddLiftedAllOrderEnergy_le_of_two_bounds](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/LiouvilleOddLiftDyadicRecurrence.lean/declarations/oddliftedallorderenergy-le-of-two-bounds--2bcb4feca7e27143953b9ee0.md) | 287 | `result-track:2bcb4feca7e27143953b9ee04219b903dc1ba50e5456660fdd00bfc18b6a484b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
