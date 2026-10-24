# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4ba193016c303e93ded4c524bbf7334fb58b8fe4f486aef998b592fc9ce0778d",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--75e5eae7eb12201d98b0b301",
  "source": {
    "blob": "189f35228e7419dce7cf6875a0c89054769d7d51",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 250,
    "line": 223,
    "path": "GRWTSK/Topology/GeneralTopology/BoundedOperation/Variant66c8caa1181b40b97f6a0c4674ca614aed0b9821327b43644f2f6d9ab4ca643c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:75e5eae7eb12201d98b0b301ef1137e4fa9414d4f4c8ff190e0423c6cd9bb5e5",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/BoundedOperation/Variant66c8caa1181b40b97f6a0c4674ca614aed0b9821327b43644f2f6d9ab4ca643c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4ba193016c303e93ded4c524bbf7334fb58b8fe4f486aef998b592fc9ce0778d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 223–250.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance : BoundedMul R where
  isBounded_mul {s t} hs ht := by
    obtain ⟨Af, hAf⟩ := (Metric.isBounded_iff_subset_closedBall 0).mp hs
    obtain ⟨Ag, hAg⟩ := (Metric.isBounded_iff_subset_closedBall 0).mp ht
    rw [Metric.isBounded_iff] at hs ht ⊢
    use 2 * Af * Ag
    intro z hz w hw
    obtain ⟨x₁, hx₁, y₁, hy₁, z_eq⟩ := Set.mem_mul.mp hz
    obtain ⟨x₂, hx₂, y₂, hy₂, w_eq⟩ := Set.mem_mul.mp hw
    rw [← w_eq, ← z_eq, dist_eq_norm]
    have hAf' : 0 ≤ Af := Metric.nonempty_closedBall.mp ⟨_, hAf hx₁⟩
    have aux : ∀ {x y}, x ∈ s → y ∈ t → ‖x * y‖ ≤ Af * Ag := by
      intro x y x_in_s y_in_t
      apply (norm_mul_le _ _).trans (mul_le_mul _ _ (norm_nonneg _) hAf')
      · exact mem_closedBall_zero_iff.mp (hAf x_in_s)
      · exact mem_closedBall_zero_iff.mp (hAg y_in_t)
    calc ‖x₁ * y₁ - x₂ * y₂‖
     _ ≤ ‖x₁ * y₁‖ + ‖x₂ * y₂‖ := norm_sub_le _ _
     _ ≤ Af * Ag + Af * Ag     := add_le_add (aux hx₁ hy₁) (aux hx₂ hy₂)
     _ = 2 * Af * Ag           := by simp [← two_mul, mul_assoc]

end NonUnitalSeminormedRing

section NNReal
/-!
### Bounded operations in ℝ≥0
-/

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/BoundedOperation/Variant66c8caa1181b40b97f6a0c4674ca614aed0b9821327b43644f2f6d9ab4ca643c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/BoundedOperation/Variant66c8caa1181b40b97f6a0c4674ca614aed0b9821327b43644f2f6d9ab4ca643c.lean#L223).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `189f35228e7419dce7cf6875a0c89054769d7d51` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
