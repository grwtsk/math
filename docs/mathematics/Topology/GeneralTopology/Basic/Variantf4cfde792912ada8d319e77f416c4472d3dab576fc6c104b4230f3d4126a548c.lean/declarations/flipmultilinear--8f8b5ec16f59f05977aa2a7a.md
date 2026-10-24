# flipMultilinear

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f1a0c7a40d6aee94441ea931c3382abf11a9ecde8cc6d469b58d87bd59bac9d5",
  "kind": "def",
  "lexical_name": "flipMultilinear",
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
  "slug": "flipmultilinear--8f8b5ec16f59f05977aa2a7a",
  "source": {
    "blob": "1aec35bffddaf94f76bbd74293bc89515d4b7b3f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 926,
    "line": 901,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variantf4cfde792912ada8d319e77f416c4472d3dab576fc6c104b4230f3d4126a548c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8f8b5ec16f59f05977aa2a7a59dbc7a5281f7f97e71776c1f3f7891063627a59",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variantf4cfde792912ada8d319e77f416c4472d3dab576fc6c104b4230f3d4126a548c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_SOURCE_DEPENDENCY"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f1a0c7a40d6aee94441ea931c3382abf11a9ecde8cc6d469b58d87bd59bac9d5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 901–926.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def flipMultilinear (f : G →L[𝕜] ContinuousMultilinearMap 𝕜 E G') :
    ContinuousMultilinearMap 𝕜 E (G →L[𝕜] G') :=
  MultilinearMap.mkContinuous
    { toFun := fun m =>
        LinearMap.mkContinuous
          { toFun := fun x => f x m
            map_add' := fun x y => by simp only [map_add, ContinuousMultilinearMap.add_apply]
            map_smul' := fun c x => by
              simp only [ContinuousMultilinearMap.smul_apply, map_smul, RingHom.id_apply] }
          (‖f‖ * ∏ i, ‖m i‖) fun x => by
          rw [mul_right_comm]
          exact (f x).le_of_opNorm_le (f.le_opNorm x) _
      map_update_add' := fun m i x y => by
        ext1
        simp only [add_apply, ContinuousMultilinearMap.map_update_add, LinearMap.coe_mk,
          LinearMap.mkContinuous_apply, AddHom.coe_mk]
      map_update_smul' := fun m i c x => by
        ext1
        simp only [coe_smul', ContinuousMultilinearMap.map_update_smul, LinearMap.coe_mk,
          LinearMap.mkContinuous_apply, Pi.smul_apply, AddHom.coe_mk] }
    ‖f‖ fun m => by
      dsimp only [MultilinearMap.coe_mk]
      exact LinearMap.mkContinuous_norm_le _ (by positivity) _

end ContinuousLinearMap

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variantf4cfde792912ada8d319e77f416c4472d3dab576fc6c104b4230f3d4126a548c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variantf4cfde792912ada8d319e77f416c4472d3dab576fc6c104b4230f3d4126a548c.lean#L901).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1aec35bffddaf94f76bbd74293bc89515d4b7b3f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
