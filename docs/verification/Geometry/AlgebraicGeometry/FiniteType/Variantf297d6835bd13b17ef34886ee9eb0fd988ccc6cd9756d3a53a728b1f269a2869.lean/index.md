# Verification target: GRWTSK.Geometry.AlgebraicGeometry.FiniteType.Variantf297d6835bd13b17ef34886ee9eb0fd988ccc6cd9756d3a53a728b1f269a2869

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "54f3d2f3c83838cd4790e3d828b3d5dae7e69a02",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/AlgebraicGeometry/FiniteType/Variantf297d6835bd13b17ef34886ee9eb0fd988ccc6cd9756d3a53a728b1f269a2869.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Geometry/AlgebraicGeometry/FiniteType/Variantf297d6835bd13b17ef34886ee9eb0fd988ccc6cd9756d3a53a728b1f269a2869.lean/index.md) · [Full source](../../../../../mathematics/Geometry/AlgebraicGeometry/FiniteType/Variantf297d6835bd13b17ef34886ee9eb0fd988ccc6cd9756d3a53a728b1f269a2869.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `54f3d2f3c83838cd4790e3d828b3d5dae7e69a02`.

Source path: `GRWTSK/Geometry/AlgebraicGeometry/FiniteType/Variantf297d6835bd13b17ef34886ee9eb0fd988ccc6cd9756d3a53a728b1f269a2869.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/AlgebraicGeometry/FiniteType/Variantf297d6835bd13b17ef34886ee9eb0fd988ccc6cd9756d3a53a728b1f269a2869.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.AlgebraicGeometry.Morphisms.RingHomProperties` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.RingHom.FiniteType` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Spectrum.Prime.Jacobson` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [LocallyOfFiniteType](../../../../../mathematics/Geometry/AlgebraicGeometry/FiniteType/Variantf297d6835bd13b17ef34886ee9eb0fd988ccc6cd9756d3a53a728b1f269a2869.lean/declarations/locallyoffinitetype--4ce3728995afdadbdc043a1a.md) | 37 | `declaration-track:4ce3728995afdadbdc043a1ae58af0ae3d1030569d575b8f5626cd5a5af9ca5c` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/FiniteType/Variantf297d6835bd13b17ef34886ee9eb0fd988ccc6cd9756d3a53a728b1f269a2869.lean/declarations/instance--2d945e5ca93b759fa235ce9d.md) | 41 | `declaration-track:2d945e5ca93b759fa235ce9d40ffea79d8e25da2e0a371cc37f2d8377934efda` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/FiniteType/Variantf297d6835bd13b17ef34886ee9eb0fd988ccc6cd9756d3a53a728b1f269a2869.lean/declarations/instance--04a5afa1a68b40eb1043baa6.md) | 47 | `declaration-track:04a5afa1a68b40eb1043baa63848ab74c224c5fc78b7f91d5fc06279d297ae2a` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/FiniteType/Variantf297d6835bd13b17ef34886ee9eb0fd988ccc6cd9756d3a53a728b1f269a2869.lean/declarations/instance--f8795605b24183348f9c01dc.md) | 52 | `declaration-track:f8795605b24183348f9c01dcc368afb17abbd7a744e0cd2f78c48f9246214674` |
| 5 | `instance` | [locallyOfFiniteType_comp](../../../../../mathematics/Geometry/AlgebraicGeometry/FiniteType/Variantf297d6835bd13b17ef34886ee9eb0fd988ccc6cd9756d3a53a728b1f269a2869.lean/declarations/locallyoffinitetype-comp--42220500ad8b156b00b004c3.md) | 55 | `declaration-track:42220500ad8b156b00b004c3a8fb3c1db70a970766e9301fc044d8eb43a9028c` |
| 6 | `theorem` | [locallyOfFiniteType_of_comp](../../../../../mathematics/Geometry/AlgebraicGeometry/FiniteType/Variantf297d6835bd13b17ef34886ee9eb0fd988ccc6cd9756d3a53a728b1f269a2869.lean/declarations/locallyoffinitetype-of-comp--de88a9534f174e39bf3fe43f.md) | 59 | `result-track:de88a9534f174e39bf3fe43fa103aa164dc2d3822b3ce40d66bbd1bcc3b7bb4c` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/FiniteType/Variantf297d6835bd13b17ef34886ee9eb0fd988ccc6cd9756d3a53a728b1f269a2869.lean/declarations/instance--863fb4d4edd69d11f3670e39.md) | 63 | `declaration-track:863fb4d4edd69d11f3670e3992c1abff6f49c08b475d92cef5054be4de65fda1` |
| 8 | `instance` | [locallyOfFiniteType_isStableUnderBaseChange](../../../../../mathematics/Geometry/AlgebraicGeometry/FiniteType/Variantf297d6835bd13b17ef34886ee9eb0fd988ccc6cd9756d3a53a728b1f269a2869.lean/declarations/locallyoffinitetype-isstableunderbasechange--b86e1dd7725ad77c2e883c25.md) | 67 | `declaration-track:b86e1dd7725ad77c2e883c25e5c8cced47ebb179dded741a946c47ffc561ccf1` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/FiniteType/Variantf297d6835bd13b17ef34886ee9eb0fd988ccc6cd9756d3a53a728b1f269a2869.lean/declarations/instance--777092d8ae1a0557bb1c819c.md) | 71 | `declaration-track:777092d8ae1a0557bb1c819ca0f248fb146995c676a055d9d433d68370cc085b` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/FiniteType/Variantf297d6835bd13b17ef34886ee9eb0fd988ccc6cd9756d3a53a728b1f269a2869.lean/declarations/instance--78d8b5314983fca7c5171580.md) | 74 | `declaration-track:78d8b5314983fca7c5171580db01460d46e7b9030b9bf308880f467f27d19706` |
| 11 | `lemma` | [LocallyOfFiniteType.jacobsonSpace](../../../../../mathematics/Geometry/AlgebraicGeometry/FiniteType/Variantf297d6835bd13b17ef34886ee9eb0fd988ccc6cd9756d3a53a728b1f269a2869.lean/declarations/locallyoffinitetype-jacobsonspace--88ddd54a2e2ab2f330ee6e9e.md) | 77 | `result-track:88ddd54a2e2ab2f330ee6e9e5fcc49f2c8d602ca3649f87b6d5f2bb22335a5a6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
