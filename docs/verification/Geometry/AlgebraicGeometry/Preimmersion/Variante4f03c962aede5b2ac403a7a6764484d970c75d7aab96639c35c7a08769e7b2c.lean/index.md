# Verification target: GRWTSK.Geometry.AlgebraicGeometry.Preimmersion.Variante4f03c962aede5b2ac403a7a6764484d970c75d7aab96639c35c7a08769e7b2c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9c178b890141492bb4b4166a7f026c1f0a942b95",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/AlgebraicGeometry/Preimmersion/Variante4f03c962aede5b2ac403a7a6764484d970c75d7aab96639c35c7a08769e7b2c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Geometry/AlgebraicGeometry/Preimmersion/Variante4f03c962aede5b2ac403a7a6764484d970c75d7aab96639c35c7a08769e7b2c.lean/index.md) · [Full source](../../../../../mathematics/Geometry/AlgebraicGeometry/Preimmersion/Variante4f03c962aede5b2ac403a7a6764484d970c75d7aab96639c35c7a08769e7b2c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9c178b890141492bb4b4166a7f026c1f0a942b95`.

Source path: `GRWTSK/Geometry/AlgebraicGeometry/Preimmersion/Variante4f03c962aede5b2ac403a7a6764484d970c75d7aab96639c35c7a08769e7b2c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/AlgebraicGeometry/Preimmersion/Variante4f03c962aede5b2ac403a7a6764484d970c75d7aab96639c35c7a08769e7b2c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.AlgebraicGeometry.Morphisms.UnderlyingMap` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.AlgebraicGeometry.Morphisms.SurjectiveOnStalks` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [IsPreimmersion](../../../../../mathematics/Geometry/AlgebraicGeometry/Preimmersion/Variante4f03c962aede5b2ac403a7a6764484d970c75d7aab96639c35c7a08769e7b2c.lean/declarations/ispreimmersion--9c0009b52e4553074ed426a8.md) | 29 | `declaration-track:9c0009b52e4553074ed426a8c334f941372e3963d33859a4d78fdd44a025ae1e` |
| 2 | `lemma` | [Scheme.Hom.isEmbedding](../../../../../mathematics/Geometry/AlgebraicGeometry/Preimmersion/Variante4f03c962aede5b2ac403a7a6764484d970c75d7aab96639c35c7a08769e7b2c.lean/declarations/scheme-hom-isembedding--00ff26f160f758702edf3e8a.md) | 32 | `result-track:00ff26f160f758702edf3e8a623d3fd22b1bcf1fbd822dfcefa5d421499971ae` |
| 3 | `lemma` | [isPreimmersion_eq_inf](../../../../../mathematics/Geometry/AlgebraicGeometry/Preimmersion/Variante4f03c962aede5b2ac403a7a6764484d970c75d7aab96639c35c7a08769e7b2c.lean/declarations/ispreimmersion-eq-inf--d001fcced23311964cfbdc98.md) | 38 | `result-track:d001fcced23311964cfbdc98b2415b76cc3c07488ded08ce586e962b250b6715` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Preimmersion/Variante4f03c962aede5b2ac403a7a6764484d970c75d7aab96639c35c7a08769e7b2c.lean/declarations/instance--be6e9362a66abe4a3bfe2f03.md) | 46 | `declaration-track:be6e9362a66abe4a3bfe2f037025ad5ee9daa1d7eb80d50ea6d0c4b1cf94d4e9` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Preimmersion/Variante4f03c962aede5b2ac403a7a6764484d970c75d7aab96639c35c7a08769e7b2c.lean/declarations/instance--a6acf14fd75a6551a0eb73b7.md) | 49 | `declaration-track:a6acf14fd75a6551a0eb73b7cc05970f8644095fbcc295e6fffc4217757ff8df` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Preimmersion/Variante4f03c962aede5b2ac403a7a6764484d970c75d7aab96639c35c7a08769e7b2c.lean/declarations/instance--025da405d280290fc3fa39f1.md) | 53 | `declaration-track:025da405d280290fc3fa39f1f3bd6d7fc70c0ba6c02781c31853fa569459a61f` |
| 7 | `instance` | [comp](../../../../../mathematics/Geometry/AlgebraicGeometry/Preimmersion/Variante4f03c962aede5b2ac403a7a6764484d970c75d7aab96639c35c7a08769e7b2c.lean/declarations/comp--bb025102ba79fed1c03cd83e.md) | 57 | `declaration-track:bb025102ba79fed1c03cd83ef59954a67c4024c23e60d304b77fbf9976b63aa7` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Preimmersion/Variante4f03c962aede5b2ac403a7a6764484d970c75d7aab96639c35c7a08769e7b2c.lean/declarations/instance--84e60033a30bd8ada823f3a1.md) | 61 | `declaration-track:84e60033a30bd8ada823f3a1e2c41ea64a435c74a25f32a6349ded56a450578d` |
| 9 | `theorem` | [of_comp](../../../../../mathematics/Geometry/AlgebraicGeometry/Preimmersion/Variante4f03c962aede5b2ac403a7a6764484d970c75d7aab96639c35c7a08769e7b2c.lean/declarations/of-comp--85479c409dd63b3d1ec78916.md) | 64 | `result-track:85479c409dd63b3d1ec789162c407e56b450f12dc0abb6c43a50c93c180a7f99` |
| 10 | `theorem` | [comp_iff](../../../../../mathematics/Geometry/AlgebraicGeometry/Preimmersion/Variante4f03c962aede5b2ac403a7a6764484d970c75d7aab96639c35c7a08769e7b2c.lean/declarations/comp-iff--aeae50d79fbc97e9212c1f14.md) | 74 | `result-track:aeae50d79fbc97e9212c1f143d11549068068b39bce7d838f82bcadc01ee9fb0` |
| 11 | `lemma` | [Spec_map_iff](../../../../../mathematics/Geometry/AlgebraicGeometry/Preimmersion/Variante4f03c962aede5b2ac403a7a6764484d970c75d7aab96639c35c7a08769e7b2c.lean/declarations/spec-map-iff--14c8bce3417ca42b1f868039.md) | 78 | `result-track:14c8bce3417ca42b1f8680398603b8a8bdbf64b6cc27979e6a26a1e4ae319baf` |
| 12 | `lemma` | [mk_Spec_map](../../../../../mathematics/Geometry/AlgebraicGeometry/Preimmersion/Variante4f03c962aede5b2ac403a7a6764484d970c75d7aab96639c35c7a08769e7b2c.lean/declarations/mk-spec-map--a8425ab0c1fb882a42e0968a.md) | 87 | `result-track:a8425ab0c1fb882a42e0968a7517c74defe08faae9bb957516dd9722c87cda73` |
| 13 | `lemma` | [of_isLocalization](../../../../../mathematics/Geometry/AlgebraicGeometry/Preimmersion/Variante4f03c962aede5b2ac403a7a6764484d970c75d7aab96639c35c7a08769e7b2c.lean/declarations/of-islocalization--47a31e51794824f6191b5e51.md) | 92 | `result-track:47a31e51794824f6191b5e5157161ce5579bf77576f8da218494183fdba82d75` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Preimmersion/Variante4f03c962aede5b2ac403a7a6764484d970c75d7aab96639c35c7a08769e7b2c.lean/declarations/instance--ed7e69354a0ea4b4ea98cc0f.md) | 100 | `declaration-track:ed7e69354a0ea4b4ea98cc0f1d4cb1210ecd582f8a2fc366ae9832c02a5bbd45` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
