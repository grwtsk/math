# sorted_convert_to_grammar

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7f215326-67b3-f6dc-7daf-0841bd2ffa66",
  "kind": "theorem",
  "lexical_name": "sorted_convert_to_grammar",
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
  "slug": "sorted-convert-to-grammar--f9e0e375bc6098e229aa6de8",
  "source": {
    "blob": "f3756eeb0ec22e36c363e8cd91ce6787597e4d9e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 309,
    "line": 295,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IndependentWN/Variant4365dbfb5e85735d733956de4b09149dcc05aab4c2bd03c03e7121b0e8bdbbba.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f9e0e375bc6098e229aa6de8fffb4d9d7985c6c147a5c8986126b8e237396e50",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IndependentWN/Variant4365dbfb5e85735d733956de4b09149dcc05aab4c2bd03c03e7121b0e8bdbbba.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7f215326-67b3-f6dc-7daf-0841bd2ffa66`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 295–309.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sorted_convert_to_grammar {context : List (Expr Bool)} {type grammarType : Expr Bool}
    {sort : Bool} (typed : HasType monomorphicArrow context type (.sort sort))
    (grammar : BaseArrowType grammarType) (conversion : Converts type grammarType) :
    type = grammarType := by
  obtain ⟨common, sourcePath, targetPath⟩ := conversion.join
  have equality := grammar.normal.reduces_eq targetPath
  subst common
  have grammarTyped := typed.subject_reduces sourcePath
  have sortEquality := grammar.sort_unique grammarTyped
  subst sort
  have sourceGrammar := sorted_type_classification typed rfl
  exact sourceGrammar.normal.eq_of_converts grammar.normal conversion

/-- Every actual source judgment at a literal-base arrow type has an
annotation-preserving simple-arrow typing in the complete mapped context. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IndependentWN/Variant4365dbfb5e85735d733956de4b09149dcc05aab4c2bd03c03e7121b0e8bdbbba.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IndependentWN/Variant4365dbfb5e85735d733956de4b09149dcc05aab4c2bd03c03e7121b0e8bdbbba.lean#L295).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f3756eeb0ec22e36c363e8cd91ce6787597e4d9e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
