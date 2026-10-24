# coe_of_of

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2a029123-da4b-9d88-34c8-8867f9634d13",
  "kind": "theorem",
  "lexical_name": "coe_of_of",
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
  "slug": "coe-of-of--59e6a6294cdbb7d30ec9ef4a",
  "source": {
    "blob": "2a79e06344ef81f6863e34e853d39c357fc6ad5f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 162,
    "line": 153,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Varianta1ddc8be9bb6e3dca3e99abd8e12ebd8b96d2c060feed61fd5bc482807f7cea4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:59e6a6294cdbb7d30ec9ef4a105c90f4868a2c1450549c35ea2ef3408ef3953b",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Varianta1ddc8be9bb6e3dca3e99abd8e12ebd8b96d2c060feed61fd5bc482807f7cea4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2a029123-da4b-9d88-34c8-8867f9634d13`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 153–162.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simp] theorem coe_of_of {X Y : Type u} [TopologicalSpace X] [TopologicalSpace Y]
    {f : C(X, Y)} {x} :
    @DFunLike.coe (TopCat.of X ⟶ TopCat.of Y) ((CategoryTheory.forget TopCat).obj (TopCat.of X))
      (fun _ ↦ (CategoryTheory.forget TopCat).obj (TopCat.of Y)) HasForget.instFunLike
      (ofHom f) x =
    @DFunLike.coe C(X, Y) X
      (fun _ ↦ Y) _
      f x :=
  rfl

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Varianta1ddc8be9bb6e3dca3e99abd8e12ebd8b96d2c060feed61fd5bc482807f7cea4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Varianta1ddc8be9bb6e3dca3e99abd8e12ebd8b96d2c060feed61fd5bc482807f7cea4.lean#L153).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2a79e06344ef81f6863e34e853d39c357fc6ad5f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
