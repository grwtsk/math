# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.WeightedHaarCoordinates.Variant17eaa1a1a4b764e157dad1833091f77732f8d93d2e1b9ad528f7a2ec78c2d190

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6d12587b1dbc7372a970ce58322810a1995a50f9",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/WeightedHaarCoordinates/Variant17eaa1a1a4b764e157dad1833091f77732f8d93d2e1b9ad528f7a2ec78c2d190.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/WeightedHaarCoordinates/Variant17eaa1a1a4b764e157dad1833091f77732f8d93d2e1b9ad528f7a2ec78c2d190.lean/index.md) · [Full source](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/WeightedHaarCoordinates/Variant17eaa1a1a4b764e157dad1833091f77732f8d93d2e1b9ad528f7a2ec78c2d190.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6d12587b1dbc7372a970ce58322810a1995a50f9`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/WeightedHaarCoordinates/Variant17eaa1a1a4b764e157dad1833091f77732f8d93d2e1b9ad528f7a2ec78c2d190.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/WeightedHaarCoordinates/Variant17eaa1a1a4b764e157dad1833091f77732f8d93d2e1b9ad528f7a2ec78c2d190.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.Conversation.RefinementTree` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [rootCoefficient](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/WeightedHaarCoordinates/Variant17eaa1a1a4b764e157dad1833091f77732f8d93d2e1b9ad528f7a2ec78c2d190.lean/declarations/rootcoefficient--4db69a2b7d8eefc9279563fa.md) | 26 | `declaration-track:4db69a2b7d8eefc9279563fa925a66e120db3d6889edb93730a6717fc1f6f261` |
| 2 | `def` | [splitCoefficient](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/WeightedHaarCoordinates/Variant17eaa1a1a4b764e157dad1833091f77732f8d93d2e1b9ad528f7a2ec78c2d190.lean/declarations/splitcoefficient--d434c60b988194bfe1523734.md) | 28 | `declaration-track:d434c60b988194bfe15237348814d20fb3ddeb33031140fe066e451d4a8f37b0` |
| 3 | `def` | [detailCoefficients](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/WeightedHaarCoordinates/Variant17eaa1a1a4b764e157dad1833091f77732f8d93d2e1b9ad528f7a2ec78c2d190.lean/declarations/detailcoefficients--58952e04511fc1ba7301d89f.md) | 32 | `declaration-track:58952e04511fc1ba7301d89fe4e8e95e526d21c92ceac6f568da617a6b262de5` |
| 4 | `def` | [coefficients](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/WeightedHaarCoordinates/Variant17eaa1a1a4b764e157dad1833091f77732f8d93d2e1b9ad528f7a2ec78c2d190.lean/declarations/coefficients--833a542b0272b811248187a4.md) | 36 | `declaration-track:833a542b0272b811248187a4c9a1a7d0260d7dbde351572d3caee4de2ef2b69b` |
| 5 | `def` | [squaredMass](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/WeightedHaarCoordinates/Variant17eaa1a1a4b764e157dad1833091f77732f8d93d2e1b9ad528f7a2ec78c2d190.lean/declarations/squaredmass--d220c34b44af3fc53e9e14e9.md) | 38 | `declaration-track:d220c34b44af3fc53e9e14e9dcc0ba18afeb976f3fb47e91e95856c78190bd7e` |
| 6 | `theorem` | [root_coefficient_square](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/WeightedHaarCoordinates/Variant17eaa1a1a4b764e157dad1833091f77732f8d93d2e1b9ad528f7a2ec78c2d190.lean/declarations/root-coefficient-square--05794db3ee773d1b22551d63.md) | 40 | `result-track:05794db3ee773d1b22551d63e830b15bb40c04653823821864983f56849f86a4` |
| 7 | `theorem` | [split_coefficient_square](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/WeightedHaarCoordinates/Variant17eaa1a1a4b764e157dad1833091f77732f8d93d2e1b9ad528f7a2ec78c2d190.lean/declarations/split-coefficient-square--106d4148360efe697d57a97d.md) | 44 | `result-track:106d4148360efe697d57a97d6b595de0d51a7d7e9206bb7f0b8401c32cb6e4a6` |
| 8 | `theorem` | [detail_squared_mass](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/WeightedHaarCoordinates/Variant17eaa1a1a4b764e157dad1833091f77732f8d93d2e1b9ad528f7a2ec78c2d190.lean/declarations/detail-squared-mass--218f3ab450f48e8087194f91.md) | 54 | `result-track:218f3ab450f48e8087194f91a9d7bd82207c737eb1c50e48747bbe3b9bc6f3e0` |
| 9 | `theorem` | [complete_coordinate_energy](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/WeightedHaarCoordinates/Variant17eaa1a1a4b764e157dad1833091f77732f8d93d2e1b9ad528f7a2ec78c2d190.lean/declarations/complete-coordinate-energy--e8dca5638997c3e49484d486.md) | 66 | `result-track:e8dca5638997c3e49484d486b188fa53e0c99f37115bfb75a70bc969549eccd6` |
| 10 | `def` | [firstWeight](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/WeightedHaarCoordinates/Variant17eaa1a1a4b764e157dad1833091f77732f8d93d2e1b9ad528f7a2ec78c2d190.lean/declarations/firstweight--44757c9dc1b8188d7ed08db8.md) | 72 | `declaration-track:44757c9dc1b8188d7ed08db8daa584a50ee64bb277ef91d3c722ac8c82365550` |
| 11 | `def` | [secondWeight](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/WeightedHaarCoordinates/Variant17eaa1a1a4b764e157dad1833091f77732f8d93d2e1b9ad528f7a2ec78c2d190.lean/declarations/secondweight--7397667b475dcb3cecfef1ba.md) | 73 | `declaration-track:7397667b475dcb3cecfef1ba7aa57cd948c6fd6fbf795b72f4b0440ab46f4d79` |
| 12 | `def` | [harmonicCoordinate](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/WeightedHaarCoordinates/Variant17eaa1a1a4b764e157dad1833091f77732f8d93d2e1b9ad528f7a2ec78c2d190.lean/declarations/harmoniccoordinate--da2fcfb85220fd5335aac577.md) | 74 | `declaration-track:da2fcfb85220fd5335aac577fb9ed71f87678fe66f9935c23d90de36c63e69df` |
| 13 | `def` | [detailCoordinate](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/WeightedHaarCoordinates/Variant17eaa1a1a4b764e157dad1833091f77732f8d93d2e1b9ad528f7a2ec78c2d190.lean/declarations/detailcoordinate--06d032998d25bc22f583905a.md) | 75 | `declaration-track:06d032998d25bc22f583905a7d23ee956d5b735fd8a870af25418a0311b4943d` |
| 14 | `theorem` | [positive_weights_are_unit](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/WeightedHaarCoordinates/Variant17eaa1a1a4b764e157dad1833091f77732f8d93d2e1b9ad528f7a2ec78c2d190.lean/declarations/positive-weights-are-unit--72572674d0b86d832cc2ec56.md) | 77 | `result-track:72572674d0b86d832cc2ec56e950843ac4ba952a43861fddd7e0c99e7f75827a` |
| 15 | `theorem` | [binary_coordinate_energy](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/WeightedHaarCoordinates/Variant17eaa1a1a4b764e157dad1833091f77732f8d93d2e1b9ad528f7a2ec78c2d190.lean/declarations/binary-coordinate-energy--b721514150eb3c99071ce074.md) | 83 | `result-track:b721514150eb3c99071ce074ed1403f32d7a1fc2b2c5d88e10a3b9a4ee9d4c30` |
| 16 | `theorem` | [binary_coordinate_pairing](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/WeightedHaarCoordinates/Variant17eaa1a1a4b764e157dad1833091f77732f8d93d2e1b9ad528f7a2ec78c2d190.lean/declarations/binary-coordinate-pairing--259c89c3caadee2e87acecb8.md) | 90 | `result-track:259c89c3caadee2e87acecb825d4a19b4d90a6a91e3023d8684150d738f0a4e5` |
| 17 | `theorem` | [binary_perfect_recovery](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/WeightedHaarCoordinates/Variant17eaa1a1a4b764e157dad1833091f77732f8d93d2e1b9ad528f7a2ec78c2d190.lean/declarations/binary-perfect-recovery--b9dfbe75cb4e7069c1b16e59.md) | 99 | `result-track:b9dfbe75cb4e7069c1b16e591c3f69f82ab4f07fe7eab47d22c68a0e7dddf1ff` |
| 18 | `theorem` | [complete_budget_controls_signed_root](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/WeightedHaarCoordinates/Variant17eaa1a1a4b764e157dad1833091f77732f8d93d2e1b9ad528f7a2ec78c2d190.lean/declarations/complete-budget-controls-signed-root--4bea4c3c1786ba4c7120fa7f.md) | 112 | `result-track:4bea4c3c1786ba4c7120fa7f98d4de8a9764abfc9b424163a195ba8099f71b15` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
