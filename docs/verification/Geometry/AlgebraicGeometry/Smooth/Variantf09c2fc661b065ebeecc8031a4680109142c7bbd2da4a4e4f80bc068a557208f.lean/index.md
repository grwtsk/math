# Verification target: GRWTSK.Geometry.AlgebraicGeometry.Smooth.Variantf09c2fc661b065ebeecc8031a4680109142c7bbd2da4a4e4f80bc068a557208f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "489322bd32b20e8189e1d46fa6790a9d22682bca",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/AlgebraicGeometry/Smooth/Variantf09c2fc661b065ebeecc8031a4680109142c7bbd2da4a4e4f80bc068a557208f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Geometry/AlgebraicGeometry/Smooth/Variantf09c2fc661b065ebeecc8031a4680109142c7bbd2da4a4e4f80bc068a557208f.lean/index.md) · [Full source](../../../../../mathematics/Geometry/AlgebraicGeometry/Smooth/Variantf09c2fc661b065ebeecc8031a4680109142c7bbd2da4a4e4f80bc068a557208f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `489322bd32b20e8189e1d46fa6790a9d22682bca`.

Source path: `GRWTSK/Geometry/AlgebraicGeometry/Smooth/Variantf09c2fc661b065ebeecc8031a4680109142c7bbd2da4a4e4f80bc068a557208f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/AlgebraicGeometry/Smooth/Variantf09c2fc661b065ebeecc8031a4680109142c7bbd2da4a4e4f80bc068a557208f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.AlgebraicGeometry.Morphisms.RingHomProperties` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.AlgebraicGeometry.Morphisms.FinitePresentation` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.RingHom.StandardSmooth` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [IsSmooth](../../../../../mathematics/Geometry/AlgebraicGeometry/Smooth/Variantf09c2fc661b065ebeecc8031a4680109142c7bbd2da4a4e4f80bc068a557208f.lean/declarations/issmooth--c73f21f03e4d6ded88e4a1de.md) | 67 | `declaration-track:c73f21f03e4d6ded88e4a1de69a6f1ab876c0592f074ada3dbc9e0210d4aea71` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Smooth/Variantf09c2fc661b065ebeecc8031a4680109142c7bbd2da4a4e4f80bc068a557208f.lean/declarations/instance--da33fa6990e4afc4b25cbe72.md) | 73 | `declaration-track:da33fa6990e4afc4b25cbe72678747b487f315ec7031ddbb838090072a157229` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Smooth/Variantf09c2fc661b065ebeecc8031a4680109142c7bbd2da4a4e4f80bc068a557208f.lean/declarations/instance--d3876a3aaa465b03a6be8dce.md) | 81 | `declaration-track:d3876a3aaa465b03a6be8dce3ebd15feb4bc36effcbd845ed85a49403b1c7048` |
| 4 | `instance` | [isSmooth_comp](../../../../../mathematics/Geometry/AlgebraicGeometry/Smooth/Variantf09c2fc661b065ebeecc8031a4680109142c7bbd2da4a4e4f80bc068a557208f.lean/declarations/issmooth-comp--ed4664294f7b1025ea5c0f38.md) | 87 | `declaration-track:ed4664294f7b1025ea5c0f3847a23aea6d0a8268c72da55dc6bb8398f88b540e` |
| 5 | `lemma` | [isSmooth_isStableUnderBaseChange](../../../../../mathematics/Geometry/AlgebraicGeometry/Smooth/Variantf09c2fc661b065ebeecc8031a4680109142c7bbd2da4a4e4f80bc068a557208f.lean/declarations/issmooth-isstableunderbasechange--5a6ef30d3e55c59a6f787790.md) | 92 | `result-track:5a6ef30d3e55c59a6f787790b4b6b06c32d3235b778c84d5d4166aa71a6ac032` |
| 6 | `class` | [IsSmoothOfRelativeDimension](../../../../../mathematics/Geometry/AlgebraicGeometry/Smooth/Variantf09c2fc661b065ebeecc8031a4680109142c7bbd2da4a4e4f80bc068a557208f.lean/declarations/issmoothofrelativedimension--bed72f6f4a37c2395e1eb139.md) | 103 | `declaration-track:bed72f6f4a37c2395e1eb139943e48264ea9e6b0ce4ee2455439c4f31f438d53` |
| 7 | `lemma` | [IsSmoothOfRelativeDimension.isSmooth](../../../../../mathematics/Geometry/AlgebraicGeometry/Smooth/Variantf09c2fc661b065ebeecc8031a4680109142c7bbd2da4a4e4f80bc068a557208f.lean/declarations/issmoothofrelativedimension-issmooth--2c36006b11efc4e6140ce791.md) | 109 | `result-track:2c36006b11efc4e6140ce791a379be681cb0d2f7a37c95d049a7a770cc04274d` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Smooth/Variantf09c2fc661b065ebeecc8031a4680109142c7bbd2da4a4e4f80bc068a557208f.lean/declarations/instance--190902c7de43c1f5bdb4150a.md) | 116 | `declaration-track:190902c7de43c1f5bdb4150a99059fb6db5a541613aba4805bd114ed3961fda8` |
| 9 | `lemma` | [isSmoothOfRelativeDimension_isStableUnderBaseChange](../../../../../mathematics/Geometry/AlgebraicGeometry/Smooth/Variantf09c2fc661b065ebeecc8031a4680109142c7bbd2da4a4e4f80bc068a557208f.lean/declarations/issmoothofrelativedimension-isstableunderbasechange--5697194cfd6d93b00e8fe1e8.md) | 125 | `result-track:5697194cfd6d93b00e8fe1e80520aa50895ac36404943d29239c1f4c1696a2db` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Smooth/Variantf09c2fc661b065ebeecc8031a4680109142c7bbd2da4a4e4f80bc068a557208f.lean/declarations/instance--f38e151f3bbc0d16429a1c90.md) | 132 | `declaration-track:f38e151f3bbc0d16429a1c908ef3cfd7796c96a4120f12bf6403fce2a548d6b3` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Smooth/Variantf09c2fc661b065ebeecc8031a4680109142c7bbd2da4a4e4f80bc068a557208f.lean/declarations/instance--d4b7eb43f8de1c4e51e5a31f.md) | 138 | `declaration-track:d4b7eb43f8de1c4e51e5a31f9d29e5f6d267c52c37fa0ccf3f700dd526a20300` |
| 12 | `instance` | [isSmoothOfRelativeDimension_comp](../../../../../mathematics/Geometry/AlgebraicGeometry/Smooth/Variantf09c2fc661b065ebeecc8031a4680109142c7bbd2da4a4e4f80bc068a557208f.lean/declarations/issmoothofrelativedimension-comp--483406ca6ff657af8f57c821.md) | 143 | `declaration-track:483406ca6ff657af8f57c8217f668624ee616ea04cd6aff9005f3b9457c53ba0` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Smooth/Variantf09c2fc661b065ebeecc8031a4680109142c7bbd2da4a4e4f80bc068a557208f.lean/declarations/instance--9721fc8456debef3a311c8f7.md) | 166 | `declaration-track:9721fc8456debef3a311c8f738f072a1bad3840a14153b51c6cd6b6c432dcf5f` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Smooth/Variantf09c2fc661b065ebeecc8031a4680109142c7bbd2da4a4e4f80bc068a557208f.lean/declarations/instance--5c4dfa9d4a111f9099853e97.md) | 172 | `declaration-track:5c4dfa9d4a111f9099853e97c3e4b726d058430423ea60ac2ed8a14a8d64602c` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Smooth/Variantf09c2fc661b065ebeecc8031a4680109142c7bbd2da4a4e4f80bc068a557208f.lean/declarations/instance--c89cb35c97ffd98c5a06b588.md) | 177 | `declaration-track:c89cb35c97ffd98c5a06b5880bb173d3966a1e278933e6e9d638d957e90321fd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
