# IsMittagLeffler.toPreimages

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f46a9dc2c9f0751618809334b2b23048f0eb91f0",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 212,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/bc/bc6966eccafd14ff55a54150d71ccb5aff5c628ed1ed09514390dfe5dbb97ef0.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:50ad79f4-9421-4aef-c95c-fedc0d4611f3",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4120801b-5f65-a290-75d9-c8ee43cb62ef",
  "kind": "theorem",
  "lexical_name": "IsMittagLeffler.toPreimages",
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
  "slug": "ismittagleffler-topreimages--5cf3dac3c4aa1a40f6b2b67c",
  "source": {
    "blob": "f46a9dc2c9f0751618809334b2b23048f0eb91f0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 231,
    "line": 212,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CofilteredSystem/Variantbc6966eccafd14ff55a54150d71ccb5aff5c628ed1ed09514390dfe5dbb97ef0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5cf3dac3c4aa1a40f6b2b67cf504376028f784cae2f3bc9999851af2894bb2a6",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/CofilteredSystem/Variantbc6966eccafd14ff55a54150d71ccb5aff5c628ed1ed09514390dfe5dbb97ef0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4120801b-5f65-a290-75d9-c8ee43cb62ef`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 212–231.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsMittagLeffler.toPreimages (h : F.IsMittagLeffler) : (F.toPreimages s).IsMittagLeffler :=
  (isMittagLeffler_iff_subset_range_comp _).2 fun j => by
    obtain ⟨j₁, g₁, f₁, -⟩ := IsCofilteredOrEmpty.cone_objs i j
    obtain ⟨j₂, f₂, h₂⟩ := F.isMittagLeffler_iff_eventualRange.1 h j₁
    refine ⟨j₂, f₂ ≫ f₁, fun j₃ f₃ => ?_⟩
    rintro _ ⟨⟨x, hx⟩, rfl⟩
    have : F.map f₂ x ∈ F.eventualRange j₁ := by
      rw [h₂]
      exact ⟨_, rfl⟩
    obtain ⟨y, hy, h₃⟩ := h.subset_image_eventualRange F (f₃ ≫ f₂) this
    refine ⟨⟨y, mem_iInter.2 fun g₂ => ?_⟩, Subtype.ext ?_⟩
    · obtain ⟨j₄, f₄, h₄⟩ := IsCofilteredOrEmpty.cone_maps g₂ ((f₃ ≫ f₂) ≫ g₁)
      obtain ⟨y, rfl⟩ := F.mem_eventualRange_iff.1 hy f₄
      rw [← map_comp_apply] at h₃
      rw [mem_preimage, ← map_comp_apply, h₄, ← Category.assoc, map_comp_apply, h₃,
        ← map_comp_apply]
      apply mem_iInter.1 hx
    · simp_rw [toPreimages_map, MapsTo.val_restrict_apply]
      rw [← Category.assoc, map_comp_apply, h₃, map_comp_apply]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/CofilteredSystem/Variantbc6966eccafd14ff55a54150d71ccb5aff5c628ed1ed09514390dfe5dbb97ef0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CofilteredSystem/Variantbc6966eccafd14ff55a54150d71ccb5aff5c628ed1ed09514390dfe5dbb97ef0.lean#L212).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f46a9dc2c9f0751618809334b2b23048f0eb91f0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
