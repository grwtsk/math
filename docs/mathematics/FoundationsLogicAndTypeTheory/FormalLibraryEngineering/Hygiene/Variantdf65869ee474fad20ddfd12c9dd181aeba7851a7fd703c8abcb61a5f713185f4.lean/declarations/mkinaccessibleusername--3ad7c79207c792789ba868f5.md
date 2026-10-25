# mkInaccessibleUserName

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:06dde0fdaa03e0f0f431a380fadb226be2f18080174d9f760d97de1cf8d5bf7e",
  "kind": "def",
  "lexical_name": "mkInaccessibleUserName",
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
  "slug": "mkinaccessibleusername--3ad7c79207c792789ba868f5",
  "source": {
    "blob": "7915386f8cdc7957f3dcf68392343a3dc3ee4770",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 82,
    "line": 66,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Hygiene/Variantdf65869ee474fad20ddfd12c9dd181aeba7851a7fd703c8abcb61a5f713185f4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3ad7c79207c792789ba868f5f2f5031baee7d082e66ad3661de7f8c57385e4cf",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Hygiene/Variantdf65869ee474fad20ddfd12c9dd181aeba7851a7fd703c8abcb61a5f713185f4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:06dde0fdaa03e0f0f431a380fadb226be2f18080174d9f760d97de1cf8d5bf7e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 66–82.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def mkInaccessibleUserName (unicode : Bool) : Name → Name
  | .num p@(.str ..) idx =>
    mkInaccessibleUserNameAux unicode p idx
  | .num .anonymous idx =>
    mkInaccessibleUserNameAux unicode Name.anonymous idx
  | .num p idx =>
    if unicode then
      (mkInaccessibleUserName unicode p).appendAfter ("⁻" ++ idx.toSuperscriptString)
    else
      Name.mkNum (mkInaccessibleUserName unicode p) idx
  | n => n

register_builtin_option pp.sanitizeNames : Bool := {
  defValue := true
  descr    := "add suffix to shadowed/inaccessible variables when pretty printing"
}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Hygiene/Variantdf65869ee474fad20ddfd12c9dd181aeba7851a7fd703c8abcb61a5f713185f4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Hygiene/Variantdf65869ee474fad20ddfd12c9dd181aeba7851a7fd703c8abcb61a5f713185f4.lean#L66).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7915386f8cdc7957f3dcf68392343a3dc3ee4770` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
