# Verification target: GRWTSK.Analysis.SpecialFunctions.Geometry.Variant8b1a31855f813415353bb251d43c1c1fd2b6d10decb1468b967f86a80f4a59b6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e16fb87fa61e790b8dc29b84a5051a1858bea006",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/SpecialFunctions/Geometry/Variant8b1a31855f813415353bb251d43c1c1fd2b6d10decb1468b967f86a80f4a59b6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/SpecialFunctions/Geometry/Variant8b1a31855f813415353bb251d43c1c1fd2b6d10decb1468b967f86a80f4a59b6.lean/index.md) · [Full source](../../../../../mathematics/Analysis/SpecialFunctions/Geometry/Variant8b1a31855f813415353bb251d43c1c1fd2b6d10decb1468b967f86a80f4a59b6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e16fb87fa61e790b8dc29b84a5051a1858bea006`.

Source path: `GRWTSK/Analysis/SpecialFunctions/Geometry/Variant8b1a31855f813415353bb251d43c1c1fd2b6d10decb1468b967f86a80f4a59b6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/SpecialFunctions/Geometry/Variant8b1a31855f813415353bb251d43c1c1fd2b6d10decb1468b967f86a80f4a59b6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.AbelReynolds.Symmetry` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Action.Basic` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Exp` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Log.Basic` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [ReciprocalScaleExponent](../../../../../mathematics/Analysis/SpecialFunctions/Geometry/Variant8b1a31855f813415353bb251d43c1c1fd2b6d10decb1468b967f86a80f4a59b6.lean/declarations/reciprocalscaleexponent--77d14b57b7fbf56767d88326.md) | 16 | `declaration-track:77d14b57b7fbf56767d883268bbaf19e71a5708147c4eba0b2e4680b476f304b` |
| 2 | `structure` | [PerspectiveExponent](../../../../../mathematics/Analysis/SpecialFunctions/Geometry/Variant8b1a31855f813415353bb251d43c1c1fd2b6d10decb1468b967f86a80f4a59b6.lean/declarations/perspectiveexponent--bec1d0149ddd673b08ecb0d0.md) | 19 | `declaration-track:bec1d0149ddd673b08ecb0d047a9a27026a9234300d02afc55a7d97e260a06db` |
| 3 | `structure` | [SymmetryPhase](../../../../../mathematics/Analysis/SpecialFunctions/Geometry/Variant8b1a31855f813415353bb251d43c1c1fd2b6d10decb1468b967f86a80f4a59b6.lean/declarations/symmetryphase--9735cec6fbf0bfcf97ac8a78.md) | 22 | `declaration-track:9735cec6fbf0bfcf97ac8a78fb3c83488b8cb600c155c46b4c1c9819fec037e5` |
| 4 | `def` | [reciprocalRadius](../../../../../mathematics/Analysis/SpecialFunctions/Geometry/Variant8b1a31855f813415353bb251d43c1c1fd2b6d10decb1468b967f86a80f4a59b6.lean/declarations/reciprocalradius--818be1050bf19779d46e542b.md) | 26 | `declaration-track:818be1050bf19779d46e542b3b9f33040ded4c5ebb4ced7c7fc2734ebeb7b088` |
| 5 | `structure` | [PerspectiveBound](../../../../../mathematics/Analysis/SpecialFunctions/Geometry/Variant8b1a31855f813415353bb251d43c1c1fd2b6d10decb1468b967f86a80f4a59b6.lean/declarations/perspectivebound--cd16ba3bce2dd733a4b21731.md) | 30 | `declaration-track:cd16ba3bce2dd733a4b21731f9889646afbe463d0885cc6b54854b2e83d254ad` |
| 6 | `structure` | [GeometricStage](../../../../../mathematics/Analysis/SpecialFunctions/Geometry/Variant8b1a31855f813415353bb251d43c1c1fd2b6d10decb1468b967f86a80f4a59b6.lean/declarations/geometricstage--56c5ad70264d9e5cb636539f.md) | 38 | `declaration-track:56c5ad70264d9e5cb636539f36042f0a35d4326022b36296d2aa5dd51e0409c8` |
| 7 | `def` | [Stabilizes](../../../../../mathematics/Analysis/SpecialFunctions/Geometry/Variant8b1a31855f813415353bb251d43c1c1fd2b6d10decb1468b967f86a80f4a59b6.lean/declarations/stabilizes--e5fde74f0265089ef6614b5a.md) | 46 | `declaration-track:e5fde74f0265089ef6614b5acda46311105f8c68954e085f96caaf54988d5034` |
| 8 | `theorem` | [fixed_return_iff_relative_stabilizes](../../../../../mathematics/Analysis/SpecialFunctions/Geometry/Variant8b1a31855f813415353bb251d43c1c1fd2b6d10decb1468b967f86a80f4a59b6.lean/declarations/fixed-return-iff-relative-stabilizes--dac5c08c32458637d14ddd21.md) | 53 | `result-track:dac5c08c32458637d14ddd21334066082a6d0fc287e7779119ef9e7cd0b21c6c` |
| 9 | `structure` | [GeometricReflectionCertificate](../../../../../mathematics/Analysis/SpecialFunctions/Geometry/Variant8b1a31855f813415353bb251d43c1c1fd2b6d10decb1468b967f86a80f4a59b6.lean/declarations/geometricreflectioncertificate--9210ca1ec13cd54c19e73934.md) | 96 | `declaration-track:9210ca1ec13cd54c19e73934863dcf372e4a07dbac1b4d7b7cf9a753a83c3580` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
