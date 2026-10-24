# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.EnumerativeCombinatorics.CombinatorialObjects.Permutations.SourceComponents.Variant94413fba6c557a4f.PositiveOrderCausalEquivalence

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6c1f3aeba8d25732796af4ff130cf2920e70f2d8",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/CombinatorialObjects/Permutations/SourceComponents/Variant94413fba6c557a4f/PositiveOrderCausalEquivalence.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/CombinatorialObjects/Permutations/SourceComponents/Variant94413fba6c557a4f/PositiveOrderCausalEquivalence.lean/index.md) · [Full source](../../../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/CombinatorialObjects/Permutations/SourceComponents/Variant94413fba6c557a4f/PositiveOrderCausalEquivalence.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6c1f3aeba8d25732796af4ff130cf2920e70f2d8`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/CombinatorialObjects/Permutations/SourceComponents/Variant94413fba6c557a4f/PositiveOrderCausalEquivalence.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/CombinatorialObjects/Permutations/SourceComponents/Variant94413fba6c557a4f/PositiveOrderCausalEquivalence.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `DAF.Causal.CausalState` — import line 19; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.OrderOfElement` — import line 20; external provider; requires a separately pinned dependency.
- [`GRWTSK.FoundationsLogicAndTypeTheory.TypeTheory.DependentTypeTheory.QuotientTypes.SourceComponents.Variant94413fba6c557a4f.BilateralQuotientPermutation`](../../../../../../../../mathematics/FoundationsLogicAndTypeTheory/TypeTheory/DependentTypeTheory/QuotientTypes/SourceComponents/Variant94413fba6c557a4f/BilateralQuotientPermutation.lean/index.md) — import line 21; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [forward_eq_bilateral_of_pow_eq_one](../../../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/CombinatorialObjects/Permutations/SourceComponents/Variant94413fba6c557a4f/PositiveOrderCausalEquivalence.lean/declarations/forward-eq-bilateral-of-pow-eq-one--c7f0af0a173d9a08dd76ee5e.md) | 49 | `result-track:c7f0af0a173d9a08dd76ee5efcb6a7c221ed21e8474bff734deb85540fccbc80` |
| 2 | `def` | [forwardCausalStateEquivBilateralOfPowEqOne](../../../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/CombinatorialObjects/Permutations/SourceComponents/Variant94413fba6c557a4f/PositiveOrderCausalEquivalence.lean/declarations/forwardcausalstateequivbilateralofpoweqone--d74fa62dd0d3d6af21af7eec.md) | 92 | `declaration-track:d74fa62dd0d3d6af21af7eeccbf774b5477e08350f93607d002dd991c18eaa69` |
| 3 | `theorem` | [forwardCausalStateEquivBilateralOfPowEqOne_mk](../../../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/CombinatorialObjects/Permutations/SourceComponents/Variant94413fba6c557a4f/PositiveOrderCausalEquivalence.lean/declarations/forwardcausalstateequivbilateralofpoweqone-mk--d05b883f21845f917103308b.md) | 123 | `result-track:d05b883f21845f917103308b6aff74b4f57eff011d8fa8fac068f46c37f1c93b` |
| 4 | `def` | [forwardStepPermOfPowEqOne](../../../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/CombinatorialObjects/Permutations/SourceComponents/Variant94413fba6c557a4f/PositiveOrderCausalEquivalence.lean/declarations/forwardsteppermofpoweqone--8a362533ad388b0f4f483fe4.md) | 139 | `declaration-track:8a362533ad388b0f4f483fe45c250045212ac816a32aae9327d0b9f74fa09cbc` |
| 5 | `theorem` | [forwardStepPermOfPowEqOne_mk](../../../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/CombinatorialObjects/Permutations/SourceComponents/Variant94413fba6c557a4f/PositiveOrderCausalEquivalence.lean/declarations/forwardsteppermofpoweqone-mk--fecc17798afc90c33826f3e1.md) | 150 | `result-track:fecc17798afc90c33826f3e1bef3cc28f2602400eae1bf8d3513baf3610fd684` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
