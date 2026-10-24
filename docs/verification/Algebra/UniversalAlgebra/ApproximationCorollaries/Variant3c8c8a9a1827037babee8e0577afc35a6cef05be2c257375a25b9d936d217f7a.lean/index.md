# Verification target: GRWTSK.Algebra.UniversalAlgebra.ApproximationCorollaries.Variant3c8c8a9a1827037babee8e0577afc35a6cef05be2c257375a25b9d936d217f7a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "28f60ca4867ff79f8b0ddce7aa6d6e57dbbb730a",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/ApproximationCorollaries/Variant3c8c8a9a1827037babee8e0577afc35a6cef05be2c257375a25b9d936d217f7a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/ApproximationCorollaries/Variant3c8c8a9a1827037babee8e0577afc35a6cef05be2c257375a25b9d936d217f7a.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/ApproximationCorollaries/Variant3c8c8a9a1827037babee8e0577afc35a6cef05be2c257375a25b9d936d217f7a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `28f60ca4867ff79f8b0ddce7aa6d6e57dbbb730a`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/ApproximationCorollaries/Variant3c8c8a9a1827037babee8e0577afc35a6cef05be2c257375a25b9d936d217f7a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/ApproximationCorollaries/Variant3c8c8a9a1827037babee8e0577afc35a6cef05be2c257375a25b9d936d217f7a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.ContinuedFractions.Computation.Approximations` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.ContinuedFractions.ConvergentsEquiv` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Archimedean` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Algebra.Basic` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Order.Basic` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [GeneralizedContinuedFraction.of_isSimpleContinuedFraction](../../../../../mathematics/Algebra/UniversalAlgebra/ApproximationCorollaries/Variant3c8c8a9a1827037babee8e0577afc35a6cef05be2c257375a25b9d936d217f7a.lean/declarations/generalizedcontinuedfraction-of-issimplecontinuedfraction--4e0bdedc02b40667207f5106.md) | 51 | `result-track:4e0bdedc02b40667207f51066b2a0a1ba31f2168f7c02ce35678ad074daca2b9` |
| 2 | `def` | [SimpleContinuedFraction.of](../../../../../mathematics/Algebra/UniversalAlgebra/ApproximationCorollaries/Variant3c8c8a9a1827037babee8e0577afc35a6cef05be2c257375a25b9d936d217f7a.lean/declarations/simplecontinuedfraction-of--2cea2d16c8a54ea4ed13455a.md) | 57 | `declaration-track:2cea2d16c8a54ea4ed13455a334085758dcd4359b3f7c835ecba4590c438fb29` |
| 3 | `theorem` | [SimpleContinuedFraction.of_isContinuedFraction](../../../../../mathematics/Algebra/UniversalAlgebra/ApproximationCorollaries/Variant3c8c8a9a1827037babee8e0577afc35a6cef05be2c257375a25b9d936d217f7a.lean/declarations/simplecontinuedfraction-of-iscontinuedfraction--d5bd42ecb5e445ff2e88603b.md) | 61 | `result-track:d5bd42ecb5e445ff2e88603bcc17a0902f9678499ed6dc3185a3d72d4b886539` |
| 4 | `def` | [ContinuedFraction.of](../../../../../mathematics/Algebra/UniversalAlgebra/ApproximationCorollaries/Variant3c8c8a9a1827037babee8e0577afc35a6cef05be2c257375a25b9d936d217f7a.lean/declarations/continuedfraction-of--fb71ddeadbbdc56785f511e3.md) | 67 | `declaration-track:fb71ddeadbbdc56785f511e3af7743ce3af8fbf465f4c744b16a7b8e98b25d4f` |
| 5 | `theorem` | [of_convergents_eq_convergents'](../../../../../mathematics/Algebra/UniversalAlgebra/ApproximationCorollaries/Variant3c8c8a9a1827037babee8e0577afc35a6cef05be2c257375a25b9d936d217f7a.lean/declarations/of-convergents-eq-convergents--12586952981aa24d8c0734f4.md) | 73 | `result-track:12586952981aa24d8c0734f458cea40b80e312183a899fdb63dab83cc6139cd3` |
| 6 | `theorem` | [convergents_succ](../../../../../mathematics/Algebra/UniversalAlgebra/ApproximationCorollaries/Variant3c8c8a9a1827037babee8e0577afc35a6cef05be2c257375a25b9d936d217f7a.lean/declarations/convergents-succ--549894ee3967a85a20815fa9.md) | 80 | `result-track:549894ee3967a85a20815fa91da8757ff30b7c528ed48453de97d6d7ee1839aa` |
| 7 | `theorem` | [of_convergence_epsilon](../../../../../mathematics/Algebra/UniversalAlgebra/ApproximationCorollaries/Variant3c8c8a9a1827037babee8e0577afc35a6cef05be2c257375a25b9d936d217f7a.lean/declarations/of-convergence-epsilon--a16b1f6288f4c2abd4767657.md) | 98 | `result-track:a16b1f6288f4c2abd476765729233e7076fa39bb8b9c6db8d41de38df314a38e` |
| 8 | `theorem` | [of_convergence](../../../../../mathematics/Algebra/UniversalAlgebra/ApproximationCorollaries/Variant3c8c8a9a1827037babee8e0577afc35a6cef05be2c257375a25b9d936d217f7a.lean/declarations/of-convergence--d74c5d8bdf38116d31f2589f.md) | 159 | `result-track:d74c5d8bdf38116d31f2589f376ea9053db2f4fa692038afcda5a2972cd8f4a9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
