# CF04ResearchInput

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:cd3a90e45da13b3c825dfa2f54f0a7f79f95aa34e234ad2a989ce1433e57b0fc",
  "kind": "structure",
  "lexical_name": "CF04ResearchInput",
  "mathematical_admission": "NOT_CLAIMED",
  "metrics": [
    {
      "coverage": "No exact-source compiler-observed verification dependency graph supplied.",
      "id": "spectral_log_volume",
      "profile": "docs/reference/ranking-profile.json",
      "profile_id": "spectral-volume-radius3-v1",
      "profile_sha256": "f8800b2ae8ab1d08df856bc79abc53dbafa1cbd922963b7247e927bf0ed9afd6",
      "radius": 3,
      "reason": "verification_dependency_graph_unavailable",
      "status": "UNAVAILABLE",
      "value": null
    }
  ],
  "schema": "grwtsk.source-declaration-article/1",
  "slug": "cf04researchinput--2d985afae791b160e3635a13",
  "source": {
    "blob": "42b2bd578ebaf63790dfe2c7c67189d1ccc31af8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 190,
    "line": 175,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Claims/Varianta379f92b58d4a42994f02b11b294cd1541b21c6550729d54ad74ba6c6706625a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2d985afae791b160e3635a1361b2afa0fddd95e50c3e04c273e44d2d2e394bab",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Claims/Varianta379f92b58d4a42994f02b11b294cd1541b21c6550729d54ad74ba6c6706625a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:cd3a90e45da13b3c825dfa2f54f0a7f79f95aa34e234ad2a989ce1433e57b0fc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 175–190.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure CF04ResearchInput
    {S : RealizationSystem.{uObj, uHom}}
    (M : ControlledPlaneModel.{uObj, uHom, vObj, vHom, uData} S) : Prop where
  weightPreserved :
    ∀ c,
      TraversalWeightPreserved
        M.traversalWeight (M.fixedTraversalWeight c)
        (M.traversalTransport c)
  sourceWeightCorrect :
    TraversalWeightCorrect M.occurs M.traversalWeight
  fixedWeightCorrect :
    ∀ c,
      TraversalWeightCorrect
        (M.fixedOccurs c) (M.fixedTraversalWeight c)

/-- CF-05: equality of geometric and control observations separates entities. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Claims/Varianta379f92b58d4a42994f02b11b294cd1541b21c6550729d54ad74ba6c6706625a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Claims/Varianta379f92b58d4a42994f02b11b294cd1541b21c6550729d54ad74ba6c6706625a.lean#L175).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `42b2bd578ebaf63790dfe2c7c67189d1ccc31af8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
