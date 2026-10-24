# Module.Dual.instLieRingModule

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8031389da8b1560f2bafa77d3d180f117e16d40545912c863cff1fb782c5192d",
  "kind": "instance",
  "lexical_name": "Module.Dual.instLieRingModule",
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
  "slug": "module-dual-instlieringmodule--b9d3be51e783e68bafa41082",
  "source": {
    "blob": "447ea9197ccc6d052f50033098b5ebe4dfb571b2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 293,
    "line": 285,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variant177fedfe9337ca6379bc283c185484288ad78b001ccd7b4caa59a5c436ac612c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b9d3be51e783e68bafa410826304a0fa08c5684b177e39fd5c8ccf9364a8f08c",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variant177fedfe9337ca6379bc283c185484288ad78b001ccd7b4caa59a5c436ac612c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8031389da8b1560f2bafa77d3d180f117e16d40545912c863cff1fb782c5192d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 285–293.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance Module.Dual.instLieRingModule : LieRingModule L (M →ₗ[R] R) where
  bracket := fun x f ↦
    { toFun := fun m ↦ - f ⁅x, m⁆
      map_add' := by simp [-neg_add_rev, neg_add]
      map_smul' := by simp }
  add_lie := fun x y m ↦ by ext n; simp [-neg_add_rev, neg_add]
  lie_add := fun x m n ↦ by ext p; simp [-neg_add_rev, neg_add]
  leibniz_lie := fun x m n ↦ by ext p; simp

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variant177fedfe9337ca6379bc283c185484288ad78b001ccd7b4caa59a5c436ac612c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variant177fedfe9337ca6379bc283c185484288ad78b001ccd7b4caa59a5c436ac612c.lean#L285).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `447ea9197ccc6d052f50033098b5ebe4dfb571b2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
