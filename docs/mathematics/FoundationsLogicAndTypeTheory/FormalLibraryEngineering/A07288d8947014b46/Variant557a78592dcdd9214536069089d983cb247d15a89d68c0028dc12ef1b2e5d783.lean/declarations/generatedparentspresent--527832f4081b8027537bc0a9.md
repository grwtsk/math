# GeneratedParentsPresent

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:97cd38c84a0b07a3b15418ec8543b5c771a96b60a92d52ad5a7cef7d75531da1",
  "kind": "def",
  "lexical_name": "GeneratedParentsPresent",
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
  "slug": "generatedparentspresent--527832f4081b8027537bc0a9",
  "source": {
    "blob": "6f5623d169fdb0a1eddd14f8bb52cf1144fceffd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 23,
    "line": 15,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/A07288d8947014b46/Variant557a78592dcdd9214536069089d983cb247d15a89d68c0028dc12ef1b2e5d783.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:527832f4081b8027537bc0a9937f8df5bec4149f5b00b53ddc5e68f4af424b67",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/A07288d8947014b46/Variant557a78592dcdd9214536069089d983cb247d15a89d68c0028dc12ef1b2e5d783.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:97cd38c84a0b07a3b15418ec8543b5c771a96b60a92d52ad5a7cef7d75531da1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 15–23.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def GeneratedParentsPresent (snapshot : Snapshot) : Prop :=
  ∀ entity ∈ snapshot.entities,
    entity.kind = .generatedSupport →
      ∃ parentId, entity.generatedParent = some parentId ∧
        parentId ∈ snapshot.entities.map (·.id)

end Snapshot

end Mathematics.Inventory
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/A07288d8947014b46/Variant557a78592dcdd9214536069089d983cb247d15a89d68c0028dc12ef1b2e5d783.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/A07288d8947014b46/Variant557a78592dcdd9214536069089d983cb247d15a89d68c0028dc12ef1b2e5d783.lean#L15).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6f5623d169fdb0a1eddd14f8bb52cf1144fceffd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
