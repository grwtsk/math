# Convex.exists_subset_interior_convexHull_finset_of_isCompact

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:70d150ca-8d98-c694-a8b2-fd141abe9b03",
  "kind": "theorem",
  "lexical_name": "Convex.exists_subset_interior_convexHull_finset_of_isCompact",
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
  "slug": "convex-exists-subset-interior-convexhull-finset-of-iscompact--98664db8205eb9dd2249a78e",
  "source": {
    "blob": "0dc4aee3d64c296674e3faca1684655599fa2fb3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 123,
    "line": 102,
    "path": "GRWTSK/Topology/MetricTopology/Convex/Variant7867bb1e5fa66309d5e01c18c35e8961464b57cea1152bc41d91b29005f1ae98.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:98664db8205eb9dd2249a78e7ca8973bd9d42f2f33d9afd503bd7fa18212cf56",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Convex/Variant7867bb1e5fa66309d5e01c18c35e8961464b57cea1152bc41d91b29005f1ae98.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:70d150ca-8d98-c694-a8b2-fd141abe9b03`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 102–123.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Convex.exists_subset_interior_convexHull_finset_of_isCompact
    (hs₁ : Convex ℝ s) (hs₂ : IsCompact s) (ht : t ∈ 𝓝ˢ s) :
    ∃ u : Finset E, s ⊆ interior (convexHull ℝ u) ∧ convexHull ℝ u ⊆ t := by
  classical
  rcases mem_nhdsSet_iff_exists.1 ht with ⟨U, hU₁, hU₂, hU₃⟩
  rcases compact_open_separated_add_left hs₂ hU₁ hU₂ with ⟨V, hV₁, hV₂⟩
  rcases exists_mem_interior_convexHull_affineBasis hV₁ with ⟨b, hb₁, hb₂⟩
  rcases hs₂.elim_finite_subcover_image (b := s)
      (c := fun x => interior (convexHull ℝ (Set.range b)) + {x})
      (fun _ _ => isOpen_interior.add_right)
      (fun x hx => Set.mem_iUnion₂_of_mem hx <| by simpa using hb₁)
    with ⟨u, hu₁, hu₂, hu₃⟩
  lift u to Finset E using hu₂
  refine ⟨Finset.univ.image b + u, ?_, ?_⟩
  all_goals rw [Finset.coe_add, Finset.coe_image, Finset.coe_univ, Set.image_univ, convexHull_add]
  · grw [hu₃, ← subset_interior_add_left, Set.iUnion₂_subset_iff, ← subset_convexHull _ (u : Set E)]
    intros
    gcongr
    simpa
  · grw [hu₁, hs₁.convexHull_eq, hb₂, hV₂, hU₃]

end NormedAddCommGroup
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Convex/Variant7867bb1e5fa66309d5e01c18c35e8961464b57cea1152bc41d91b29005f1ae98.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Convex/Variant7867bb1e5fa66309d5e01c18c35e8961464b57cea1152bc41d91b29005f1ae98.lean#L102).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0dc4aee3d64c296674e3faca1684655599fa2fb3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
