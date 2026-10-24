# wbtw_pointReflection

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cdccf69e-9ba6-90d7-4d75-77676449489f",
  "kind": "theorem",
  "lexical_name": "wbtw_pointReflection",
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
  "slug": "wbtw-pointreflection--46e5b7d7d0191b4b19b4b067",
  "source": {
    "blob": "90cfcc91c41b613890812a3b0e00c15321c159a0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 920,
    "line": 915,
    "path": "GRWTSK/Geometry/ConvexGeometry/Between/Variant9ee5101aeef5e4f98e737943a183df431c796b023288db731cfe27e3ce59e3d5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:46e5b7d7d0191b4b19b4b0670872dd6cea26ad2e9fea59530b32119a7b714841",
  "verification": {
    "reference": "docs/verification/Geometry/ConvexGeometry/Between/Variant9ee5101aeef5e4f98e737943a183df431c796b023288db731cfe27e3ce59e3d5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cdccf69e-9ba6-90d7-4d75-77676449489f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 915–920.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem wbtw_pointReflection (x y : P) : Wbtw R y x (pointReflection R x y) := by
  refine' ⟨2⁻¹, ⟨by norm_num, by norm_num⟩, _⟩
  rw [lineMap_apply, pointReflection_apply, vadd_vsub_assoc, ← two_smul R (x -ᵥ y)]
  simp
#align wbtw_point_reflection wbtw_pointReflection

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/ConvexGeometry/Between/Variant9ee5101aeef5e4f98e737943a183df431c796b023288db731cfe27e3ce59e3d5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ConvexGeometry/Between/Variant9ee5101aeef5e4f98e737943a183df431c796b023288db731cfe27e3ce59e3d5.lean#L915).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `90cfcc91c41b613890812a3b0e00c15321c159a0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
