# Verification target: GRWTSK.Geometry.AlgebraicGeometry.Over.Variantf711379a7e5a466cad1c5053167db0c7e12d7c4b28e7216799674c34decd6162

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3b11edfca2b68e21e77ce0d40e86f7878b59b149",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/AlgebraicGeometry/Over/Variantf711379a7e5a466cad1c5053167db0c7e12d7c4b28e7216799674c34decd6162.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Geometry/AlgebraicGeometry/Over/Variantf711379a7e5a466cad1c5053167db0c7e12d7c4b28e7216799674c34decd6162.lean/index.md) · [Full source](../../../../../mathematics/Geometry/AlgebraicGeometry/Over/Variantf711379a7e5a466cad1c5053167db0c7e12d7c4b28e7216799674c34decd6162.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3b11edfca2b68e21e77ce0d40e86f7878b59b149`.

Source path: `GRWTSK/Geometry/AlgebraicGeometry/Over/Variantf711379a7e5a466cad1c5053167db0c7e12d7c4b28e7216799674c34decd6162.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/AlgebraicGeometry/Over/Variantf711379a7e5a466cad1c5053167db0c7e12d7c4b28e7216799674c34decd6162.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.AlgebraicGeometry.Morphisms.UnderlyingMap` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.MorphismProperty` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [asOverProp](../../../../../mathematics/Geometry/AlgebraicGeometry/Over/Variantf711379a7e5a466cad1c5053167db0c7e12d7c4b28e7216799674c34decd6162.lean/declarations/asoverprop--b0f4faa96913f5c8645675df.md) | 32 | `declaration-track:b0f4faa96913f5c8645675df6621d0d710d78b545d604e9c75137e725d84c01f` |
| 2 | `abbrev` | [Hom.asOverProp](../../../../../mathematics/Geometry/AlgebraicGeometry/Over/Variantf711379a7e5a466cad1c5053167db0c7e12d7c4b28e7216799674c34decd6162.lean/declarations/hom-asoverprop--95e2abfb38caca2befe59052.md) | 36 | `declaration-track:95e2abfb38caca2befe5905259cbc0098e18c08034e1eaf2c5ca305d5655afa0` |
| 3 | `class` | [Cover.Over](../../../../../mathematics/Geometry/AlgebraicGeometry/Over/Variantf711379a7e5a466cad1c5053167db0c7e12d7c4b28e7216799674c34decd6162.lean/declarations/cover-over--395fca74672aa16f31535451.md) | 42 | `declaration-track:395fca74672aa16f315354511abcb48c845344ef342549f036d002ca7191fcda` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Over/Variantf711379a7e5a466cad1c5053167db0c7e12d7c4b28e7216799674c34decd6162.lean/declarations/instance--d45da22b0192ce572ce22f07.md) | 49 | `declaration-track:d45da22b0192ce572ce22f07c270442b7248289d0e39219d61958d03dd970ef9` |
| 5 | `def` | [Cover.pullbackCoverOver](../../../../../mathematics/Geometry/AlgebraicGeometry/Over/Variantf711379a7e5a466cad1c5053167db0c7e12d7c4b28e7216799674c34decd6162.lean/declarations/cover-pullbackcoverover--6c6833273e2886b4d2b7cc60.md) | 65 | `declaration-track:6c6833273e2886b4d2b7cc60053d6163cbe502d2faa2633c09e680dc96b74b49` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Over/Variantf711379a7e5a466cad1c5053167db0c7e12d7c4b28e7216799674c34decd6162.lean/declarations/instance--18955b080de8bc6599bf27d5.md) | 77 | `declaration-track:18955b080de8bc6599bf27d5c7f801ae39d606df18ff84864289bfaea4e9fb52` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Over/Variantf711379a7e5a466cad1c5053167db0c7e12d7c4b28e7216799674c34decd6162.lean/declarations/instance--2e93df928f5b1ddb78754a76.md) | 80 | `declaration-track:2e93df928f5b1ddb78754a76e68e7305a9f0d441c3a16b1156454c6c2af4e8ba` |
| 8 | `def` | [Cover.pullbackCoverOver'](../../../../../mathematics/Geometry/AlgebraicGeometry/Over/Variantf711379a7e5a466cad1c5053167db0c7e12d7c4b28e7216799674c34decd6162.lean/declarations/cover-pullbackcoverover--728a2d682c37c504885a1bd7.md) | 86 | `declaration-track:728a2d682c37c504885a1bd77be04b501b5947b8e836664fcf65ee73c0fbd3d6` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Over/Variantf711379a7e5a466cad1c5053167db0c7e12d7c4b28e7216799674c34decd6162.lean/declarations/instance--67a5459b1bbaa0262cfe14a5.md) | 98 | `declaration-track:67a5459b1bbaa0262cfe14a593810466a49726abc5b10e253d7e70a9f974ae36` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Over/Variantf711379a7e5a466cad1c5053167db0c7e12d7c4b28e7216799674c34decd6162.lean/declarations/instance--9c4d5be913fda2eb629d6895.md) | 101 | `declaration-track:9c4d5be913fda2eb629d689584329b66aadd1d43e82ca3a8c94ff9a1364b6648` |
| 11 | `def` | [Cover.pullbackCoverOverProp](../../../../../mathematics/Geometry/AlgebraicGeometry/Over/Variantf711379a7e5a466cad1c5053167db0c7e12d7c4b28e7216799674c34decd6162.lean/declarations/cover-pullbackcoveroverprop--9b7237ae3f63a60c2cdf3fe4.md) | 114 | `declaration-track:9b7237ae3f63a60c2cdf3fe422720211b514d748fa1f02915bdf1ef98a6ea120` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Over/Variantf711379a7e5a466cad1c5053167db0c7e12d7c4b28e7216799674c34decd6162.lean/declarations/instance--daf16ee9e425bbd25db7276c.md) | 131 | `declaration-track:daf16ee9e425bbd25db7276c1ab9fe92291aa02d77ba18fa2d59bdb13d6089c7` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Over/Variantf711379a7e5a466cad1c5053167db0c7e12d7c4b28e7216799674c34decd6162.lean/declarations/instance--d6a482b695fb9b41413dbf98.md) | 135 | `declaration-track:d6a482b695fb9b41413dbf98315743e8982995a046811ebe2902de92c34fb5fb` |
| 14 | `def` | [Cover.pullbackCoverOverProp'](../../../../../mathematics/Geometry/AlgebraicGeometry/Over/Variantf711379a7e5a466cad1c5053167db0c7e12d7c4b28e7216799674c34decd6162.lean/declarations/cover-pullbackcoveroverprop--7b4daa2279b27cc3362b13b2.md) | 142 | `declaration-track:7b4daa2279b27cc3362b13b2006df446122a4674e4140c6f0d9fa15c235e5172` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Over/Variantf711379a7e5a466cad1c5053167db0c7e12d7c4b28e7216799674c34decd6162.lean/declarations/instance--9627fd378edd7517a5c68c51.md) | 159 | `declaration-track:9627fd378edd7517a5c68c51d0410d460c591040c4c702bb42c908943e4218fe` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Over/Variantf711379a7e5a466cad1c5053167db0c7e12d7c4b28e7216799674c34decd6162.lean/declarations/instance--43c82fd32232c5aaa6741f06.md) | 163 | `declaration-track:43c82fd32232c5aaa6741f06aee4bcdc424d6083322c80076bd99d2d828b1023` |
| 17 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Over/Variantf711379a7e5a466cad1c5053167db0c7e12d7c4b28e7216799674c34decd6162.lean/declarations/instance--b2065ea2f2a65034922a1ed7.md) | 173 | `declaration-track:b2065ea2f2a65034922a1ed7c7a3516cef1db666eca64eb4fc1c53056caf8605` |
| 18 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Over/Variantf711379a7e5a466cad1c5053167db0c7e12d7c4b28e7216799674c34decd6162.lean/declarations/instance--ef50cd31c161535017f164fa.md) | 176 | `declaration-track:ef50cd31c161535017f164fa27e354a61ac8d5d4375bf55077c82b0a6302ad16` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
