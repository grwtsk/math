# printWarning

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b361ae260249ecfd06f699af9dd994eb51a45900aee2e4a00147ce92c36acd5f",
  "kind": "def",
  "lexical_name": "printWarning",
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
  "slug": "printwarning--d2f404caff186fd190db0331",
  "source": {
    "blob": "79aac6bb16a2744c6841a9575ee4a20ab117bc39",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 125,
    "line": 117,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Frontend/Variantf1d74d7fc96d9243c55538ce79e401d3ed8911222c07867e542a0d5300bffa3e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d2f404caff186fd190db0331196b66a295bb04ca37afb94eea84271b57143ee4",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Frontend/Variantf1d74d7fc96d9243c55538ce79e401d3ed8911222c07867e542a0d5300bffa3e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b361ae260249ecfd06f699af9dd994eb51a45900aee2e4a00147ce92c36acd5f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 117–125.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def printWarning (declName : Name) (warning : MessageData) (useErrorFormat : Bool := false)
  (filePath : System.FilePath := default) : CoreM MessageData := do
  if useErrorFormat then
    if let some range ← findDeclarationRanges? declName then
      return m!"{filePath}:{range.range.pos.line}:{range.range.pos.column + 1}: error: {
          ← mkConstWithLevelParams declName} {warning}"
  pure m!"#check {← mkConstWithLevelParams declName} /- {warning} -/"

/-- Formats a map of linter warnings using `print_warning`, sorted by line number. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Frontend/Variantf1d74d7fc96d9243c55538ce79e401d3ed8911222c07867e542a0d5300bffa3e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Frontend/Variantf1d74d7fc96d9243c55538ce79e401d3ed8911222c07867e542a0d5300bffa3e.lean#L117).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `79aac6bb16a2744c6841a9575ee4a20ab117bc39` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
