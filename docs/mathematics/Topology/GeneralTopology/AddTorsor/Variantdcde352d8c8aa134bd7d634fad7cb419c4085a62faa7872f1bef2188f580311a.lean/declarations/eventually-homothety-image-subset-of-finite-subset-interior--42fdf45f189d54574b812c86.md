# eventually_homothety_image_subset_of_finite_subset_interior

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:63fd4e5d-b70f-90a8-d086-3b97cd4892df",
  "kind": "theorem",
  "lexical_name": "eventually_homothety_image_subset_of_finite_subset_interior",
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
  "slug": "eventually-homothety-image-subset-of-finite-subset-interior--42fdf45f189d54574b812c86",
  "source": {
    "blob": "3a368efac86f01ee4d42fd39d0afdbb1a4202099",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 287,
    "line": 275,
    "path": "GRWTSK/Topology/GeneralTopology/AddTorsor/Variantdcde352d8c8aa134bd7d634fad7cb419c4085a62faa7872f1bef2188f580311a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:42fdf45f189d54574b812c866ce62def78dc1f75f8db147f9a1254f5c04d9400",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/AddTorsor/Variantdcde352d8c8aa134bd7d634fad7cb419c4085a62faa7872f1bef2188f580311a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:63fd4e5d-b70f-90a8-d086-3b97cd4892df`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 275–287.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eventually_homothety_image_subset_of_finite_subset_interior (x : Q) {s : Set Q} {t : Set Q}
    (ht : t.Finite) (h : t ⊆ interior s) : ∀ᶠ δ in 𝓝 (1 : 𝕜), homothety x δ '' t ⊆ s := by
  suffices ∀ y ∈ t, ∀ᶠ δ in 𝓝 (1 : 𝕜), homothety x δ y ∈ s by
    simp_rw [Set.image_subset_iff]
    exact (Filter.eventually_all_finite ht).mpr this
  intro y hy
  exact eventually_homothety_mem_of_mem_interior 𝕜 x (h hy)
#align eventually_homothety_image_subset_of_finite_subset_interior eventually_homothety_image_subset_of_finite_subset_interior

end NormedSpace

variable [NormedSpace ℝ V] [NormedSpace ℝ W]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/AddTorsor/Variantdcde352d8c8aa134bd7d634fad7cb419c4085a62faa7872f1bef2188f580311a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/AddTorsor/Variantdcde352d8c8aa134bd7d634fad7cb419c4085a62faa7872f1bef2188f580311a.lean#L275).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3a368efac86f01ee4d42fd39d0afdbb1a4202099` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
