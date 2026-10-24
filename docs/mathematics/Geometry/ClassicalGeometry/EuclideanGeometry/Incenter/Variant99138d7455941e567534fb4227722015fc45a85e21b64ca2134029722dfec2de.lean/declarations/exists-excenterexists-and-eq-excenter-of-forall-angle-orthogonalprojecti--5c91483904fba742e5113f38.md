# exists_excenterExists_and_eq_excenter_of_forall_angle_orthogonalProjectionSpan_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a0e7de6b-29fd-ffca-917e-1a32fd5d3a6c",
  "kind": "lemma",
  "lexical_name": "exists_excenterExists_and_eq_excenter_of_forall_angle_orthogonalProjectionSpan_eq",
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
  "slug": "exists-excenterexists-and-eq-excenter-of-forall-angle-orthogonalprojecti--5c91483904fba742e5113f38",
  "source": {
    "blob": "107ec32e2e0b69e072284ff08f4886d9128a9537",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 97,
    "line": 66,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Incenter/Variant99138d7455941e567534fb4227722015fc45a85e21b64ca2134029722dfec2de.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5c91483904fba742e5113f38c19d06d2c4b8d41da1ffa438eeb22882befdede6",
  "verification": {
    "reference": "docs/verification/Geometry/ClassicalGeometry/EuclideanGeometry/Incenter/Variant99138d7455941e567534fb4227722015fc45a85e21b64ca2134029722dfec2de.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a0e7de6b-29fd-ffca-917e-1a32fd5d3a6c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 66–97.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma exists_excenterExists_and_eq_excenter_of_forall_angle_orthogonalProjectionSpan_eq {p : P}
    (hp : p ∈ affineSpan ℝ (Set.range s.points)) {i₁ : Fin (n + 1)}
    (h : ∀ i₂, i₂ ≠ i₁ → ∃ p' : P, p' ∈ affineSpan ℝ (Set.range (s.faceOpposite i₁).points) ∧
      p' ∈ affineSpan ℝ (Set.range (s.faceOpposite i₂).points) ∧
      ∠ p p' ((s.faceOpposite i₁).orthogonalProjectionSpan p) =
        ∠ p p' ((s.faceOpposite i₂).orthogonalProjectionSpan p)) :
    ∃ signs, s.ExcenterExists signs ∧ p = s.excenter signs := by
  rw [← s.exists_forall_dist_eq_iff_exists_excenterExists_and_eq_excenter hp]
  refine ⟨dist p ((s.faceOpposite i₁).orthogonalProjectionSpan p), ?_⟩
  intro i
  by_cases hi : i = i₁
  · rw [hi]
  obtain ⟨p', hp'₁, hp'₂, ha⟩ := h i hi
  exact ((dist_orthogonalProjection_eq_iff_angle_eq hp'₁ hp'₂).2 ha).symm

end Simplex

namespace Triangle

open Simplex

section Oriented

variable [hd2 : Fact (finrank ℝ V = 2)] [Module.Oriented ℝ V (Fin 2)]
variable (t : Triangle ℝ P) {i₁ i₂ i₃ : Fin 3} (h₁₂ : i₁ ≠ i₂) (h₁₃ : i₁ ≠ i₃) (h₂₃ : i₂ ≠ i₃)
include h₁₂ h₁₃ h₂₃

attribute [local instance] FiniteDimensional.of_fact_finrank_eq_two

variable {t} in
/-- A point `p` is equidistant to two sides of a triangle if and only if the oriented angles at
their common vertex are equal modulo `π`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/Incenter/Variant99138d7455941e567534fb4227722015fc45a85e21b64ca2134029722dfec2de.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Incenter/Variant99138d7455941e567534fb4227722015fc45a85e21b64ca2134029722dfec2de.lean#L66).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `107ec32e2e0b69e072284ff08f4886d9128a9537` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
