# ofContinuousMulEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5f3595f960fe6141a4619bbd2846ce1e15f0d44fa9790dce1f0078c870d992ec",
  "kind": "def",
  "lexical_name": "ofContinuousMulEquiv",
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
  "slug": "ofcontinuousmulequiv--755ec67490f9ba6ed80ff6fd",
  "source": {
    "blob": "928e4fa0e1e96f7043b10534e104ee827cc2cab1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 269,
    "line": 260,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variantab9e6daf9cabb54add14e6f44fe9f9a53d797178875497c7b0a07c13fcf0f5e8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:755ec67490f9ba6ed80ff6fd3e2ab40f039643086c80418fe02bf7e59c6b3f21",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variantab9e6daf9cabb54add14e6f44fe9f9a53d797178875497c7b0a07c13fcf0f5e8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5f3595f960fe6141a4619bbd2846ce1e15f0d44fa9790dce1f0078c870d992ec`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 260–269.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def ofContinuousMulEquiv {G : ProfiniteGrp.{u}} {H : Type v} [TopologicalSpace H]
    [Group H] [IsTopologicalGroup H] (e : G ≃ₜ* H) : ProfiniteGrp.{v} :=
  let _ : CompactSpace H := Homeomorph.compactSpace e.toHomeomorph
  let _ : TotallyDisconnectedSpace H := Homeomorph.totallyDisconnectedSpace e.toHomeomorph
  ↧H

/-- Build an isomorphism in the category `ProfiniteGrp` from
a `ContinuousMulEquiv` between `ProfiniteGrp`s. -/
@[to_additive /-- Build an isomorphism in the category `ProfiniteAddGrp` from
a `ContinuousAddEquiv` between `ProfiniteAddGrp`s. -/]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variantab9e6daf9cabb54add14e6f44fe9f9a53d797178875497c7b0a07c13fcf0f5e8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variantab9e6daf9cabb54add14e6f44fe9f9a53d797178875497c7b0a07c13fcf0f5e8.lean#L260).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `928e4fa0e1e96f7043b10534e104ee827cc2cab1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
