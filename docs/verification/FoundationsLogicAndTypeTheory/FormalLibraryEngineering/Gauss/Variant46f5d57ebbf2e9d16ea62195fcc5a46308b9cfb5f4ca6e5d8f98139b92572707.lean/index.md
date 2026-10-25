# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Gauss.Variant46f5d57ebbf2e9d16ea62195fcc5a46308b9cfb5f4ca6e5d8f98139b92572707

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "93cad0a43aa77d97a869fb6ae154449862c5ae79",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Gauss/Variant46f5d57ebbf2e9d16ea62195fcc5a46308b9cfb5f4ca6e5d8f98139b92572707.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Gauss/Variant46f5d57ebbf2e9d16ea62195fcc5a46308b9cfb5f4ca6e5d8f98139b92572707.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Gauss/Variant46f5d57ebbf2e9d16ea62195fcc5a46308b9cfb5f4ca6e5d8f98139b92572707.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `93cad0a43aa77d97a869fb6ae154449862c5ae79`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Gauss/Variant46f5d57ebbf2e9d16ea62195fcc5a46308b9cfb5f4ca6e5d8f98139b92572707.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Gauss/Variant46f5d57ebbf2e9d16ea62195fcc5a46308b9cfb5f4ca6e5d8f98139b92572707.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic.Linarith.Oracle.SimplexAlgorithm.Datatypes` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [GaussM](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Gauss/Variant46f5d57ebbf2e9d16ea62195fcc5a46308b9cfb5f4ca6e5d8f98139b92572707.lean/declarations/gaussm--852128f888413a9a2da7e6a0.md) | 18 | `declaration-track:852128f888413a9a2da7e6a0cd849a835f4a83db2810f60e95489b99aaff85be` |
| 2 | `def` | [findNonzeroRow](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Gauss/Variant46f5d57ebbf2e9d16ea62195fcc5a46308b9cfb5f4ca6e5d8f98139b92572707.lean/declarations/findnonzerorow--23a1dad74d2099def1d56fdd.md) | 23 | `declaration-track:23a1dad74d2099def1d56fddebe9c933d6158a32dc33271d8f2555506e8a14e9` |
| 3 | `def` | [getTableauImp](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Gauss/Variant46f5d57ebbf2e9d16ea62195fcc5a46308b9cfb5f4ca6e5d8f98139b92572707.lean/declarations/gettableauimp--3b368fa42d40615c0fa002fc.md) | 30 | `declaration-track:3b368fa42d40615c0fa002fcd7d303a78251eccfc63a510d087b975099df20fd` |
| 4 | `def` | [getTableau](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Gauss/Variant46f5d57ebbf2e9d16ea62195fcc5a46308b9cfb5f4ca6e5d8f98139b92572707.lean/declarations/gettableau--379dd97f1b7b3a6eb6aaac7f.md) | 78 | `declaration-track:379dd97f1b7b3a6eb6aaac7f9da4ce391f88f4057619593ea42711bff8b52e5a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
