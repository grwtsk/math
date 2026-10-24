# angularRaw_onSpheroid

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2086353c-ee8d-ac81-397f-a73dc5e0f093",
  "kind": "theorem",
  "lexical_name": "angularRaw_onSpheroid",
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
  "slug": "angularraw-onspheroid--b53f4eef0aa206e2435f5ce2",
  "source": {
    "blob": "63764d7000b026218f8b0d028f51628a6fec13e1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 266,
    "line": 258,
    "path": "GRWTSK/Topology/GeneralTopology/SpheroidStereographic/Varianta1a1b45f96b43de872e4bb987501f8b1ba326c80955ea0eb511ffae493facb3d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b53f4eef0aa206e2435f5ce2972d1007336b8ddcb0b9fb7d392a1d59004f7383",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/SpheroidStereographic/Varianta1a1b45f96b43de872e4bb987501f8b1ba326c80955ea0eb511ffae493facb3d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2086353c-ee8d-ac81-397f-a73dc5e0f093`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 258–266.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem angularRaw_onSpheroid {a c θ : ℝ} (ha : 0 < a) (hc : 0 < c)
    {ω : EuclideanSpace ℝ ι} (hω : ‖ω‖ = 1) :
    OnSpheroid a c (angularRaw a c θ ω) := by
  unfold OnSpheroid angularRaw
  dsimp only
  rw [norm_smul, hω, mul_one, Real.norm_eq_abs, sq_abs]
  field_simp [ha.ne', hc.ne']
  nlinarith [Real.sin_sq_add_cos_sq θ]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/SpheroidStereographic/Varianta1a1b45f96b43de872e4bb987501f8b1ba326c80955ea0eb511ffae493facb3d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/SpheroidStereographic/Varianta1a1b45f96b43de872e4bb987501f8b1ba326c80955ea0eb511ffae493facb3d.lean#L258).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `63764d7000b026218f8b0d028f51628a6fec13e1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
