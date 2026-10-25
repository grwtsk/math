# mkInaccessibleUserName

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:bd377c92371d76524a671af51146926b267d65035676708430fec121fe363a96",
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
  "slug": "mkinaccessibleusername--7201cc78adcdb282e7c34fd8",
  "source": {
    "blob": "fba62a5b700d9d22fd11e2f8726fe4d85bf5b754",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 74,
    "line": 58,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Hygiene/Variant1f4304254fb225c42914df5c756943bca8ba0188b1ac37b48c8d0e0722e2143e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7201cc78adcdb282e7c34fd8e7dd01645e0a9cc3ab7c4b22a62de855e54c596a",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Hygiene/Variant1f4304254fb225c42914df5c756943bca8ba0188b1ac37b48c8d0e0722e2143e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:bd377c92371d76524a671af51146926b267d65035676708430fec121fe363a96`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 58–74.

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

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Hygiene/Variant1f4304254fb225c42914df5c756943bca8ba0188b1ac37b48c8d0e0722e2143e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Hygiene/Variant1f4304254fb225c42914df5c756943bca8ba0188b1ac37b48c8d0e0722e2143e.lean#L58).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fba62a5b700d9d22fd11e2f8726fe4d85bf5b754` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
