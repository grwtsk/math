# getNumBuiltinAttributesImpl

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4a62e49c6be8a0c5bc656cce7b2e408ce35484f41bd50c648660f2ca3a133b1a",
  "kind": "def",
  "lexical_name": "getNumBuiltinAttributesImpl",
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
  "slug": "getnumbuiltinattributesimpl--eb64e4b6874953b8e01b1680",
  "source": {
    "blob": "599cf4d7969ffc13972ba5218b17c1ad228d081b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 527,
    "line": 524,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Attributes/Varianta684ef14c33f5bac6e197010a6486682ea7997fece62148f71e49b9adee0ba82.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:eb64e4b6874953b8e01b1680fc827be5069dfaf93e5e1a6fad3f2d0ffc0635aa",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Attributes/Varianta684ef14c33f5bac6e197010a6486682ea7997fece62148f71e49b9adee0ba82.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4a62e49c6be8a0c5bc656cce7b2e408ce35484f41bd50c648660f2ca3a133b1a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 524–527.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[export lean_get_num_attributes] def getNumBuiltinAttributesImpl : IO Nat :=
  return (← attributeMapRef.get).size

end Lean
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Attributes/Varianta684ef14c33f5bac6e197010a6486682ea7997fece62148f71e49b9adee0ba82.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Attributes/Varianta684ef14c33f5bac6e197010a6486682ea7997fece62148f71e49b9adee0ba82.lean#L524).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `599cf4d7969ffc13972ba5218b17c1ad228d081b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
