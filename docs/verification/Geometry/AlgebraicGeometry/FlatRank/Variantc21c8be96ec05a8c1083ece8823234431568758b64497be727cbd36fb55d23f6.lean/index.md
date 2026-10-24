# Verification target: GRWTSK.Geometry.AlgebraicGeometry.FlatRank.Variantc21c8be96ec05a8c1083ece8823234431568758b64497be727cbd36fb55d23f6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a7cce39dcb92ad68c034d0b3acef4f8d65e8c668",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/AlgebraicGeometry/FlatRank/Variantc21c8be96ec05a8c1083ece8823234431568758b64497be727cbd36fb55d23f6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Geometry/AlgebraicGeometry/FlatRank/Variantc21c8be96ec05a8c1083ece8823234431568758b64497be727cbd36fb55d23f6.lean/index.md) · [Full source](../../../../../mathematics/Geometry/AlgebraicGeometry/FlatRank/Variantc21c8be96ec05a8c1083ece8823234431568758b64497be727cbd36fb55d23f6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a7cce39dcb92ad68c034d0b3acef4f8d65e8c668`.

Source path: `GRWTSK/Geometry/AlgebraicGeometry/FlatRank/Variantc21c8be96ec05a8c1083ece8823234431568758b64497be727cbd36fb55d23f6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/AlgebraicGeometry/FlatRank/Variantc21c8be96ec05a8c1083ece8823234431568758b64497be727cbd36fb55d23f6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsAffine.finrank](../../../../../mathematics/Geometry/AlgebraicGeometry/FlatRank/Variantc21c8be96ec05a8c1083ece8823234431568758b64497be727cbd36fb55d23f6.lean/declarations/isaffine-finrank--2e09a4094b24c980aef2cfa7.md) | 57 | `declaration-track:2e09a4094b24c980aef2cfa796f512fd2999ccc4ac1eb500eeb2a8af2b8760be` |
| 2 | `lemma` | [IsAffine.finrank_of_isPullback](../../../../../mathematics/Geometry/AlgebraicGeometry/FlatRank/Variantc21c8be96ec05a8c1083ece8823234431568758b64497be727cbd36fb55d23f6.lean/declarations/isaffine-finrank-of-ispullback--e0da7269d8268d81571a399f.md) | 60 | `result-track:e0da7269d8268d81571a399fbdecc502beeaebdefbe44ecaca106f34346f2572` |
| 3 | `lemma` | [IsAffine.finrank_snd](../../../../../mathematics/Geometry/AlgebraicGeometry/FlatRank/Variantc21c8be96ec05a8c1083ece8823234431568758b64497be727cbd36fb55d23f6.lean/declarations/isaffine-finrank-snd--e45db758788f6d6847f264d4.md) | 72 | `result-track:e45db758788f6d6847f264d4909a7195a6422b03f5c460e392b86a807396f519` |
| 4 | `lemma` | [IsAffine.finrank_comp_left_of_isIso](../../../../../mathematics/Geometry/AlgebraicGeometry/FlatRank/Variantc21c8be96ec05a8c1083ece8823234431568758b64497be727cbd36fb55d23f6.lean/declarations/isaffine-finrank-comp-left-of-isiso--3f74674328be0d79293df6d5.md) | 77 | `result-track:3f74674328be0d79293df6d57458aba922cf84a98d1e41ac197e6f732c2f3f65` |
| 5 | `def` | [Scheme.Hom.finrank](../../../../../mathematics/Geometry/AlgebraicGeometry/FlatRank/Variantc21c8be96ec05a8c1083ece8823234431568758b64497be727cbd36fb55d23f6.lean/declarations/scheme-hom-finrank--96cee4c8e7ac7f1aa1a00c12.md) | 88 | `declaration-track:96cee4c8e7ac7f1aa1a00c1243e27b988e430e3d7b24df851416df73ba2583a3` |
| 6 | `lemma` | [Scheme.Hom.finrank_eq_finrank_snd_of_isAffine](../../../../../mathematics/Geometry/AlgebraicGeometry/FlatRank/Variantc21c8be96ec05a8c1083ece8823234431568758b64497be727cbd36fb55d23f6.lean/declarations/scheme-hom-finrank-eq-finrank-snd-of-isaffine--66ea6e6d9cc91d40880745ef.md) | 92 | `result-track:66ea6e6d9cc91d40880745ef96eb3811f6b1a781a25fc676ba61f4c140bf282e` |
| 7 | `lemma` | [Scheme.Hom.finrank_eq_of_isAffine](../../../../../mathematics/Geometry/AlgebraicGeometry/FlatRank/Variantc21c8be96ec05a8c1083ece8823234431568758b64497be727cbd36fb55d23f6.lean/declarations/scheme-hom-finrank-eq-of-isaffine--4f503e28769fe1a00bfb41a2.md) | 109 | `result-track:4f503e28769fe1a00bfb41a2ac0d81b7d4720fbc7f6a0b710f659bf64020be6e` |
| 8 | `lemma` | [Scheme.Hom.finrank_SpecMap_eq_finrank](../../../../../mathematics/Geometry/AlgebraicGeometry/FlatRank/Variantc21c8be96ec05a8c1083ece8823234431568758b64497be727cbd36fb55d23f6.lean/declarations/scheme-hom-finrank-specmap-eq-finrank--c1d5c45c8fd67d59cef6193a.md) | 116 | `result-track:c1d5c45c8fd67d59cef6193aa0d31a5a3458bf05104bdc4d518b8daa84a27e65` |
| 9 | `lemma` | [Scheme.Hom.finrank_SpecMap_algebraMap](../../../../../mathematics/Geometry/AlgebraicGeometry/FlatRank/Variantc21c8be96ec05a8c1083ece8823234431568758b64497be727cbd36fb55d23f6.lean/declarations/scheme-hom-finrank-specmap-algebramap--db842f23da8707b89ef3f967.md) | 134 | `result-track:db842f23da8707b89ef3f9675e56cf8c82ff55cbe518ccc4ab8a1158d17ed17a` |
| 10 | `lemma` | [Scheme.Hom.finrank_comp_left_of_isIso](../../../../../mathematics/Geometry/AlgebraicGeometry/FlatRank/Variantc21c8be96ec05a8c1083ece8823234431568758b64497be727cbd36fb55d23f6.lean/declarations/scheme-hom-finrank-comp-left-of-isiso--6e592e6549fa8893e184abd4.md) | 145 | `result-track:6e592e6549fa8893e184abd4766500f87e8d13c6c8fb094308e5563b87bcda30` |
| 11 | `lemma` | [Scheme.Hom.finrank_pullback_snd](../../../../../mathematics/Geometry/AlgebraicGeometry/FlatRank/Variantc21c8be96ec05a8c1083ece8823234431568758b64497be727cbd36fb55d23f6.lean/declarations/scheme-hom-finrank-pullback-snd--73ce8c68f6ce8107b39fd193.md) | 156 | `result-track:73ce8c68f6ce8107b39fd193bf5d220f2069a189022f96dd400b4f5cfc8a73f5` |
| 12 | `lemma` | [Scheme.Hom.finrank_of_isPullback](../../../../../mathematics/Geometry/AlgebraicGeometry/FlatRank/Variantc21c8be96ec05a8c1083ece8823234431568758b64497be727cbd36fb55d23f6.lean/declarations/scheme-hom-finrank-of-ispullback--1f9ab76e64c8af461214d1f3.md) | 164 | `result-track:1f9ab76e64c8af461214d1f302ab0c25282520f0ca48f5c91607d10e77c26f63` |
| 13 | `lemma` | [Scheme.Hom.finrank_pullback_fst](../../../../../mathematics/Geometry/AlgebraicGeometry/FlatRank/Variantc21c8be96ec05a8c1083ece8823234431568758b64497be727cbd36fb55d23f6.lean/declarations/scheme-hom-finrank-pullback-fst--b666153b70bb09010a31443a.md) | 169 | `result-track:b666153b70bb09010a31443a69bedb5c3b7f674f21b1a98ba86314248285d96d` |
| 14 | `lemma` | [Scheme.Hom.one_le_finrank_map](../../../../../mathematics/Geometry/AlgebraicGeometry/FlatRank/Variantc21c8be96ec05a8c1083ece8823234431568758b64497be727cbd36fb55d23f6.lean/declarations/scheme-hom-one-le-finrank-map--fa707585472d6b20634c912f.md) | 175 | `result-track:fa707585472d6b20634c912f3e7b8da11c579e80af34afa607df47f2910dfd2e` |
| 15 | `lemma` | [Scheme.Hom.one_le_finrank_iff_surjective](../../../../../mathematics/Geometry/AlgebraicGeometry/FlatRank/Variantc21c8be96ec05a8c1083ece8823234431568758b64497be727cbd36fb55d23f6.lean/declarations/scheme-hom-one-le-finrank-iff-surjective--4ba57c2cda1def2e323ee2a4.md) | 201 | `result-track:4ba57c2cda1def2e323ee2a4766e87b4594fb51ec8a732821bc6aa1837daad51` |
| 16 | `lemma` | [Scheme.Hom.isLocallyConstant_finrank](../../../../../mathematics/Geometry/AlgebraicGeometry/FlatRank/Variantc21c8be96ec05a8c1083ece8823234431568758b64497be727cbd36fb55d23f6.lean/declarations/scheme-hom-islocallyconstant-finrank--d220c26038a16138d6b46c17.md) | 231 | `result-track:d220c26038a16138d6b46c178fa1729d5d66f66d813740d2620e4dd4a3cab251` |
| 17 | `lemma` | [Scheme.Hom.finrank_eq_one_of_isIso](../../../../../mathematics/Geometry/AlgebraicGeometry/FlatRank/Variantc21c8be96ec05a8c1083ece8823234431568758b64497be727cbd36fb55d23f6.lean/declarations/scheme-hom-finrank-eq-one-of-isiso--7a77d58dbe343e8e55b2f5b9.md) | 258 | `result-track:7a77d58dbe343e8e55b2f5b924295d869f16a070c3e5065a435f49a37c086073` |
| 18 | `lemma` | [Scheme.Hom.isIso_iff_finrank_eq](../../../../../mathematics/Geometry/AlgebraicGeometry/FlatRank/Variantc21c8be96ec05a8c1083ece8823234431568758b64497be727cbd36fb55d23f6.lean/declarations/scheme-hom-isiso-iff-finrank-eq--19b8479c256cd97d0b3f9ea7.md) | 272 | `result-track:19b8479c256cd97d0b3f9ea7de98beaefb80ae3821949f8021e7c8a1bdfc0dd5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
