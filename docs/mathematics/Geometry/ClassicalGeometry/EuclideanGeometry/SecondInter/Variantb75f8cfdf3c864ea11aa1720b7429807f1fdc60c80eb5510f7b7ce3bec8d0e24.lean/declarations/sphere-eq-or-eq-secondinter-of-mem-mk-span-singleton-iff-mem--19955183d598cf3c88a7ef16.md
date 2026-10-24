# Sphere.eq_or_eq_secondInter_of_mem_mk'_span_singleton_iff_mem

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3b3cb8c6-a12a-aaed-2cbc-da00ba0ee14d",
  "kind": "theorem",
  "lexical_name": "Sphere.eq_or_eq_secondInter_of_mem_mk'_span_singleton_iff_mem",
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
  "slug": "sphere-eq-or-eq-secondinter-of-mem-mk-span-singleton-iff-mem--19955183d598cf3c88a7ef16",
  "source": {
    "blob": "42ba9ebba23da16224ea72b72a07178d8572f391",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 99,
    "line": 80,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/SecondInter/Variantb75f8cfdf3c864ea11aa1720b7429807f1fdc60c80eb5510f7b7ce3bec8d0e24.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:19955183d598cf3c88a7ef16f02f37c90cafdcbc325fb88c9f4f3985a297228d",
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

Occurrence: `result:3b3cb8c6-a12a-aaed-2cbc-da00ba0ee14d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 80–99.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Sphere.eq_or_eq_secondInter_of_mem_mk'_span_singleton_iff_mem {s : Sphere P} {p : P}
    (hp : p ∈ s) {v : V} {p' : P} (hp' : p' ∈ AffineSubspace.mk' p (ℝ ∙ v)) :
    p' = p ∨ p' = s.secondInter p v ↔ p' ∈ s := by
  refine ⟨fun h => ?_, fun h => ?_⟩
  · rcases h with (h | h)
    · rwa [h]
    · rwa [h, Sphere.secondInter_mem]
  · rw [AffineSubspace.mem_mk'_iff_vsub_mem, Submodule.mem_span_singleton] at hp'
    rcases hp' with ⟨r, hr⟩
    rw [eq_comm, ← eq_vadd_iff_vsub_eq] at hr
    subst hr
    by_cases hv : v = 0
    · simp [hv]
    rw [Sphere.secondInter]
    rw [mem_sphere] at h hp
    rw [← hp, dist_smul_vadd_eq_dist _ _ hv] at h
    rcases h with (h | h) <;> simp [h]

/-- `secondInter` is unchanged by multiplying the vector by a nonzero real. -/
@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/SecondInter/Variantb75f8cfdf3c864ea11aa1720b7429807f1fdc60c80eb5510f7b7ce3bec8d0e24.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/SecondInter/Variantb75f8cfdf3c864ea11aa1720b7429807f1fdc60c80eb5510f7b7ce3bec8d0e24.lean#L80).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `42ba9ebba23da16224ea72b72a07178d8572f391` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
