# rel_equiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1fd25bdc23a1a0eb0820f4c246448e1762c34d94",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 114,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/32/328ed1dcddcde43b9836f676634b2100bb7a3ff5049e0d8c8545c44148bd0de4.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d98f1606-62dc-86d4-6a11-f805f91b0733",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:52813c11-75f2-4c3f-b0bb-7198af53c026",
  "kind": "theorem",
  "lexical_name": "rel_equiv",
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
  "slug": "rel-equiv--67af667a841e2f10bb5fd799",
  "source": {
    "blob": "1fd25bdc23a1a0eb0820f4c246448e1762c34d94",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 143,
    "line": 114,
    "path": "GRWTSK/Topology/GeneralTopology/Gluing/Variant328ed1dcddcde43b9836f676634b2100bb7a3ff5049e0d8c8545c44148bd0de4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:67af667a841e2f10bb5fd7991421b089987e8e73dc69c87a0c87f50e5f051447",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Gluing/Variant328ed1dcddcde43b9836f676634b2100bb7a3ff5049e0d8c8545c44148bd0de4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:52813c11-75f2-4c3f-b0bb-7198af53c026`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 114–143.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem rel_equiv : Equivalence D.Rel :=
  ⟨fun x => ⟨inv (D.f _ _) x.2, IsIso.inv_hom_id_apply (D.f x.fst x.fst) _,
    -- Use `elementwise_of%` elaborator instead of `IsIso.inv_hom_id_apply` to work around
    -- `ConcreteCategory`/`HasForget` mismatch:
    by simp [elementwise_of% IsIso.inv_hom_id (D.f x.fst x.fst)]⟩, by
    rintro a b ⟨x, e₁, e₂⟩
    exact ⟨D.t _ _ x, e₂, by rw [← e₁, D.t_inv_apply]⟩, by
    rintro ⟨i, a⟩ ⟨j, b⟩ ⟨k, c⟩ ⟨x, e₁, e₂⟩
    rintro ⟨y, e₃, e₄⟩
    let z := (pullbackIsoProdSubtype (D.f j i) (D.f j k)).inv ⟨⟨_, _⟩, e₂.trans e₃.symm⟩
    have eq₁ : (D.t j i) ((pullback.fst _ _ : _ /-(D.f j k)-/ ⟶ D.V (j, i)) z) = x := by
      dsimp only [coe_of, z]
      rw [pullbackIsoProdSubtype_inv_fst_apply, D.t_inv_apply]
    have eq₂ : (pullback.snd _ _ : _ ⟶ D.V _) z = y := pullbackIsoProdSubtype_inv_snd_apply _ _ _
    clear_value z
    use (pullback.fst _ _ : _ ⟶ D.V (i, k)) (D.t' _ _ _ z)
    dsimp only at *
    substs eq₁ eq₂ e₁ e₃ e₄
    have h₁ : D.t' j i k ≫ pullback.fst _ _ ≫ D.f i k = pullback.fst _ _ ≫ D.t j i ≫ D.f i j := by
      rw [← 𝖣.t_fac_assoc]; congr 1; exact pullback.condition
    have h₂ : D.t' j i k ≫ pullback.fst _ _ ≫ D.t i k ≫ D.f k i =
        pullback.snd _ _ ≫ D.t j k ≫ D.f k j := by
      rw [← 𝖣.t_fac_assoc]
      apply @Epi.left_cancellation _ _ _ _ (D.t' k j i)
      rw [𝖣.cocycle_assoc, 𝖣.t_fac_assoc, 𝖣.t_inv_assoc]
      exact pullback.condition.symm
    exact ⟨CategoryTheory.congr_fun h₁ z, CategoryTheory.congr_fun h₂ z⟩⟩

open CategoryTheory.Limits.WalkingParallelPair

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Gluing/Variant328ed1dcddcde43b9836f676634b2100bb7a3ff5049e0d8c8545c44148bd0de4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Gluing/Variant328ed1dcddcde43b9836f676634b2100bb7a3ff5049e0d8c8545c44148bd0de4.lean#L114).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1fd25bdc23a1a0eb0820f4c246448e1762c34d94` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
