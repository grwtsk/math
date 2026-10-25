# readResponseAs

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:473dbae547bdd62d6f8b6f407c386dffd268e9f3bcf42621b1ba4e41783b1d13",
  "kind": "def",
  "lexical_name": "readResponseAs",
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
  "slug": "readresponseas--8840888146aecbac4f7d6e20",
  "source": {
    "blob": "ca8bc885cd9eb30b465f63a4e5b2a4837ee25381",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 477,
    "line": 462,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/JsonRpc/Variant8a124befa3dd4b612998eba59db8c2851e95eed146f4c6051f0e51b38cbf40fc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8840888146aecbac4f7d6e200222cab0324e4bf5b4961d71ed5d3ec2123d5928",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/JsonRpc/Variant8a124befa3dd4b612998eba59db8c2851e95eed146f4c6051f0e51b38cbf40fc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:473dbae547bdd62d6f8b6f407c386dffd268e9f3bcf42621b1ba4e41783b1d13`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 462–477.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
  def readResponseAs (h : FS.Stream) (nBytes : Nat) (expectedID : RequestID) (α) [FromJson α] : IO (Response α) := do
    let m ← h.readMessage nBytes
    match m with
    | Message.response id result =>
      if id == expectedID then
        match fromJson? result with
        | Except.ok v => pure ⟨expectedID, v⟩
        | Except.error inner => throw $ userError s!"Unexpected result '{result.compress}'\n{inner}"
      else
        throw $ userError s!"Expected id {expectedID}, got id {id}"
    | _ => throw $ userError s!"Expected JSON-RPC response, got: '{(toJson m).compress}'"
end

section
  variable [ToJson α]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/JsonRpc/Variant8a124befa3dd4b612998eba59db8c2851e95eed146f4c6051f0e51b38cbf40fc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/JsonRpc/Variant8a124befa3dd4b612998eba59db8c2851e95eed146f4c6051f0e51b38cbf40fc.lean#L462).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ca8bc885cd9eb30b465f63a4e5b2a4837ee25381` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
