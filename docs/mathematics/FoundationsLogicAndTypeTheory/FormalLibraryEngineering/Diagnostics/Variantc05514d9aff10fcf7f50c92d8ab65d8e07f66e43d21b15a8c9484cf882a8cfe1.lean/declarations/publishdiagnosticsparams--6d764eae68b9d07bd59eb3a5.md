# PublishDiagnosticsParams

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:42094270b6cc9afd44f194139841da2174b99b1ba52299ecf0ba45e53feb88b3",
  "kind": "structure",
  "lexical_name": "PublishDiagnosticsParams",
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
  "slug": "publishdiagnosticsparams--6d764eae68b9d07bd59eb3a5",
  "source": {
    "blob": "9353793f7316dca0ba36b16a9fd6cec46e487441",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 174,
    "line": 159,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Diagnostics/Variantc05514d9aff10fcf7f50c92d8ab65d8e07f66e43d21b15a8c9484cf882a8cfe1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6d764eae68b9d07bd59eb3a573d72aeb0579205069cfad3bfc0b3a41ff9cc6cb",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Diagnostics/Variantc05514d9aff10fcf7f50c92d8ab65d8e07f66e43d21b15a8c9484cf882a8cfe1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:42094270b6cc9afd44f194139841da2174b99b1ba52299ecf0ba45e53feb88b3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 159–174.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure PublishDiagnosticsParams where
  uri : DocumentUri
  version? : Option Int := none
  /--
  Whether the client should append this set of diagnostics to the previous set
  rather than replacing the previous set by this one (the default LSP behavior).
  `false` means the client should replace.
  `none` is equivalent to `false`.
  This is a Lean-specific extension (see `LeanClientCapabilities`).
  -/
  isIncremental? : Option Bool := none
  diagnostics : Array Diagnostic
  deriving Inhabited, BEq, ToJson, FromJson

end Lsp
end Lean
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Diagnostics/Variantc05514d9aff10fcf7f50c92d8ab65d8e07f66e43d21b15a8c9484cf882a8cfe1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Diagnostics/Variantc05514d9aff10fcf7f50c92d8ab65d8e07f66e43d21b15a8c9484cf882a8cfe1.lean#L159).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9353793f7316dca0ba36b16a9fd6cec46e487441` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
