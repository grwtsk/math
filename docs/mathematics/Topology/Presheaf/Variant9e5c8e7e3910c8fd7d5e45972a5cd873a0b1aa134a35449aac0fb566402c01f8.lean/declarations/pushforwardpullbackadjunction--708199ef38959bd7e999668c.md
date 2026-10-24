# pushforwardPullbackAdjunction

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:928347e8dc5aee0ae473bac4a94d9765466f2ed0abdc1bbb878d469cb0053f9f",
  "kind": "def",
  "lexical_name": "pushforwardPullbackAdjunction",
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
  "slug": "pushforwardpullbackadjunction--708199ef38959bd7e999668c",
  "source": {
    "blob": "bca0e24738d78f3daabbdb9fb7e66be26ced0ade",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 273,
    "line": 269,
    "path": "GRWTSK/Topology/Presheaf/Variant9e5c8e7e3910c8fd7d5e45972a5cd873a0b1aa134a35449aac0fb566402c01f8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:708199ef38959bd7e999668ca7c779d735e23218fee4fb342c1bd6070578adf5",
  "verification": {
    "reference": "docs/verification/Topology/Presheaf/Variant9e5c8e7e3910c8fd7d5e45972a5cd873a0b1aa134a35449aac0fb566402c01f8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:928347e8dc5aee0ae473bac4a94d9765466f2ed0abdc1bbb878d469cb0053f9f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 269–273.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def pushforwardPullbackAdjunction {X Y : TopCat.{v}} (f : X ⟶ Y) :
    pullback C f ⊣ pushforward C f :=
  Functor.lanAdjunction _ _

/-- Pulling back along a homeomorphism is the same as pushing forward along its inverse. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Topology/Presheaf/Variant9e5c8e7e3910c8fd7d5e45972a5cd873a0b1aa134a35449aac0fb566402c01f8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/Presheaf/Variant9e5c8e7e3910c8fd7d5e45972a5cd873a0b1aa134a35449aac0fb566402c01f8.lean#L269).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bca0e24738d78f3daabbdb9fb7e66be26ced0ade` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
