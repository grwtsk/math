# Sphere.secondInter_eq_self_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:eca7866e-c7a6-7be8-319c-846d5ba963c3",
  "kind": "theorem",
  "lexical_name": "Sphere.secondInter_eq_self_iff",
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
  "slug": "sphere-secondinter-eq-self-iff--6b567d33e075828cb97cad64",
  "source": {
    "blob": "42ba9ebba23da16224ea72b72a07178d8572f391",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 79,
    "line": 69,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/SecondInter/Variantb75f8cfdf3c864ea11aa1720b7429807f1fdc60c80eb5510f7b7ce3bec8d0e24.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6b567d33e075828cb97cad64f86155e6ae0231d46c2130706f9e242f47da0e55",
  "verification": {
    "reference": "docs/verification/Geometry/ClassicalGeometry/EuclideanGeometry/SecondInter/Variantb75f8cfdf3c864ea11aa1720b7429807f1fdc60c80eb5510f7b7ce3bec8d0e24.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:eca7866e-c7a6-7be8-319c-846d5ba963c3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 69–79.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Sphere.secondInter_eq_self_iff {s : Sphere P} {p : P} {v : V} :
    s.secondInter p v = p ↔ ⟪v, p -ᵥ s.center⟫ = 0 := by
  refine ⟨fun hp => ?_, fun hp => ?_⟩
  · by_cases hv : v = 0
    · simp [hv]
    rwa [Sphere.secondInter, eq_comm, eq_vadd_iff_vsub_eq, vsub_self, eq_comm, smul_eq_zero,
      or_iff_left hv, div_eq_zero_iff, inner_self_eq_zero, or_iff_left hv, mul_eq_zero,
      or_iff_right (by norm_num : (-2 : ℝ) ≠ 0)] at hp
  · rw [Sphere.secondInter, hp, mul_zero, zero_div, zero_smul, zero_vadd]

/-- A point on a line through a point on a sphere equals that point or `secondInter`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/SecondInter/Variantb75f8cfdf3c864ea11aa1720b7429807f1fdc60c80eb5510f7b7ce3bec8d0e24.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/SecondInter/Variantb75f8cfdf3c864ea11aa1720b7429807f1fdc60c80eb5510f7b7ce3bec8d0e24.lean#L69).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `42ba9ebba23da16224ea72b72a07178d8572f391` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
