# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b09ae98228bc20b5a6fda21c23525e0954855c65916dc751147f63f1faa9028f",
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
  "slug": "instance--7106c5ef8fde4138266ed7fb",
  "source": {
    "blob": "c5b23f6e1e00b88dfd8e552d56bd1ac6fcffae35",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 521,
    "line": 484,
    "path": "GRWTSK/Geometry/ConvexGeometry/Defs/Variant44c5175bddf722c482289b9cbb5e41eff8c5029cf67a8003177feb43f1c28e2f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7106c5ef8fde4138266ed7fbccbca6528cf4e8b2d2a6bed50c80024a636d0330",
  "verification": {
    "reference": "docs/verification/Geometry/ConvexGeometry/Defs/Variant44c5175bddf722c482289b9cbb5e41eff8c5029cf67a8003177feb43f1c28e2f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b09ae98228bc20b5a6fda21c23525e0954855c65916dc751147f63f1faa9028f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 484–521.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance : CompleteLattice (AffineSubspace k P) :=
  {
    PartialOrder.lift ((↑) : AffineSubspace k P → Set P)
      coe_injective with
    sup := fun s₁ s₂ => affineSpan k (s₁ ∪ s₂)
    le_sup_left := fun _ _ =>
      Set.Subset.trans Set.subset_union_left (subset_spanPoints k _)
    le_sup_right := fun _ _ =>
      Set.Subset.trans Set.subset_union_right (subset_spanPoints k _)
    sup_le := fun _ _ _ hs₁ hs₂ => spanPoints_subset_coe_of_subset_coe (Set.union_subset hs₁ hs₂)
    inf := fun s₁ s₂ =>
      mk (s₁ ∩ s₂) fun c _ _ _ hp₁ hp₂ hp₃ =>
        ⟨s₁.smul_vsub_vadd_mem c hp₁.1 hp₂.1 hp₃.1, s₂.smul_vsub_vadd_mem c hp₁.2 hp₂.2 hp₃.2⟩
    inf_le_left := fun _ _ => Set.inter_subset_left
    inf_le_right := fun _ _ => Set.inter_subset_right
    le_sInf := fun S s₁ hs₁ => by
      apply Set.subset_sInter
      rintro t ⟨s, _hs, rfl⟩
      exact Set.subset_iInter (hs₁ s)
    top :=
      { carrier := Set.univ
        smul_vsub_vadd_mem := fun _ _ _ _ _ _ _ => Set.mem_univ _ }
    le_top := fun _ _ _ => Set.mem_univ _
    bot :=
      { carrier := ∅
        smul_vsub_vadd_mem := fun _ _ _ _ => False.elim }
    bot_le := fun _ _ => False.elim
    sSup := fun s => affineSpan k (⋃ s' ∈ s, (s' : Set P))
    sInf := fun s =>
      mk (⋂ s' ∈ s, (s' : Set P)) fun c p₁ p₂ p₃ hp₁ hp₂ hp₃ =>
        Set.mem_iInter₂.2 fun s₂ hs₂ => by
          rw [Set.mem_iInter₂] at *
          exact s₂.smul_vsub_vadd_mem c (hp₁ s₂ hs₂) (hp₂ s₂ hs₂) (hp₃ s₂ hs₂)
    le_sSup := fun _ _ h => Set.Subset.trans (Set.subset_biUnion_of_mem h) (subset_spanPoints k _)
    sSup_le := fun _ _ h => spanPoints_subset_coe_of_subset_coe (Set.iUnion₂_subset h)
    sInf_le := fun _ _ => Set.biInter_subset_of_mem
    le_inf := fun _ _ _ => Set.subset_inter }

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/ConvexGeometry/Defs/Variant44c5175bddf722c482289b9cbb5e41eff8c5029cf67a8003177feb43f1c28e2f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ConvexGeometry/Defs/Variant44c5175bddf722c482289b9cbb5e41eff8c5029cf67a8003177feb43f1c28e2f.lean#L484).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c5b23f6e1e00b88dfd8e552d56bd1ac6fcffae35` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
