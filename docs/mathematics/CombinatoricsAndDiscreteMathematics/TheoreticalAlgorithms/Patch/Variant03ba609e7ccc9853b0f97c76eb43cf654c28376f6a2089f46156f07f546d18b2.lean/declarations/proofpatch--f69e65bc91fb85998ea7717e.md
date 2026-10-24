# ProofPatch

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:bd7b7b66fae98b59a4b4a02aa1ecae3b87c93895c59c64c32f0e3b4b12dfa8a3",
  "kind": "inductive",
  "lexical_name": "ProofPatch",
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
  "slug": "proofpatch--f69e65bc91fb85998ea7717e",
  "source": {
    "blob": "ef3f1e42234ace9517747a3d8734b232d7957866",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 63,
    "line": 49,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Patch/Variant03ba609e7ccc9853b0f97c76eb43cf654c28376f6a2089f46156f07f546d18b2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f69e65bc91fb85998ea7717edbd8c03a268593e6fdd70cbaa210567b7ded0ee5",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Patch/Variant03ba609e7ccc9853b0f97c76eb43cf654c28376f6a2089f46156f07f546d18b2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `inductive` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:bd7b7b66fae98b59a4b4a02aa1ecae3b87c93895c59c64c32f0e3b4b12dfa8a3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 49–63.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
inductive ProofPatch where
  | addImport (moduleName : Name)
  | removeImport (moduleName : Name)
  | applyTheorem (theoremName : Name) (substitutions : List (Name × String))
  | rewriteAt (goal : GoalCellId) (location : String)
      (theoremName : Name) (direction : RewriteDirection)
  | replaceProofBody (proofBody : String)
  | fillGoal (goal : GoalCellId) (term : String)
  | replaceTerm (range : SourceRange) (expectedTypeHash : Digest) (typedTerm : String)
  | insertAuxiliary (candidate : LemmaCandidate)
  | renameAuxiliary (oldName newName : Name)
  | deleteRedundantLemma (name : Name)
deriving Repr

/-- Every patch preserves the task identity by construction. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Patch/Variant03ba609e7ccc9853b0f97c76eb43cf654c28376f6a2089f46156f07f546d18b2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Patch/Variant03ba609e7ccc9853b0f97c76eb43cf654c28376f6a2089f46156f07f546d18b2.lean#L49).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ef3f1e42234ace9517747a3d8734b232d7957866` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
