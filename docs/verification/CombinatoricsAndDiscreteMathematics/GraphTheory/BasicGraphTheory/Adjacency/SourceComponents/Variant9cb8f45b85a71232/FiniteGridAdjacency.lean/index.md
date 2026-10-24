# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.BasicGraphTheory.Adjacency.SourceComponents.Variant9cb8f45b85a71232.FiniteGridAdjacency

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0e8bc18d6e19808232e6431914043a9abbb5fe0a",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/BasicGraphTheory/Adjacency/SourceComponents/Variant9cb8f45b85a71232/FiniteGridAdjacency.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/BasicGraphTheory/Adjacency/SourceComponents/Variant9cb8f45b85a71232/FiniteGridAdjacency.lean/index.md) · [Full source](../../../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/BasicGraphTheory/Adjacency/SourceComponents/Variant9cb8f45b85a71232/FiniteGridAdjacency.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0e8bc18d6e19808232e6431914043a9abbb5fe0a`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/BasicGraphTheory/Adjacency/SourceComponents/Variant9cb8f45b85a71232/FiniteGridAdjacency.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/GraphTheory/BasicGraphTheory/Adjacency/SourceComponents/Variant9cb8f45b85a71232/FiniteGridAdjacency.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Folder.Basic` — import line 19; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [GridShape](../../../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/BasicGraphTheory/Adjacency/SourceComponents/Variant9cb8f45b85a71232/FiniteGridAdjacency.lean/declarations/gridshape--42f775f5589ced8d30d8922b.md) | 36 | `declaration-track:42f775f5589ced8d30d8922b0aa642b17a0362312410aec93666f16554ad8072` |
| 2 | `abbrev` | [Cell](../../../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/BasicGraphTheory/Adjacency/SourceComponents/Variant9cb8f45b85a71232/FiniteGridAdjacency.lean/declarations/cell--ac7d4112cfe49a47a0d99865.md) | 41 | `declaration-track:ac7d4112cfe49a47a0d99865bd18ea9a84fb3556c6faff70765c64990fe2a55f` |
| 3 | `def` | [EdgeAdjacent](../../../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/BasicGraphTheory/Adjacency/SourceComponents/Variant9cb8f45b85a71232/FiniteGridAdjacency.lean/declarations/edgeadjacent--b288147f87b7c527b46a882c.md) | 43 | `declaration-track:b288147f87b7c527b46a882cc9a135c5968828644931c1f532935afa7fc91ad4` |
| 4 | `theorem` | [edgeAdjacent_symm](../../../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/BasicGraphTheory/Adjacency/SourceComponents/Variant9cb8f45b85a71232/FiniteGridAdjacency.lean/declarations/edgeadjacent-symm--d3c468d8db36b84b69a9b97f.md) | 49 | `result-track:d3c468d8db36b84b69a9b97f4d8bae2ffcb1dbc9ff814f6adda9b6fa640cda67` |
| 5 | `theorem` | [edgeAdjacent_irrefl](../../../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/BasicGraphTheory/Adjacency/SourceComponents/Variant9cb8f45b85a71232/FiniteGridAdjacency.lean/declarations/edgeadjacent-irrefl--6122e5b7694f81a3a9f593b0.md) | 60 | `result-track:6122e5b7694f81a3a9f593b0a0329eaf2e4b183bc0fca36b2962aa0e265352fc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
