# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.IsInvertedBy.Variant82cdd65ac1deb9054e0b9a9b68461e4864432b8fc82db61efcdb086f96c5e2d8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5138e9ce426d16108a2d3b8d3fabfb9ce7240da0",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/IsInvertedBy/Variant82cdd65ac1deb9054e0b9a9b68461e4864432b8fc82db61efcdb086f96c5e2d8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IsInvertedBy/Variant82cdd65ac1deb9054e0b9a9b68461e4864432b8fc82db61efcdb086f96c5e2d8.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IsInvertedBy/Variant82cdd65ac1deb9054e0b9a9b68461e4864432b8fc82db61efcdb086f96c5e2d8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5138e9ce426d16108a2d3b8d3fabfb9ce7240da0`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/IsInvertedBy/Variant82cdd65ac1deb9054e0b9a9b68461e4864432b8fc82db61efcdb086f96c5e2d8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/IsInvertedBy/Variant82cdd65ac1deb9054e0b9a9b68461e4864432b8fc82db61efcdb086f96c5e2d8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Functor.ReflectsIso.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.MorphismProperty.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsInvertedBy](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IsInvertedBy/Variant82cdd65ac1deb9054e0b9a9b68461e4864432b8fc82db61efcdb086f96c5e2d8.lean/declarations/isinvertedby--5024e80866ca0e8baf0207f1.md) | 39 | `declaration-track:5024e80866ca0e8baf0207f14723a5ce990431f683a4ddbaedd4155dddfa1ac1` |
| 2 | `lemma` | [of_le](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IsInvertedBy/Variant82cdd65ac1deb9054e0b9a9b68461e4864432b8fc82db61efcdb086f96c5e2d8.lean/declarations/of-le--ce571653db7b980b539ec21f.md) | 44 | `result-track:ce571653db7b980b539ec21ffa90cb9eb99e53c45d18df262c5ad3f48657f6f1` |
| 3 | `theorem` | [of_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IsInvertedBy/Variant82cdd65ac1deb9054e0b9a9b68461e4864432b8fc82db61efcdb086f96c5e2d8.lean/declarations/of-comp--40eebf5718deb2a4eae1ad7a.md) | 48 | `result-track:40eebf5718deb2a4eae1ad7a0763eacc3bc91cd17e133b0169f4c7764c361d6d` |
| 4 | `theorem` | [op](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IsInvertedBy/Variant82cdd65ac1deb9054e0b9a9b68461e4864432b8fc82db61efcdb086f96c5e2d8.lean/declarations/op--b9b1a623d54f2cf5e9a73c2d.md) | 55 | `result-track:b9b1a623d54f2cf5e9a73c2d4c30cfc6a1b41fa8811c32d6fc807274d1bc9815` |
| 5 | `theorem` | [rightOp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IsInvertedBy/Variant82cdd65ac1deb9054e0b9a9b68461e4864432b8fc82db61efcdb086f96c5e2d8.lean/declarations/rightop--d2487ec3760f511aa30589d1.md) | 61 | `result-track:d2487ec3760f511aa30589d1c2aa48b78b39e13358ba6b8c1b2d631eba6bc8cd` |
| 6 | `theorem` | [leftOp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IsInvertedBy/Variant82cdd65ac1deb9054e0b9a9b68461e4864432b8fc82db61efcdb086f96c5e2d8.lean/declarations/leftop--73e1783a1bfdb2dd12f6e69e.md) | 67 | `result-track:73e1783a1bfdb2dd12f6e69ed86c4b5255ded23ae0d8336cf844499cf2d75b9a` |
| 7 | `theorem` | [unop](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IsInvertedBy/Variant82cdd65ac1deb9054e0b9a9b68461e4864432b8fc82db61efcdb086f96c5e2d8.lean/declarations/unop--1f15531c60af09ebbea10dc2.md) | 73 | `result-track:1f15531c60af09ebbea10dc224ab225180a316057cb187b60919c262f507470d` |
| 8 | `lemma` | [prod](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IsInvertedBy/Variant82cdd65ac1deb9054e0b9a9b68461e4864432b8fc82db61efcdb086f96c5e2d8.lean/declarations/prod--e64f0dccab118428a02e145c.md) | 79 | `result-track:e64f0dccab118428a02e145c423118065b03e8e768d0f3bc2cf64b2e8527b4c9` |
| 9 | `lemma` | [pi](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IsInvertedBy/Variant82cdd65ac1deb9054e0b9a9b68461e4864432b8fc82db61efcdb086f96c5e2d8.lean/declarations/pi--b31251fa52322277f1541d03.md) | 87 | `result-track:b31251fa52322277f1541d0307a907f41dcdd39070d823d55631b0f12c1101b5` |
| 10 | `def` | [FunctorsInverting](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IsInvertedBy/Variant82cdd65ac1deb9054e0b9a9b68461e4864432b8fc82db61efcdb086f96c5e2d8.lean/declarations/functorsinverting--ebd8d45d1f42ec570cad3b85.md) | 100 | `declaration-track:ebd8d45d1f42ec570cad3b855534dae8b9adc2ece2de15ec3bd2faff2b3bf7b0` |
| 11 | `lemma` | [FunctorsInverting.ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IsInvertedBy/Variant82cdd65ac1deb9054e0b9a9b68461e4864432b8fc82db61efcdb086f96c5e2d8.lean/declarations/functorsinverting-ext--4aac9a9e54a4f791b75f11a1.md) | 104 | `result-track:4aac9a9e54a4f791b75f11a1c0b183340172b74765d1c312fb82d46f31f39f85` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IsInvertedBy/Variant82cdd65ac1deb9054e0b9a9b68461e4864432b8fc82db61efcdb086f96c5e2d8.lean/declarations/instance--aac74fc3b121b3cf71a1a366.md) | 111 | `declaration-track:aac74fc3b121b3cf71a1a366eed2d92230912c3cd7719d268507194ea8b40235` |
| 13 | `lemma` | [FunctorsInverting.hom_ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IsInvertedBy/Variant82cdd65ac1deb9054e0b9a9b68461e4864432b8fc82db61efcdb086f96c5e2d8.lean/declarations/functorsinverting-hom-ext--3b4007deba5c5b8597cfa6b6.md) | 115 | `result-track:3b4007deba5c5b8597cfa6b6270f23a14f84391c50cbbc95d44d73b598f99171` |
| 14 | `def` | [FunctorsInverting.mk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IsInvertedBy/Variant82cdd65ac1deb9054e0b9a9b68461e4864432b8fc82db61efcdb086f96c5e2d8.lean/declarations/functorsinverting-mk--d845a4131cdf3c8f13d878ce.md) | 120 | `declaration-track:d845a4131cdf3c8f13d878ce34622d414f9bab9c398ed3325ed982d9fe3c2624` |
| 15 | `theorem` | [IsInvertedBy.iff_of_iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IsInvertedBy/Variant82cdd65ac1deb9054e0b9a9b68461e4864432b8fc82db61efcdb086f96c5e2d8.lean/declarations/isinvertedby-iff-of-iso--67c7954e628d1e62b63edb57.md) | 124 | `result-track:67c7954e628d1e62b63edb57809fa7005e9a366ab668cac6b8f2620891d71b0d` |
| 16 | `lemma` | [IsInvertedBy.isoClosure_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IsInvertedBy/Variant82cdd65ac1deb9054e0b9a9b68461e4864432b8fc82db61efcdb086f96c5e2d8.lean/declarations/isinvertedby-isoclosure-iff--3db5bc7b8655b1d9b0412e66.md) | 130 | `result-track:3db5bc7b8655b1d9b0412e6671209601f80f576e87d7fa13f9413820196f3ced` |
| 17 | `lemma` | [IsInvertedBy.iff_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IsInvertedBy/Variant82cdd65ac1deb9054e0b9a9b68461e4864432b8fc82db61efcdb086f96c5e2d8.lean/declarations/isinvertedby-iff-comp--9a15a0fada6f6e363361112b.md) | 141 | `result-track:9a15a0fada6f6e363361112bf28e0cbb0c45a19754cd02c963d35e8d62c264c9` |
| 18 | `lemma` | [IsInvertedBy.iff_le_inverseImage_isomorphisms](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IsInvertedBy/Variant82cdd65ac1deb9054e0b9a9b68461e4864432b8fc82db61efcdb086f96c5e2d8.lean/declarations/isinvertedby-iff-le-inverseimage-isomorphisms--d1c483555abf1ebcc27f77fb.md) | 151 | `result-track:d1c483555abf1ebcc27f77fb8c58c30ac4ea982f683e7f27d41f1f21cd49883d` |
| 19 | `lemma` | [IsInvertedBy.iff_map_le_isomorphisms](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IsInvertedBy/Variant82cdd65ac1deb9054e0b9a9b68461e4864432b8fc82db61efcdb086f96c5e2d8.lean/declarations/isinvertedby-iff-map-le-isomorphisms--4f02d8d4d06fbb4c8cdb9e6b.md) | 154 | `result-track:4f02d8d4d06fbb4c8cdb9e6b9a7f54fa0378b3bd00c5291dc905488726f78798` |
| 20 | `lemma` | [IsInvertedBy.map_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IsInvertedBy/Variant82cdd65ac1deb9054e0b9a9b68461e4864432b8fc82db61efcdb086f96c5e2d8.lean/declarations/isinvertedby-map-iff--d51f853b7c5b6b07bd43b385.md) | 158 | `result-track:d51f853b7c5b6b07bd43b385e4d51125c3921788381911f2e8a7645b22d05beb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
