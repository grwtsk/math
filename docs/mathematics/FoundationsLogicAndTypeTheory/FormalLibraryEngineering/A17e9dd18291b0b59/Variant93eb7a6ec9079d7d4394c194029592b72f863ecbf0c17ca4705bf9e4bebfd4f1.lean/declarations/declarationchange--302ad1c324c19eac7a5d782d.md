# DeclarationChange

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7862f9692a284803a649ab3008201646da29decb3117a91743a42f3c37198bc2",
  "kind": "inductive",
  "lexical_name": "DeclarationChange",
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
  "slug": "declarationchange--302ad1c324c19eac7a5d782d",
  "source": {
    "blob": "b0c886e50056e847972ede366eb7547d4071234b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 24,
    "line": 7,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/A17e9dd18291b0b59/Variant93eb7a6ec9079d7d4394c194029592b72f863ecbf0c17ca4705bf9e4bebfd4f1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:302ad1c324c19eac7a5d782d6535e0af17eb685152b1fbae852c10ab1d574a7d",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/A17e9dd18291b0b59/Variant93eb7a6ec9079d7d4394c194029592b72f863ecbf0c17ca4705bf9e4bebfd4f1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `inductive` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7862f9692a284803a649ab3008201646da29decb3117a91743a42f3c37198bc2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 7–24.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
inductive DeclarationChange
  | added
  | removed
  | renamed
  | movedModule
  | typeChanged
  | valueChanged
  | proofChanged
  | dependencyChanged
  | trustClosureChanged
  | visibilityChanged
  | attributeChanged
  | documentationChanged
  | sourceOnlyChanged
  | unchanged
  deriving DecidableEq, Repr, Inhabited

end Mathematics.Extractor
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/A17e9dd18291b0b59/Variant93eb7a6ec9079d7d4394c194029592b72f863ecbf0c17ca4705bf9e4bebfd4f1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/A17e9dd18291b0b59/Variant93eb7a6ec9079d7d4394c194029592b72f863ecbf0c17ca4705bf9e4bebfd4f1.lean#L7).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b0c886e50056e847972ede366eb7547d4071234b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
