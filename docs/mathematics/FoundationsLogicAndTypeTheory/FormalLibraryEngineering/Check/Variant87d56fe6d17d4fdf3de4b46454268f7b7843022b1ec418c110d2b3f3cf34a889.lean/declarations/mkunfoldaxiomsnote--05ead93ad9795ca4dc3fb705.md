# mkUnfoldAxiomsNote

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:acbe7487be1996d29976d9fb095b4f46ea84c7badeec032717fb8a06cd7e32eb",
  "kind": "def",
  "lexical_name": "mkUnfoldAxiomsNote",
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
  "slug": "mkunfoldaxiomsnote--05ead93ad9795ca4dc3fb705",
  "source": {
    "blob": "139c054faa039d297522f6f79da2ea0e673560f9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 231,
    "line": 207,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Check/Variant87d56fe6d17d4fdf3de4b46454268f7b7843022b1ec418c110d2b3f3cf34a889.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:05ead93ad9795ca4dc3fb70534628578f5df8b9e16ca37a6ea51e9b03037e7d2",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Check/Variant87d56fe6d17d4fdf3de4b46454268f7b7843022b1ec418c110d2b3f3cf34a889.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:acbe7487be1996d29976d9fb095b4f46ea84c7badeec032717fb8a06cd7e32eb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 207–231.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mkUnfoldAxiomsNote (givenType expectedType : Expr) : MetaM MessageData := do
  let env ← getEnv
  if env.header.isModule then
    let origDiag := (← get).diag
    try
      let _ ← observing <| withOptions (diagnostics.set · true)  <| isDefEq givenType expectedType
      let blocked := (← get).diag.unfoldAxiomCounter.toList.filterMap fun (n, count) => do
        let count := count - origDiag.unfoldAxiomCounter.findD n 0
        guard <| count > 0 && getOriginalConstKind? env n matches some .defn
        return m!"{.ofConstName n} ↦ {count}"
      if !blocked.isEmpty then
        return MessageData.note m!"The following definitions were not unfolded because \
          their definition is not exposed:{indentD <| .joinSep blocked Format.line}"
    finally
      modify ({ · with diag := origDiag })
  return .nil

/--
Return error message "has type{givenType}\nbut is expected to have type{expectedType}"
Adds the type’s types unless they are defeq.

If `trailing?` is non-`none`, it is appended to the end of the message. This requires modifying the
produced message, so prefer specifying `trailing?` over appending a message to the result of this
function. Any expressions appearing in the trailing message should be included in `trailingExprs`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Check/Variant87d56fe6d17d4fdf3de4b46454268f7b7843022b1ec418c110d2b3f3cf34a889.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Check/Variant87d56fe6d17d4fdf3de4b46454268f7b7843022b1ec418c110d2b3f3cf34a889.lean#L207).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `139c054faa039d297522f6f79da2ea0e673560f9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
