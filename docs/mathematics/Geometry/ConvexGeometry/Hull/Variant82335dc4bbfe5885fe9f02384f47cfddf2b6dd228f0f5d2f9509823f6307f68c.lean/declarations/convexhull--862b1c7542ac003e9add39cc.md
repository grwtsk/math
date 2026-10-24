# convexHull

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f7df581575b38bc485db9fa8891ebf0a9e83baf0da69dac433890c472444fb11",
  "kind": "def",
  "lexical_name": "convexHull",
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
  "slug": "convexhull--862b1c7542ac003e9add39cc",
  "source": {
    "blob": "3cf38f5fdf892480226551e0fc93d8b8626694d8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 52,
    "line": 43,
    "path": "GRWTSK/Geometry/ConvexGeometry/Hull/Variant82335dc4bbfe5885fe9f02384f47cfddf2b6dd228f0f5d2f9509823f6307f68c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:862b1c7542ac003e9add39cc23a227a592a92cff993047f13903fb14ecc1895a",
  "verification": {
    "reference": "docs/verification/Geometry/ConvexGeometry/Hull/Variant82335dc4bbfe5885fe9f02384f47cfddf2b6dd228f0f5d2f9509823f6307f68c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f7df581575b38bc485db9fa8891ebf0a9e83baf0da69dac433890c472444fb11`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 43–52.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def convexHull : ClosureOperator (Set E) :=
  ClosureOperator.mk₃ (fun s => ⋂ (t : Set E) (_ : s ⊆ t) (_ : Convex 𝕜 t), t) (Convex 𝕜)
    (fun _ =>
      Set.subset_iInter fun _ => Set.subset_iInter fun hst => Set.subset_iInter fun _ => hst)
    (fun _ => convex_iInter fun _ => convex_iInter fun _ => convex_iInter id) fun _ t hst ht =>
    Set.iInter_subset_of_subset t <| Set.iInter_subset_of_subset hst <| Set.iInter_subset _ ht
#align convex_hull convexHull

variable (s : Set E)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/ConvexGeometry/Hull/Variant82335dc4bbfe5885fe9f02384f47cfddf2b6dd228f0f5d2f9509823f6307f68c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ConvexGeometry/Hull/Variant82335dc4bbfe5885fe9f02384f47cfddf2b6dd228f0f5d2f9509823f6307f68c.lean#L43).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3cf38f5fdf892480226551e0fc93d8b8626694d8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
