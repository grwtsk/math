# mono_cokernel_map_of_isPullback

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0de8ce50-1b52-8dc9-fb5c-fa9ad7e0e178",
  "kind": "lemma",
  "lexical_name": "mono_cokernel_map_of_isPullback",
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
  "slug": "mono-cokernel-map-of-ispullback--e2f71f6e947353836bc2a866",
  "source": {
    "blob": "f7306d572f89e76f227c11a5a5b71c0a19eefc36",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 157,
    "line": 145,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CommSq/Variant80709c27d4427df9997071e71ac8b7ff4570ad087b3a3c91366944c5a2527ed4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e2f71f6e947353836bc2a8662c277cc419c229738f0e650ae1057ee09e0fb84d",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/CommSq/Variant80709c27d4427df9997071e71ac8b7ff4570ad087b3a3c91366944c5a2527ed4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0de8ce50-1b52-8dc9-fb5c-fa9ad7e0e178`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 145–157.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma mono_cokernel_map_of_isPullback (sq : IsPullback t l r b) :
    Mono (cokernel.map _ _ _ _ sq.w) := by
  rw [Preadditive.mono_iff_cancel_zero]
  intro A₀ z hz
  obtain ⟨A₁, π₁, _, x₂, hx₂⟩ :=
    surjective_up_to_refinements_of_epi (cokernel.π t) z
  have : (ShortComplex.mk _ _ (cokernel.condition b)).Exact :=
    ShortComplex.exact_of_g_is_cokernel _ (cokernelIsCokernel b)
  obtain ⟨A₂, π₂, _, x₃, hx₃⟩ := this.exact_up_to_refinements (x₂ ≫ r) (by
    simpa [hz] using hx₂.symm =≫ cokernel.map _ _ _ _ sq.w)
  obtain ⟨x₁, hx₁, rfl⟩ := sq.exists_lift (π₂ ≫ x₂) x₃ (by simpa)
  simp [← cancel_epi π₁, ← cancel_epi π₂, hx₂, ← reassoc_of% hx₁]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/CommSq/Variant80709c27d4427df9997071e71ac8b7ff4570ad087b3a3c91366944c5a2527ed4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CommSq/Variant80709c27d4427df9997071e71ac8b7ff4570ad087b3a3c91366944c5a2527ed4.lean#L145).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f7306d572f89e76f227c11a5a5b71c0a19eefc36` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
