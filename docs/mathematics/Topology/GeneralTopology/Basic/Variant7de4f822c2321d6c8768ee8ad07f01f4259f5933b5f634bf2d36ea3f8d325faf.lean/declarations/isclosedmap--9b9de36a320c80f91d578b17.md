# IsClosedMap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:908e731b1623c02ff4757f842bacc9f82f257926b099d86a6b4f424966435496",
  "kind": "def",
  "lexical_name": "IsClosedMap",
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
  "slug": "isclosedmap--9b9de36a320c80f91d578b17",
  "source": {
    "blob": "66eb87b03b3a4192974ec7f000aa636e945bf4e1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 189,
    "line": 174,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant7de4f822c2321d6c8768ee8ad07f01f4259f5933b5f634bf2d36ea3f8d325faf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9b9de36a320c80f91d578b17c72b596f0c51bea2dcb67edbc5d5c2d6c4d5ca5d",
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

Occurrence: `declaration:908e731b1623c02ff4757f842bacc9f82f257926b099d86a6b4f424966435496`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 174–189.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def IsClosedMap (f : X → Y) : Prop := ∀ U : Set X, IsClosed U → IsClosed (f '' U)

/-- An open quotient map is an open map `f : X → Y` which is both an open map and a quotient map.
Equivalently, it is a surjective continuous open map.
We use the latter characterization as a definition.

Many important quotient maps are open quotient maps, including

- the quotient map from a topological space to its quotient by the action of a group;
- the quotient map from a topological group to its quotient by a normal subgroup;
- the quotient map from a topological space to its separation quotient.

Contrary to general quotient maps,
the category of open quotient maps is closed under `Prod.map`.
-/
@[mk_iff]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant7de4f822c2321d6c8768ee8ad07f01f4259f5933b5f634bf2d36ea3f8d325faf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant7de4f822c2321d6c8768ee8ad07f01f4259f5933b5f634bf2d36ea3f8d325faf.lean#L174).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `66eb87b03b3a4192974ec7f000aa636e945bf4e1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
