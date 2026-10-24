# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c2efab297fcb2a6169979c465101855561a10fbc4e8d13e637dcc8b7178ec0d7",
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
  "slug": "instance--3ed1a75ac9c6d49b8771bee1",
  "source": {
    "blob": "27a949c5746d98dddc95b9b7dbb6c47fd2de22cd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 591,
    "line": 560,
    "path": "GRWTSK/Geometry/ConvexGeometry/Defs/Variant0a043ac5e4e0f365488fe0888d0f769175856e46943d00b59c39d661fd8ba799.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3ed1a75ac9c6d49b8771bee13636d89401722174e3b22ffaf591946fc5ae6397",
  "verification": {
    "reference": "docs/verification/Geometry/ConvexGeometry/Defs/Variant0a043ac5e4e0f365488fe0888d0f769175856e46943d00b59c39d661fd8ba799.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c2efab297fcb2a6169979c465101855561a10fbc4e8d13e637dcc8b7178ec0d7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 560–591.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance : CompleteLattice (AffineSubspace k P) where
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
  top :=
    { carrier := Set.univ
      smul_vsub_vadd_mem' _ _ _ _ _ _ _ := Set.mem_univ _ }
  le_top := fun _ _ _ => Set.mem_univ _
  bot :=
    { carrier := ∅
      smul_vsub_vadd_mem' _ _ _ _ := False.elim }
  bot_le := fun _ _ => False.elim
  sSup := fun s => affineSpan k (⋃ s' ∈ s, (s' : Set P))
  sInf := fun s =>
    mk (⋂ s' ∈ s, (s' : Set P)) fun c p₁ p₂ p₃ hp₁ hp₂ hp₃ =>
      Set.mem_iInter₂.2 fun s₂ hs₂ => by
        rw [Set.mem_iInter₂] at *
        exact s₂.smul_vsub_vadd_mem c (hp₁ s₂ hs₂) (hp₂ s₂ hs₂) (hp₃ s₂ hs₂)
  isLUB_sSup _ :=
    ⟨fun _ h => Set.Subset.trans (Set.subset_biUnion_of_mem h) (subset_spanPoints k _),
      fun _ h => spanPoints_subset_coe_of_subset_coe (Set.iUnion₂_subset h)⟩
  isGLB_sInf _ := .of_image SetLike.coe_subset_coe isGLB_biInf
  le_inf := fun _ _ _ => Set.subset_inter

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/ConvexGeometry/Defs/Variant0a043ac5e4e0f365488fe0888d0f769175856e46943d00b59c39d661fd8ba799.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ConvexGeometry/Defs/Variant0a043ac5e4e0f365488fe0888d0f769175856e46943d00b59c39d661fd8ba799.lean#L560).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `27a949c5746d98dddc95b9b7dbb6c47fd2de22cd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
