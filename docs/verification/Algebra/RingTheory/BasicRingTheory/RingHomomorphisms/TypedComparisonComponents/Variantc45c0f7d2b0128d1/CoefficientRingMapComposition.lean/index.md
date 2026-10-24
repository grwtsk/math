# Verification target: GRWTSK.Algebra.RingTheory.BasicRingTheory.RingHomomorphisms.TypedComparisonComponents.Variantc45c0f7d2b0128d1.CoefficientRingMapComposition

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "51e6ec57bb54ba73768ff7685f796901b519d2fe",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/RingTheory/BasicRingTheory/RingHomomorphisms/TypedComparisonComponents/Variantc45c0f7d2b0128d1/CoefficientRingMapComposition.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../mathematics/Algebra/RingTheory/BasicRingTheory/RingHomomorphisms/TypedComparisonComponents/Variantc45c0f7d2b0128d1/CoefficientRingMapComposition.lean/index.md) · [Full source](../../../../../../../../mathematics/Algebra/RingTheory/BasicRingTheory/RingHomomorphisms/TypedComparisonComponents/Variantc45c0f7d2b0128d1/CoefficientRingMapComposition.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `51e6ec57bb54ba73768ff7685f796901b519d2fe`.

Source path: `GRWTSK/Algebra/RingTheory/BasicRingTheory/RingHomomorphisms/TypedComparisonComponents/Variantc45c0f7d2b0128d1/CoefficientRingMapComposition.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/RingTheory/BasicRingTheory/RingHomomorphisms/TypedComparisonComponents/Variantc45c0f7d2b0128d1/CoefficientRingMapComposition.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `DAF.Comparison.Core` — import line 21; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Localization.Basic` — import line 22; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.ULift` — import line 23; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Rat.Defs` — import line 24; external provider; requires a separately pinned dependency.
- `Mathlib.Data.ZMod.Basic` — import line 25; external provider; requires a separately pinned dependency.
- [`GRWTSK.Algebra.RingTheory.BasicRingTheory.TypedComparisonComponents.Variantc45c0f7d2b0128d1.CommutativeCoefficientCarriers`](../../../../../../../../mathematics/Algebra/RingTheory/BasicRingTheory/TypedComparisonComponents/Variantc45c0f7d2b0128d1/CommutativeCoefficientCarriers.lean/index.md) — import line 26; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [CoefficientChange](../../../../../../../../mathematics/Algebra/RingTheory/BasicRingTheory/RingHomomorphisms/TypedComparisonComponents/Variantc45c0f7d2b0128d1/CoefficientRingMapComposition.lean/declarations/coefficientchange--1980b0a9f0df52c62d0d22b9.md) | 53 | `declaration-track:1980b0a9f0df52c62d0d22b9ea8160cbf3c66f07de2604e426a4fa71ec7cab54` |
| 2 | `def` | [id](../../../../../../../../mathematics/Algebra/RingTheory/BasicRingTheory/RingHomomorphisms/TypedComparisonComponents/Variantc45c0f7d2b0128d1/CoefficientRingMapComposition.lean/declarations/id--055a88838f31684c7bb511ff.md) | 60 | `declaration-track:055a88838f31684c7bb511ff7c03031b218faa1d038099ecbc0ee94d34527801` |
| 3 | `def` | [comp](../../../../../../../../mathematics/Algebra/RingTheory/BasicRingTheory/RingHomomorphisms/TypedComparisonComponents/Variantc45c0f7d2b0128d1/CoefficientRingMapComposition.lean/declarations/comp--3071379113da7c2139c1c9d3.md) | 64 | `declaration-track:3071379113da7c2139c1c9d3cd5503895ddf4b27b0cbe39161daa3e304c9c7c1` |
| 4 | `theorem` | [id_apply](../../../../../../../../mathematics/Algebra/RingTheory/BasicRingTheory/RingHomomorphisms/TypedComparisonComponents/Variantc45c0f7d2b0128d1/CoefficientRingMapComposition.lean/declarations/id-apply--574db4c79d83213b9a560d42.md) | 73 | `result-track:574db4c79d83213b9a560d426d57145589c2adb4f304c9c9b5a24a651ed423f7` |
| 5 | `theorem` | [comp_apply](../../../../../../../../mathematics/Algebra/RingTheory/BasicRingTheory/RingHomomorphisms/TypedComparisonComponents/Variantc45c0f7d2b0128d1/CoefficientRingMapComposition.lean/declarations/comp-apply--b1ca3c0d2b360cec79dc3a62.md) | 78 | `result-track:b1ca3c0d2b360cec79dc3a62950962f744f2382991c4e6b2b284af4f021d4386` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
