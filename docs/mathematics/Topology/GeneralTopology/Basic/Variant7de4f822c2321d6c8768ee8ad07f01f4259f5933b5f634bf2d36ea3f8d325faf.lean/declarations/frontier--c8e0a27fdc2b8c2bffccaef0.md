# frontier

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c1bb4c71bdccd9e5a36dc2ae7dc2067138e550c207d7ee6178bacf9cdaf3cdcf",
  "kind": "def",
  "lexical_name": "frontier",
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
  "slug": "frontier--c8e0a27fdc2b8c2bffccaef0",
  "source": {
    "blob": "66eb87b03b3a4192974ec7f000aa636e945bf4e1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 149,
    "line": 138,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant7de4f822c2321d6c8768ee8ad07f01f4259f5933b5f634bf2d36ea3f8d325faf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c8e0a27fdc2b8c2bffccaef025cab43acc9102d561c11b4dd79735ed7657b3d4",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variant7de4f822c2321d6c8768ee8ad07f01f4259f5933b5f634bf2d36ea3f8d325faf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c1bb4c71bdccd9e5a36dc2ae7dc2067138e550c207d7ee6178bacf9cdaf3cdcf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 138–149.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def frontier (s : Set X) : Set X :=
  closure s \ interior s

/--
The coborder is defined as the complement of `closure s \ s`,
or the union of `s` and the complement of `∂(s)`.
This is the largest set in which `s` is closed, and `s` is locally closed if and only if
`coborder s` is open.

This is unnamed in the literature, and this name is due to the fact that `coborder s = (border sᶜ)ᶜ`
where `border s = s \ interior s` is the border in the sense of Hausdorff.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant7de4f822c2321d6c8768ee8ad07f01f4259f5933b5f634bf2d36ea3f8d325faf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant7de4f822c2321d6c8768ee8ad07f01f4259f5933b5f634bf2d36ea3f8d325faf.lean#L138).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `66eb87b03b3a4192974ec7f000aa636e945bf4e1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
