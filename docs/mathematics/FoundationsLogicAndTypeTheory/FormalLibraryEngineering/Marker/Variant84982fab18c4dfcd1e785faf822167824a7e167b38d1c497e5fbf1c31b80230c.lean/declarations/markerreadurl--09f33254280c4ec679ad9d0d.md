# markerReadURL

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a339ec9e81623ea58daf6b4d401a8f45f796869e3b89f0153f7672214fe7ab7d",
  "kind": "def",
  "lexical_name": "markerReadURL",
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
  "slug": "markerreadurl--09f33254280c4ec679ad9d0d",
  "source": {
    "blob": "cd6c73fd913f0517b6edb269a04673ca1a030a99",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 64,
    "line": 45,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Marker/Variant84982fab18c4dfcd1e785faf822167824a7e167b38d1c497e5fbf1c31b80230c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:09f33254280c4ec679ad9d0dcc4909180826f5ea0ae3ac5233a367cd6e048b56",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Marker/Variant84982fab18c4dfcd1e785faf822167824a7e167b38d1c497e5fbf1c31b80230c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a339ec9e81623ea58daf6b4d401a8f45f796869e3b89f0153f7672214fe7ab7d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 45–64.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def markerReadURL (container : Container) (repo sha : String) : IO String := do
  return s!"{← container.getURL}/{markerPath repo sha}"

/--
Write the marker file for `sha` and hand it to `transfer`, which moves it to
`markerURL`; every upload tool shares these marker mechanics. The blob
content is the SHA itself, as a debugging aid; existence is the signal. A
marker may be overwritten freely, so a re-upload of an already-marked commit
does not fail here.

Runs after the `.ltar` artifact uploads complete. A `transfer` failure warns
instead of throwing: the artifacts are already uploaded, and the only loss is
that `cache query` will not find this commit.

A marker applies only to its own destination: it records that the writing
`put` completed there. When several destinations receive uploads
independently, one destination's marker does not say that the destination
holds a commit's full transitive closure; the infrastructure documentation
governs when a destination's markers may be trusted for completeness.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Marker/Variant84982fab18c4dfcd1e785faf822167824a7e167b38d1c497e5fbf1c31b80230c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Marker/Variant84982fab18c4dfcd1e785faf822167824a7e167b38d1c497e5fbf1c31b80230c.lean#L45).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cd6c73fd913f0517b6edb269a04673ca1a030a99` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
