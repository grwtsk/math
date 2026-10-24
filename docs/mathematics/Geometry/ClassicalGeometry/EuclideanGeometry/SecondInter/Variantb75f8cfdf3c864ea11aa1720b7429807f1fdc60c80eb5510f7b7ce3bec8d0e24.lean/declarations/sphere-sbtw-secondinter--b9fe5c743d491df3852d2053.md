# Sphere.sbtw_secondInter

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8fc33ac4-f3e3-7ce4-b8c8-8f479f9f76d1",
  "kind": "theorem",
  "lexical_name": "Sphere.sbtw_secondInter",
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
  "slug": "sphere-sbtw-secondinter--b9fe5c743d491df3852d2053",
  "source": {
    "blob": "42ba9ebba23da16224ea72b72a07178d8572f391",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 175,
    "line": 165,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/SecondInter/Variantb75f8cfdf3c864ea11aa1720b7429807f1fdc60c80eb5510f7b7ce3bec8d0e24.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b9fe5c743d491df3852d2053cf5306ad631717b2a21e517229d6b0884d4cb6a7",
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

Occurrence: `result:8fc33ac4-f3e3-7ce4-b8c8-8f479f9f76d1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 165–175.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Sphere.sbtw_secondInter {s : Sphere P} {p p' : P} (hp : p ∈ s)
    (hp' : dist p' s.center < s.radius) : Sbtw ℝ p p' (s.secondInter p (p' -ᵥ p)) := by
  refine ⟨Sphere.wbtw_secondInter hp hp'.le, ?_, ?_⟩
  · rintro rfl
    rw [mem_sphere] at hp
    simp [hp] at hp'
  · rintro h
    rw [h, mem_sphere.1 ((Sphere.secondInter_mem _).2 hp)] at hp'
    exact lt_irrefl _ hp'

end EuclideanGeometry
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/SecondInter/Variantb75f8cfdf3c864ea11aa1720b7429807f1fdc60c80eb5510f7b7ce3bec8d0e24.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/SecondInter/Variantb75f8cfdf3c864ea11aa1720b7429807f1fdc60c80eb5510f7b7ce3bec8d0e24.lean#L165).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `42ba9ebba23da16224ea72b72a07178d8572f391` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
