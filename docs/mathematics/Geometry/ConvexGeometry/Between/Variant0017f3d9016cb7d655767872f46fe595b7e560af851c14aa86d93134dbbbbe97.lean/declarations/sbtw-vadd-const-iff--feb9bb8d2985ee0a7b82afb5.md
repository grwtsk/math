# sbtw_vadd_const_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e88da2af-f06b-0519-e27f-4a7dd3e4e4f3",
  "kind": "theorem",
  "lexical_name": "sbtw_vadd_const_iff",
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
  "slug": "sbtw-vadd-const-iff--feb9bb8d2985ee0a7b82afb5",
  "source": {
    "blob": "355f6d168937263c79e43098d714e32961142d15",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 304,
    "line": 297,
    "path": "GRWTSK/Geometry/ConvexGeometry/Between/Variant0017f3d9016cb7d655767872f46fe595b7e560af851c14aa86d93134dbbbbe97.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:feb9bb8d2985ee0a7b82afb5dc457c4bc9e248755af27f8b85a94a41bb665d0b",
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

Occurrence: `result:e88da2af-f06b-0519-e27f-4a7dd3e4e4f3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 297–304.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sbtw_vadd_const_iff {x y z : V} (p : P) :
    Sbtw R (x +ᵥ p) (y +ᵥ p) (z +ᵥ p) ↔ Sbtw R x y z := by
  rw [Sbtw, Sbtw, wbtw_vadd_const_iff, (vadd_right_injective p).ne_iff,
    (vadd_right_injective p).ne_iff]

alias ⟨_, Sbtw.vadd_const⟩ := sbtw_vadd_const_iff

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/ConvexGeometry/Between/Variant0017f3d9016cb7d655767872f46fe595b7e560af851c14aa86d93134dbbbbe97.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ConvexGeometry/Between/Variant0017f3d9016cb7d655767872f46fe595b7e560af851c14aa86d93134dbbbbe97.lean#L297).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `355f6d168937263c79e43098d714e32961142d15` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
