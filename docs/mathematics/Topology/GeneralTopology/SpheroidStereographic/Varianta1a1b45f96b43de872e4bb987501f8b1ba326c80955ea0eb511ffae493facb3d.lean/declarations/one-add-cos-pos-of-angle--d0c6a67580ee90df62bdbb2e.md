# one_add_cos_pos_of_angle

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:814728f0-6f5f-bd69-7f50-964181b97139",
  "kind": "theorem",
  "lexical_name": "one_add_cos_pos_of_angle",
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
  "slug": "one-add-cos-pos-of-angle--d0c6a67580ee90df62bdbb2e",
  "source": {
    "blob": "63764d7000b026218f8b0d028f51628a6fec13e1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 277,
    "line": 267,
    "path": "GRWTSK/Topology/GeneralTopology/SpheroidStereographic/Varianta1a1b45f96b43de872e4bb987501f8b1ba326c80955ea0eb511ffae493facb3d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d0c6a67580ee90df62bdbb2e75d6c1091252e18b20d8eefe053df6eb72fd032e",
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

Occurrence: `result:814728f0-6f5f-bd69-7f50-964181b97139`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 267–277.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem one_add_cos_pos_of_angle {θ : ℝ}
    (hθ0 : 0 ≤ θ) (hθπ : θ < Real.pi) :
    0 < 1 + Real.cos θ := by
  have hhalf_mem : θ / 2 ∈ Set.Ioo (-(Real.pi / 2)) (Real.pi / 2) := by
    constructor <;> nlinarith [Real.pi_pos]
  have hhalf_cos : 0 < Real.cos (θ / 2) :=
    Real.cos_pos_of_mem_Ioo hhalf_mem
  rw [show θ = 2 * (θ / 2) by ring, Real.cos_two_mul]
  nlinarith [sq_pos_of_pos hhalf_cos]

/-- For `0 ≤ θ < π`, the angular point is distinct from the north pole. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/SpheroidStereographic/Varianta1a1b45f96b43de872e4bb987501f8b1ba326c80955ea0eb511ffae493facb3d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/SpheroidStereographic/Varianta1a1b45f96b43de872e4bb987501f8b1ba326c80955ea0eb511ffae493facb3d.lean#L267).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `63764d7000b026218f8b0d028f51628a6fec13e1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
