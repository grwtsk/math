# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.PivotAtlas.Variante2f7a0b5d966692c6aff296b7ab7d8381f47bf0c09702e1c5ed1be0b40555528

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3ed2cc4343e082252b07e5b04ac0463c82f36a3a",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PivotAtlas/Variante2f7a0b5d966692c6aff296b7ab7d8381f47bf0c09702e1c5ed1be0b40555528.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PivotAtlas/Variante2f7a0b5d966692c6aff296b7ab7d8381f47bf0c09702e1c5ed1be0b40555528.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PivotAtlas/Variante2f7a0b5d966692c6aff296b7ab7d8381f47bf0c09702e1c5ed1be0b40555528.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3ed2cc4343e082252b07e5b04ac0463c82f36a3a`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PivotAtlas/Variante2f7a0b5d966692c6aff296b7ab7d8381f47bf0c09702e1c5ed1be0b40555528.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PivotAtlas/Variante2f7a0b5d966692c6aff296b7ab7d8381f47bf0c09702e1c5ed1be0b40555528.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Folder.CanonicalPath.Pivot` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [PivotOverlap](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PivotAtlas/Variante2f7a0b5d966692c6aff296b7ab7d8381f47bf0c09702e1c5ed1be0b40555528.lean/declarations/pivotoverlap--f9c90e16e1820853ee84b326.md) | 27 | `declaration-track:f9c90e16e1820853ee84b3260a66313bee77c97f1184376c7b54b25db08d5668` |
| 2 | `structure` | [PivotTransition](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PivotAtlas/Variante2f7a0b5d966692c6aff296b7ab7d8381f47bf0c09702e1c5ed1be0b40555528.lean/declarations/pivottransition--5926b9a1fa36ed3d9de5a647.md) | 34 | `declaration-track:5926b9a1fa36ed3d9de5a6478641fef27bb89406371684b6157892d1e513f578` |
| 3 | `theorem` | [PivotTransition.preserves_index](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PivotAtlas/Variante2f7a0b5d966692c6aff296b7ab7d8381f47bf0c09702e1c5ed1be0b40555528.lean/declarations/pivottransition-preserves-index--52531ef6518f06bbeb38984c.md) | 41 | `result-track:52531ef6518f06bbeb38984ccc702c33e613db097200480b1796344cbd6aea7a` |
| 4 | `structure` | [CanonicalPivotAtlas](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PivotAtlas/Variante2f7a0b5d966692c6aff296b7ab7d8381f47bf0c09702e1c5ed1be0b40555528.lean/declarations/canonicalpivotatlas--43abda8452ac6feca6b271d3.md) | 53 | `declaration-track:43abda8452ac6feca6b271d3153b5093589cabc2c60f1f71fb5348e3d085fa3b` |
| 5 | `theorem` | [CanonicalPivotAtlas.covers_canonical_path](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PivotAtlas/Variante2f7a0b5d966692c6aff296b7ab7d8381f47bf0c09702e1c5ed1be0b40555528.lean/declarations/canonicalpivotatlas-covers-canonical-path--c36af4abf25fd7c1acadc577.md) | 64 | `result-track:c36af4abf25fd7c1acadc5775fc3de41c7afa512e606ab2803542e656d926a7a` |
| 6 | `theorem` | [CanonicalPivotAtlas.cocycle_compatible](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PivotAtlas/Variante2f7a0b5d966692c6aff296b7ab7d8381f47bf0c09702e1c5ed1be0b40555528.lean/declarations/canonicalpivotatlas-cocycle-compatible--6f17fd644c4457cba4ee3c2c.md) | 70 | `result-track:6f17fd644c4457cba4ee3c2ce954a0a06a456062862e8b18fa8641a5b294ddca` |
| 7 | `theorem` | [CanonicalPivotAtlas.barrier_closed](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PivotAtlas/Variante2f7a0b5d966692c6aff296b7ab7d8381f47bf0c09702e1c5ed1be0b40555528.lean/declarations/canonicalpivotatlas-barrier-closed--8d4cd2ca96b7516722877d6e.md) | 76 | `result-track:8d4cd2ca96b7516722877d6e1fe27000d398c58fd6bc34295cff3c01edf1593b` |
| 8 | `theorem` | [CanonicalPivotAtlas.transition_preserves_index](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PivotAtlas/Variante2f7a0b5d966692c6aff296b7ab7d8381f47bf0c09702e1c5ed1be0b40555528.lean/declarations/canonicalpivotatlas-transition-preserves-index--332b316de27c492ea8623af9.md) | 82 | `result-track:332b316de27c492ea8623af997772233d3c5a4cc54cce0b2501caa3dc93b1c2d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
