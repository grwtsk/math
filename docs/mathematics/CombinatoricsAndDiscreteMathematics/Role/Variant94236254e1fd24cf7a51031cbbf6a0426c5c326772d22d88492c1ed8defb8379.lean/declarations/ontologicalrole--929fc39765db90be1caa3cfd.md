# OntologicalRole

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:829cbb4c4c808f4a86f341b2e3b5b89d9c55c0d982501a8b35b172c7ca60dbf7",
  "kind": "inductive",
  "lexical_name": "OntologicalRole",
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
  "slug": "ontologicalrole--929fc39765db90be1caa3cfd",
  "source": {
    "blob": "58385e7ddb0cd36be5338387f2cc7f34677c648a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 35,
    "line": 19,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Role/Variant94236254e1fd24cf7a51031cbbf6a0426c5c326772d22d88492c1ed8defb8379.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:929fc39765db90be1caa3cfdb95ef24dbfa133d3d51198ff640341e642edc77e",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Role/Variant94236254e1fd24cf7a51031cbbf6a0426c5c326772d22d88492c1ed8defb8379.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `inductive` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:829cbb4c4c808f4a86f341b2e3b5b89d9c55c0d982501a8b35b172c7ca60dbf7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 19–35.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
inductive OntologicalRole
  | object
  | structure
  | relation
  | property
  | operation
  | construction
  | invariant
  | statement
  | proof
  | method
  | representation
  | certificate
  deriving DecidableEq, Inhabited, Fintype

/-- Compatibility with the earlier concept-assignment kind. The relation is
not identity: theorem statement, proof, and certificate remain distinct. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Role/Variant94236254e1fd24cf7a51031cbbf6a0426c5c326772d22d88492c1ed8defb8379.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Role/Variant94236254e1fd24cf7a51031cbbf6a0426c5c326772d22d88492c1ed8defb8379.lean#L19).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `58385e7ddb0cd36be5338387f2cc7f34677c648a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
