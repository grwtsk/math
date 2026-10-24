# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1ed1923aad7cd0c2ab24c53e9aa31aebf7037022fc703f369ce838ede7ee1f4c",
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
  "slug": "instance--576cd2fafa1321436e83bdca",
  "source": {
    "blob": "6c557cf5ad79eb22b8af5075d902d7d3ee0c80f4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 639,
    "line": 601,
    "path": "GRWTSK/Geometry/ConvexGeometry/AffineSubspace/Variant8e8ab7f0c29b846101387508ab6900739bd127c8209a662d5231a75f80d614df.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:576cd2fafa1321436e83bdca8ec3bdb0ff74ab2a9f6dcfd3fd08ff2012424033",
  "verification": {
    "reference": "docs/verification/Geometry/ConvexGeometry/AffineSubspace/Variant8e8ab7f0c29b846101387508ab6900739bd127c8209a662d5231a75f80d614df.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1ed1923aad7cd0c2ab24c53e9aa31aebf7037022fc703f369ce838ede7ee1f4c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 601–639.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance : CompleteLattice (AffineSubspace k P) :=
  {
    PartialOrder.lift ((↑) : AffineSubspace k P → Set P)
      coe_injective with
    sup := fun s1 s2 => affineSpan k (s1 ∪ s2)
    le_sup_left := fun s1 s2 =>
      Set.Subset.trans (Set.subset_union_left (s1 : Set P) s2) (subset_spanPoints k _)
    le_sup_right := fun s1 s2 =>
      Set.Subset.trans (Set.subset_union_right (s1 : Set P) s2) (subset_spanPoints k _)
    sup_le := fun s1 s2 s3 hs1 hs2 => spanPoints_subset_coe_of_subset_coe (Set.union_subset hs1 hs2)
    inf := fun s1 s2 =>
      mk (s1 ∩ s2) fun c p1 p2 p3 hp1 hp2 hp3 =>
        ⟨s1.smul_vsub_vadd_mem c hp1.1 hp2.1 hp3.1, s2.smul_vsub_vadd_mem c hp1.2 hp2.2 hp3.2⟩
    inf_le_left := fun _ _ => Set.inter_subset_left _ _
    inf_le_right := fun _ _ => Set.inter_subset_right _ _
    le_sInf := fun S s1 hs1 => by
      -- porting note: surely there is an easier way?
      refine' Set.subset_sInter (t := (s1 : Set P)) _
      rintro t ⟨s, _hs, rfl⟩
      exact Set.subset_iInter (hs1 s)
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
      mk (⋂ s' ∈ s, (s' : Set P)) fun c p1 p2 p3 hp1 hp2 hp3 =>
        Set.mem_iInter₂.2 fun s2 hs2 => by
          rw [Set.mem_iInter₂] at *
          exact s2.smul_vsub_vadd_mem c (hp1 s2 hs2) (hp2 s2 hs2) (hp3 s2 hs2)
    le_sSup := fun _ _ h => Set.Subset.trans (Set.subset_biUnion_of_mem h) (subset_spanPoints k _)
    sSup_le := fun _ _ h => spanPoints_subset_coe_of_subset_coe (Set.iUnion₂_subset h)
    sInf_le := fun _ _ => Set.biInter_subset_of_mem
    le_inf := fun _ _ _ => Set.subset_inter }

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/ConvexGeometry/AffineSubspace/Variant8e8ab7f0c29b846101387508ab6900739bd127c8209a662d5231a75f80d614df.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ConvexGeometry/AffineSubspace/Variant8e8ab7f0c29b846101387508ab6900739bd127c8209a662d5231a75f80d614df.lean#L601).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6c557cf5ad79eb22b8af5075d902d7d3ee0c80f4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
