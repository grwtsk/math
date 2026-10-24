# isUniversalColimit_extendCofan

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ce223966b2663cfcfbbf978cf8dfa85f0b9a27e2",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 581,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/94/945a1defa4db4aeb0b29040b55210b001d2c811a7680bd0a5a027c948e301188.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:70720247-b59d-1550-a9cb-dbb66191dc80",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e06c0569-78f0-dc14-407f-a8b3ae539668",
  "kind": "theorem",
  "lexical_name": "isUniversalColimit_extendCofan",
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
  "slug": "isuniversalcolimit-extendcofan--73861f03d56e241b501a36cc",
  "source": {
    "blob": "ce223966b2663cfcfbbf978cf8dfa85f0b9a27e2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 639,
    "line": 581,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/VanKampen/Variant945a1defa4db4aeb0b29040b55210b001d2c811a7680bd0a5a027c948e301188.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:73861f03d56e241b501a36ccd4c82745636cc4ae5cf186a91de33de56e406f11",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/VanKampen/Variant945a1defa4db4aeb0b29040b55210b001d2c811a7680bd0a5a027c948e301188.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e06c0569-78f0-dc14-407f-a8b3ae539668`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 581–639.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isUniversalColimit_extendCofan {n : ℕ} (f : Fin (n + 1) → C)
    {c₁ : Cofan fun i : Fin n ↦ f i.succ} {c₂ : BinaryCofan (f 0) c₁.pt}
    (t₁ : IsUniversalColimit c₁) (t₂ : IsUniversalColimit c₂)
    [∀ {Z} (i : Z ⟶ c₂.pt), HasPullback c₂.inr i] :
    IsUniversalColimit (extendCofan c₁ c₂) := by
  intro F c α i e hα H
  let F' : Fin (n + 1) → C := F.obj ∘ Discrete.mk
  have : F = Discrete.functor F' := by
    apply Functor.hext
    · exact fun i ↦ rfl
    · rintro ⟨i⟩ ⟨j⟩ ⟨⟨rfl : i = j⟩⟩
      simp [F']
  have t₁' := @t₁ (Discrete.functor (fun j ↦ F.obj ⟨j.succ⟩))
    (Cofan.mk (pullback c₂.inr i) fun j ↦ pullback.lift (α.app _ ≫ c₁.inj _) (c.ι.app _) ?_)
    (Discrete.natTrans fun i ↦ α.app _) (pullback.fst _ _) ?_
    (NatTrans.equifibered_of_discrete _) ?_
  rotate_left
  · simpa only [Functor.const_obj_obj, pair_obj_right, Discrete.functor_obj, Category.assoc,
      extendCofan_pt, Functor.const_obj_obj, NatTrans.comp_app, extendCofan_ι_app,
      Fin.cases_succ, Functor.const_map_app] using congr_app e ⟨j.succ⟩
  · ext j
    dsimp
    simp only [limit.lift_π, PullbackCone.mk_pt, PullbackCone.mk_π_app, Cofan.inj]
  · intro j
    simp only [pair_obj_right, Functor.const_obj_obj, Discrete.functor_obj, id_eq,
      extendCofan_pt, eq_mpr_eq_cast, Cofan.mk_pt, Cofan.mk_ι_app, Discrete.natTrans_app]
    refine IsPullback.of_right ?_ ?_ (IsPullback.of_hasPullback (BinaryCofan.inr c₂) i).flip
    · simp only [Functor.const_obj_obj, pair_obj_right, limit.lift_π,
        PullbackCone.mk_pt, PullbackCone.mk_π_app]
      exact H _
    · simp only [limit.lift_π, PullbackCone.mk_pt, PullbackCone.mk_π_app, Cofan.inj]
  obtain ⟨H₁⟩ := t₁'
  have t₂' := @t₂ (pair (F.obj ⟨0⟩) (pullback c₂.inr i))
    (BinaryCofan.mk (c.ι.app ⟨0⟩) (pullback.snd _ _)) (mapPair (α.app _) (pullback.fst _ _)) i ?_
    (mapPair_equifibered _) ?_
  rotate_left
  · ext ⟨⟨⟩⟩
    · simpa [mapPair] using congr_app e ⟨0⟩
    · simpa using pullback.condition
  · rintro ⟨⟨⟩⟩
    · simp only [pair_obj_right, Functor.const_obj_obj, pair_obj_left, BinaryCofan.mk_pt,
        BinaryCofan.ι_app_left, BinaryCofan.mk_inl, mapPair_left]
      exact H ⟨0⟩
    · simp only [pair_obj_right, Functor.const_obj_obj, BinaryCofan.mk_pt, BinaryCofan.ι_app_right,
        BinaryCofan.mk_inr, mapPair_right]
      exact (IsPullback.of_hasPullback (BinaryCofan.inr c₂) i).flip
  obtain ⟨H₂⟩ := t₂'
  clear_value F'
  subst this
  refine ⟨IsColimit.ofIsoColimit (extendCofanIsColimit
    (fun i ↦ (Discrete.functor F').obj ⟨i⟩) H₁ H₂) <| Cocones.ext (Iso.refl _) ?_⟩
  dsimp
  rintro ⟨j⟩
  simp only [Discrete.functor_obj, limit.lift_π, PullbackCone.mk_pt,
    PullbackCone.mk_π_app, Category.comp_id]
  induction' j using Fin.inductionOn
  · simp only [Fin.cases_zero]
  · simp only [Fin.cases_succ]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/VanKampen/Variant945a1defa4db4aeb0b29040b55210b001d2c811a7680bd0a5a027c948e301188.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/VanKampen/Variant945a1defa4db4aeb0b29040b55210b001d2c811a7680bd0a5a027c948e301188.lean#L581).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ce223966b2663cfcfbbf978cf8dfa85f0b9a27e2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
