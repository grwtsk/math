# _root_.GRWTSK.Algebra.GroupTheory.MonoidCoprodIRel.Variant1ebd6d4121afb504d558087cf7f6eb2d66b79b640434a2a2b2238fbdbf99f707.FreeGroup.injective_lift_of_ping_pong

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:34b1df67-0edc-fdf9-6b7c-0288808f2e39",
  "kind": "theorem",
  "lexical_name": "_root_.GRWTSK.Algebra.GroupTheory.MonoidCoprodIRel.Variant1ebd6d4121afb504d558087cf7f6eb2d66b79b640434a2a2b2238fbdbf99f707.FreeGroup.injective_lift_of_ping_pong",
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
  "slug": "root-grwtsk-algebra-grouptheory-monoidcoprodirel-variant1ebd6d4121afb504--6864e24b5eb2ef4585829393",
  "source": {
    "blob": "c69882ab06ca0ce031e836729c460fda2cea334e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1012,
    "line": 918,
    "path": "GRWTSK/Algebra/GroupTheory/CoprodI/Variant4539ecb868f959a940d14c350f25c9220b3a0499fe5aa073063a73593afcff01.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6864e24b5eb2ef4585829393a428bfb1dfd672a419c71a740dd1a92d37c58d32",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/CoprodI/Variant4539ecb868f959a940d14c350f25c9220b3a0499fe5aa073063a73593afcff01.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:34b1df67-0edc-fdf9-6b7c-0288808f2e39`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 918–1012.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.GRWTSK.Algebra.GroupTheory.MonoidCoprodIRel.Variant1ebd6d4121afb504d558087cf7f6eb2d66b79b640434a2a2b2238fbdbf99f707.FreeGroup.injective_lift_of_ping_pong : Function.Injective (FreeGroup.lift a) := by
  -- Step one: express the free group lift via the free product lift
  have : FreeGroup.lift a =
      (CoprodI.lift fun i => FreeGroup.lift fun _ => a i).comp
        (@freeGroupEquivCoprodI ι).toMonoidHom := by
    ext i
    simp
  rw [this, MonoidHom.coe_comp]
  clear this
  refine' Function.Injective.comp _ (MulEquiv.injective freeGroupEquivCoprodI)
  -- Step two: Invoke the ping-pong lemma for free products
  show Function.Injective (lift fun i : ι => FreeGroup.lift fun _ => a i)
  -- Prepare to instantiate lift_injective_of_ping_pong
  let H : ι → Type _ := fun _i => FreeGroup Unit
  let f : ∀ i, H i →* G := fun i => FreeGroup.lift fun _ => a i
  let X' : ι → Set α := fun i => X i ∪ Y i
  apply lift_injective_of_ping_pong f _ X'
  show ∀ i, (X' i).Nonempty
  · exact fun i => Set.Nonempty.inl (hXnonempty i)
  show Pairwise fun i j => Disjoint (X' i) (X' j)
  · intro i j hij
    simp only
    apply Disjoint.union_left <;> apply Disjoint.union_right
    · exact hXdisj hij
    · exact hXYdisj i j
    · exact (hXYdisj j i).symm
    · exact hYdisj hij
  show Pairwise fun i j => ∀ h : H i, h ≠ 1 → f i h • X' j ⊆ X' i
  · rintro i j hij
    -- use free_group unit ≃ ℤ
    refine' FreeGroup.freeGroupUnitEquivInt.forall_congr_left'.mpr _
    intro n hne1
    change FreeGroup.lift (fun _ => a i) (FreeGroup.of () ^ n) • X' j ⊆ X' i
    simp only [map_zpow, FreeGroup.lift.of]
    change a i ^ n • X' j ⊆ X' i
    have hnne0 : n ≠ 0 := by
      rintro rfl
      apply hne1
      simp; rfl
    clear hne1
    simp only
    -- Positive and negative powers separately
    cases' (lt_or_gt_of_ne hnne0).symm with hlt hgt
    · have h1n : 1 ≤ n := hlt
      calc
        a i ^ n • X' j ⊆ a i ^ n • (Y i)ᶜ :=
          smul_set_mono ((hXYdisj j i).union_left <| hYdisj hij.symm).subset_compl_right
        _ ⊆ X i := by
          clear hnne0 hlt
          refine Int.le_induction (P := fun n => a i ^ n • (Y i)ᶜ ⊆ X i) ?_ ?_ n h1n
          · dsimp
            rw [zpow_one]
            exact hX i
          · dsimp
            intro n _hle hi
            calc
              a i ^ (n + 1) • (Y i)ᶜ = (a i ^ n * a i) • (Y i)ᶜ := by rw [zpow_add, zpow_one]
              _ = a i ^ n • a i • (Y i)ᶜ := (MulAction.mul_smul _ _ _)
              _ ⊆ a i ^ n • X i := (smul_set_mono <| hX i)
              _ ⊆ a i ^ n • (Y i)ᶜ := (smul_set_mono (hXYdisj i i).subset_compl_right)
              _ ⊆ X i := hi
        _ ⊆ X' i := Set.subset_union_left _ _
    · have h1n : n ≤ -1 := by
        apply Int.le_of_lt_add_one
        simpa using hgt
      calc
        a i ^ n • X' j ⊆ a i ^ n • (X i)ᶜ :=
          smul_set_mono ((hXdisj hij.symm).union_left (hXYdisj i j).symm).subset_compl_right
        _ ⊆ Y i := by
          refine' Int.le_induction_down (P := fun n => a i ^ n • (X i)ᶜ ⊆ Y i) _ _ _ h1n
          · dsimp
            rw [zpow_neg, zpow_one]
            exact hY i
          · dsimp
            intro n _ hi
            calc
              a i ^ (n - 1) • (X i)ᶜ = (a i ^ n * (a i)⁻¹) • (X i)ᶜ := by rw [zpow_sub, zpow_one]
              _ = a i ^ n • (a i)⁻¹ • (X i)ᶜ := (MulAction.mul_smul _ _ _)
              _ ⊆ a i ^ n • Y i := (smul_set_mono <| hY i)
              _ ⊆ a i ^ n • (X i)ᶜ := (smul_set_mono (hXYdisj i i).symm.subset_compl_right)
              _ ⊆ Y i := hi
        _ ⊆ X' i := Set.subset_union_right _ _
  show _ ∨ ∃ i, 3 ≤ #(H i)
  · inhabit ι
    right
    use Inhabited.default
    simp only
    rw [FreeGroup.freeGroupUnitEquivInt.cardinal_eq, Cardinal.mk_denumerable]
    apply le_of_lt
    exact nat_lt_aleph0 3
#align free_group.injective_lift_of_ping_pong FreeGroup.injective_lift_of_ping_pong

end PingPongLemma

end Monoid.CoprodI
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/CoprodI/Variant4539ecb868f959a940d14c350f25c9220b3a0499fe5aa073063a73593afcff01.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/CoprodI/Variant4539ecb868f959a940d14c350f25c9220b3a0499fe5aa073063a73593afcff01.lean#L918).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c69882ab06ca0ce031e836729c460fda2cea334e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
