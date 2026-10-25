# collectAvailableImports

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5b10e031c9c3bb7efc0361bf0849ae229467a594f08c19da72db07464f016a2e",
  "kind": "def",
  "lexical_name": "collectAvailableImports",
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
  "slug": "collectavailableimports--0d49a09d30067559821902ae",
  "source": {
    "blob": "25cd7b1bd6056247fcb80221d8b0d3626131d186",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 129,
    "line": 118,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ImportCompletion/Variantfb287f055d44d1b10f19920bd3dd32a84b8c1bd964aeb4d91dc5189254e7f8af.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0d49a09d30067559821902aedb562729c7c11d4a9ea00ac093868724b2101ee4",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ImportCompletion/Variantfb287f055d44d1b10f19920bd3dd32a84b8c1bd964aeb4d91dc5189254e7f8af.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5b10e031c9c3bb7efc0361bf0849ae229467a594f08c19da72db07464f016a2e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 118–129.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def collectAvailableImports : IO AvailableImports := do
  match ← ImportCompletion.collectAvailableImportsFromLake with
  | none =>
    -- lake is not available => walk LEAN_SRC_PATH for an approximation
    ImportCompletion.collectAvailableImportsFromSrcSearchPath
  | some availableImports => pure availableImports

/--
Sets the `data?` field of every `CompletionItem` in `completionList` using `params`. Ensures that
`completionItem/resolve` requests can be routed to the correct file worker even for
`CompletionItem`s produced by the import completion.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ImportCompletion/Variantfb287f055d44d1b10f19920bd3dd32a84b8c1bd964aeb4d91dc5189254e7f8af.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ImportCompletion/Variantfb287f055d44d1b10f19920bd3dd32a84b8c1bd964aeb4d91dc5189254e7f8af.lean#L118).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `25cd7b1bd6056247fcb80221d8b0d3626131d186` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
