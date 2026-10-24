# krullTopology_t2

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ecfa5ca65fbd459e20de06a2362187f0ad3edfaf",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 190,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/53/537561c4c9b7c1da116961cd7116c56195200d4b8ba5ccc8c7a8ba6f4f1a8809.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b8d66ed9-d470-949e-e957-bb25e54d3862",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1672c2d2-8bcb-b801-711d-5707e8dfcb81",
  "kind": "theorem",
  "lexical_name": "krullTopology_t2",
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
  "slug": "krulltopology-t2--3b5aa637c4b6bed682cf3187",
  "source": {
    "blob": "ecfa5ca65fbd459e20de06a2362187f0ad3edfaf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 227,
    "line": 190,
    "path": "GRWTSK/Topology/GeneralTopology/KrullTopology/Variant537561c4c9b7c1da116961cd7116c56195200d4b8ba5ccc8c7a8ba6f4f1a8809.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3b5aa637c4b6bed682cf3187e01b3e3befd8137f4e83f7c46c7bac71c24f7ab1",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/KrullTopology/Variant537561c4c9b7c1da116961cd7116c56195200d4b8ba5ccc8c7a8ba6f4f1a8809.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1672c2d2-8bcb-b801-711d-5707e8dfcb81`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 190–227.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem krullTopology_t2 {K L : Type*} [Field K] [Field L] [Algebra K L]
    [Algebra.IsIntegral K L] : T2Space (L ≃ₐ[K] L) :=
  { t2 := fun f g hfg => by
      let φ := f⁻¹ * g
      obtain ⟨x, hx⟩ := DFunLike.exists_ne hfg
      have hφx : φ x ≠ x := by
        apply ne_of_apply_ne f
        change f (f.symm (g x)) ≠ f x
        rw [AlgEquiv.apply_symm_apply f (g x), ne_comm]
        exact hx
      let E : IntermediateField K L := IntermediateField.adjoin K {x}
      let h_findim : FiniteDimensional K E := IntermediateField.adjoin.finiteDimensional
        (Algebra.IsIntegral.isIntegral x)
      let H := E.fixingSubgroup
      have h_basis : (H : Set (L ≃ₐ[K] L)) ∈ galGroupBasis K L := ⟨H, ⟨E, ⟨h_findim, rfl⟩⟩, rfl⟩
      have h_nhds := GroupFilterBasis.mem_nhds_one (galGroupBasis K L) h_basis
      rw [mem_nhds_iff] at h_nhds
      rcases h_nhds with ⟨W, hWH, hW_open, hW_1⟩
      refine ⟨f • W, g • W,
        ⟨hW_open.leftCoset f, hW_open.leftCoset g, ⟨1, hW_1, mul_one _⟩, ⟨1, hW_1, mul_one _⟩, ?_⟩⟩
      rw [Set.disjoint_left]
      rintro σ ⟨w1, hw1, h⟩ ⟨w2, hw2, rfl⟩
      dsimp at h
      rw [eq_inv_mul_iff_mul_eq.symm, ← mul_assoc, mul_inv_eq_iff_eq_mul.symm] at h
      have h_in_H : w1 * w2⁻¹ ∈ H := H.mul_mem (hWH hw1) (H.inv_mem (hWH hw2))
      rw [h] at h_in_H
      change φ ∈ E.fixingSubgroup at h_in_H
      rw [IntermediateField.mem_fixingSubgroup_iff] at h_in_H
      specialize h_in_H x
      have hxE : x ∈ E := by
        apply IntermediateField.subset_adjoin
        apply Set.mem_singleton
      exact hφx (h_in_H hxE) }

end KrullT2

section TotallySeparated

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/KrullTopology/Variant537561c4c9b7c1da116961cd7116c56195200d4b8ba5ccc8c7a8ba6f4f1a8809.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/KrullTopology/Variant537561c4c9b7c1da116961cd7116c56195200d4b8ba5ccc8c7a8ba6f4f1a8809.lean#L190).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ecfa5ca65fbd459e20de06a2362187f0ad3edfaf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
