# size

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a6e7f3354aa4c30e89652b03eaeaa2e99f60032698216abe9016c91c09a70ad3",
  "kind": "def",
  "lexical_name": "size",
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
  "slug": "size--af1ccf09506f5faafed4e9e7",
  "source": {
    "blob": "9cd1124b07777808d3b3eeba696d5599494db31f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 490,
    "line": 484,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Iterators/Variant8efb4b8bb7fdc6b6d3e2f2a65fc7f47114f156d93f88c5691a861953c3a8d2d1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:af1ccf09506f5faafed4e9e75aa75db8e6badcc77a5dd5606bb484c1bfdc9a88",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Iterators/Variant8efb4b8bb7fdc6b6d3e2f2a65fc7f47114f156d93f88c5691a861953c3a8d2d1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a6e7f3354aa4c30e89652b03eaeaa2e99f60032698216abe9016c91c09a70ad3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 484–490.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def size [Rxi.HasSize α] [UpwardEnumerable α] (r : Roi α) : Nat :=
  match UpwardEnumerable.succ? r.lower with
  | none => 0
  | some lower => Rxi.HasSize.size lower

section Iterator

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Iterators/Variant8efb4b8bb7fdc6b6d3e2f2a65fc7f47114f156d93f88c5691a861953c3a8d2d1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Iterators/Variant8efb4b8bb7fdc6b6d3e2f2a65fc7f47114f156d93f88c5691a861953c3a8d2d1.lean#L484).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9cd1124b07777808d3b3eeba696d5599494db31f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
