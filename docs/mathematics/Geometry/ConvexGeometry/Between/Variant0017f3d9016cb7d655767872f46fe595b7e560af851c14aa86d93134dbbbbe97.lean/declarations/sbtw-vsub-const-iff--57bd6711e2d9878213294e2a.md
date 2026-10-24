# sbtw_vsub_const_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4f242447-5840-3d82-56f1-75e91a434888",
  "kind": "theorem",
  "lexical_name": "sbtw_vsub_const_iff",
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
  "slug": "sbtw-vsub-const-iff--57bd6711e2d9878213294e2a",
  "source": {
    "blob": "355f6d168937263c79e43098d714e32961142d15",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 341,
    "line": 334,
    "path": "GRWTSK/Geometry/ConvexGeometry/Between/Variant0017f3d9016cb7d655767872f46fe595b7e560af851c14aa86d93134dbbbbe97.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:57bd6711e2d9878213294e2ae4c3ba00b17f9953e39d25293f10a8e06f23cfdc",
  "verification": {
    "reference": "docs/verification/Geometry/ConvexGeometry/Between/Variant0017f3d9016cb7d655767872f46fe595b7e560af851c14aa86d93134dbbbbe97.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4f242447-5840-3d82-56f1-75e91a434888`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 334–341.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sbtw_vsub_const_iff {x y z : P} (p : P) :
    Sbtw R (x -ᵥ p) (y -ᵥ p) (z -ᵥ p) ↔ Sbtw R x y z := by
  rw [Sbtw, Sbtw, wbtw_vsub_const_iff, (vsub_left_injective p).ne_iff,
    (vsub_left_injective p).ne_iff]

alias ⟨_, Sbtw.vsub_const⟩ := sbtw_vsub_const_iff

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/ConvexGeometry/Between/Variant0017f3d9016cb7d655767872f46fe595b7e560af851c14aa86d93134dbbbbe97.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ConvexGeometry/Between/Variant0017f3d9016cb7d655767872f46fe595b7e560af851c14aa86d93134dbbbbe97.lean#L334).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `355f6d168937263c79e43098d714e32961142d15` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
