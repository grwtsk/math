# Iter.Total.toListRev

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4f31a3fc1dbb2732f76097f542c477fdbd9317a568c4c7f741c8c3f975d36f2e",
  "kind": "def",
  "lexical_name": "Iter.Total.toListRev",
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
  "slug": "iter-total-tolistrev--7ff0cffd838d11fe6ec8e9e8",
  "source": {
    "blob": "329917d62fd7b21ee77d3e07835db63170159f4f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 104,
    "line": 93,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Collect/Variant81a4e5da28254d0e39c095c32e44023d9b6d38959fda003ac7f5fbb06b7fc77d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7ff0cffd838d11fe6ec8e9e8eaf68c3f200e3c397b69e20ada0e83f1d7094ff1",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Collect/Variant81a4e5da28254d0e39c095c32e44023d9b6d38959fda003ac7f5fbb06b7fc77d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4f31a3fc1dbb2732f76097f542c477fdbd9317a568c4c7f741c8c3f975d36f2e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 93–104.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Iter.Total.toListRev {α : Type w} {β : Type w}
    [Iterator α Id β] [Finite α Id] (it : Iter.Total (α := α) β) : List β :=
  it.it.toListRev

/--
Traverses the given iterator and stores the emitted values in a list. Because
lists are prepend-only, `toListRev` is usually more efficient that `toList`.

If the iterator is not finite, this function might run forever. The variant
`it.ensureTermination.toList` always terminates after finitely many steps.
-/
@[cbv_opaque, always_inline, inline]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Collect/Variant81a4e5da28254d0e39c095c32e44023d9b6d38959fda003ac7f5fbb06b7fc77d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Collect/Variant81a4e5da28254d0e39c095c32e44023d9b6d38959fda003ac7f5fbb06b7fc77d.lean#L93).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `329917d62fd7b21ee77d3e07835db63170159f4f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
