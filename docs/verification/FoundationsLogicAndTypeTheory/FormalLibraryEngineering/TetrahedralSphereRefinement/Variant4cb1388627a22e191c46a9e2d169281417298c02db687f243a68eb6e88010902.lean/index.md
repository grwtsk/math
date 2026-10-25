# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TetrahedralSphereRefinement.Variant4cb1388627a22e191c46a9e2d169281417298c02db687f243a68eb6e88010902

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "93868cf49f35d199469ae58756e2436fd3550acb",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TetrahedralSphereRefinement/Variant4cb1388627a22e191c46a9e2d169281417298c02db687f243a68eb6e88010902.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TetrahedralSphereRefinement/Variant4cb1388627a22e191c46a9e2d169281417298c02db687f243a68eb6e88010902.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TetrahedralSphereRefinement/Variant4cb1388627a22e191c46a9e2d169281417298c02db687f243a68eb6e88010902.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `93868cf49f35d199469ae58756e2436fd3550acb`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TetrahedralSphereRefinement/Variant4cb1388627a22e191c46a9e2d169281417298c02db687f243a68eb6e88010902.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TetrahedralSphereRefinement/Variant4cb1388627a22e191c46a9e2d169281417298c02db687f243a68eb6e88010902.lean.json)

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
| 1 | `structure` | [RefinementLevel](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TetrahedralSphereRefinement/Variant4cb1388627a22e191c46a9e2d169281417298c02db687f243a68eb6e88010902.lean/declarations/refinementlevel--60be996cc161834c5c884b18.md) | 17 | `declaration-track:60be996cc161834c5c884b18ebe7f7df0c47de1101303b691d0e60a9aadf4b73` |
| 2 | `structure` | [SimplicialMesh](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TetrahedralSphereRefinement/Variant4cb1388627a22e191c46a9e2d169281417298c02db687f243a68eb6e88010902.lean/declarations/simplicialmesh--8db14deb521156671af48ced.md) | 21 | `declaration-track:8db14deb521156671af48ced2bed917f76fa9a0292af2028b6ed270031eac3f2` |
| 3 | `def` | [regularTetrahedronBaseVertexCount](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TetrahedralSphereRefinement/Variant4cb1388627a22e191c46a9e2d169281417298c02db687f243a68eb6e88010902.lean/declarations/regulartetrahedronbasevertexcount--86053bfd37a0ac129702b244.md) | 26 | `declaration-track:86053bfd37a0ac129702b244f197994c75f00a6a150221f16be9c910a17588f4` |
| 4 | `def` | [abstractRefinedVertexCount](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TetrahedralSphereRefinement/Variant4cb1388627a22e191c46a9e2d169281417298c02db687f243a68eb6e88010902.lean/declarations/abstractrefinedvertexcount--75a09e6932c30647aa78defe.md) | 33 | `declaration-track:75a09e6932c30647aa78defe1eeb374c36e2fdf1636dc5207b160b95afe84c6f` |
| 5 | `theorem` | [regular_tetrahedron_base_vertex_count_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TetrahedralSphereRefinement/Variant4cb1388627a22e191c46a9e2d169281417298c02db687f243a68eb6e88010902.lean/declarations/regular-tetrahedron-base-vertex-count-eq--42b1a047dd8f854d71117651.md) | 38 | `result-track:42b1a047dd8f854d71117651afde0d759452f53c86061d56dc36d26c4e5cef2f` |
| 6 | `theorem` | [simplicial_mesh_has_level](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TetrahedralSphereRefinement/Variant4cb1388627a22e191c46a9e2d169281417298c02db687f243a68eb6e88010902.lean/declarations/simplicial-mesh-has-level--6e9224ffb1a4930ecb130158.md) | 42 | `result-track:6e9224ffb1a4930ecb130158788f11636e5b08a294833b3ccd676d7a1aab0cc4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
