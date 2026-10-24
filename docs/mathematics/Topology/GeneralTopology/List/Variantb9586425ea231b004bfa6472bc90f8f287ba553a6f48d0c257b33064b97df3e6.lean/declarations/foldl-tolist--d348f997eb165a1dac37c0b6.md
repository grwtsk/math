# foldl_toList

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:35a2f4bf-f39c-0d27-e479-e7f0bae37062",
  "kind": "theorem",
  "lexical_name": "foldl_toList",
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
  "slug": "foldl-tolist--d348f997eb165a1dac37c0b6",
  "source": {
    "blob": "a5893eaa62aa4fc9a74832d2cc8ac3de5c248a06",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 42,
    "line": 39,
    "path": "GRWTSK/Topology/GeneralTopology/List/Variantb9586425ea231b004bfa6472bc90f8f287ba553a6f48d0c257b33064b97df3e6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d348f997eb165a1dac37c0b6e7c64fb3f65d1f042f5feb5bba6ef41107d1944b",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/List/Variantb9586425ea231b004bfa6472bc90f8f287ba553a6f48d0c257b33064b97df3e6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:35a2f4bf-f39c-0d27-e479-e7f0bae37062`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 39–42.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simp, grind =] theorem foldl_toList (o : Option β) (a : α) (f : α → β → α) :
    o.toList.foldl f a = o.elim a (fun b => f a b) := by
  cases o <;> simp

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/List/Variantb9586425ea231b004bfa6472bc90f8f287ba553a6f48d0c257b33064b97df3e6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/List/Variantb9586425ea231b004bfa6472bc90f8f287ba553a6f48d0c257b33064b97df3e6.lean#L39).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a5893eaa62aa4fc9a74832d2cc8ac3de5c248a06` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
