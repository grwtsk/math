# weakRankFunction

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e9149698ce468e1de083c2766a73451d195659ef8301e744d4ce64ce0f18da87",
  "kind": "def",
  "lexical_name": "weakRankFunction",
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
  "slug": "weakrankfunction--dfca54a05211835c7c865a7e",
  "source": {
    "blob": "2a6de4130ba70cbcf0f16344e81638b7f98613c9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 640,
    "line": 587,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/UnionProd/Variant42b4f97b4a6402cb0ea0c14c0662cec0ebc258e23a50a997d4a928eebfd567da.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:dfca54a05211835c7c865a7e1d541e9312cd7599bb8bbbe7288185c91874cac4",
  "verification": {
    "reference": "docs/verification/Geometry/ClassicalGeometry/EuclideanGeometry/UnionProd/Variant42b4f97b4a6402cb0ea0c14c0662cec0ebc258e23a50a997d4a928eebfd567da.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e9149698ce468e1de083c2766a73451d195659ef8301e744d4ce64ce0f18da87`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 587–640.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def weakRankFunction {m : ℕ} (k : Fin (m + 1)) (n : ℕ) :
    (pairingCore.{u} k n).WeakRankFunction ℕ where
  rank s := (finset s.x rfl).card
  lt := by
    intro ⟨s, d, hds, is, hs⟩ ⟨t, d', hdt, it, ht⟩ ⟨h₁, h₂⟩ h₃
    obtain ⟨ds, s, hs₁, hs₂, rfl⟩ := Subcomplex.N.mk_surjective s
    obtain ⟨dt, t, ht₁, ht₂, rfl⟩ := Subcomplex.N.mk_surjective t
    obtain rfl : d = d' := h₃
    obtain rfl : ds = d + 1 := hds
    obtain rfl : dt = d + 1 := hdt
    simp only [ne_eq, pairingCore_ι, Type₁.ext_iff] at h₁
    obtain ⟨f, hf, hδ⟩ := N.le_iff_exists_mono.1 h₂.le
    dsimp at f hf
    obtain ⟨i, rfl⟩ := SimplexCategory.eq_δ_of_mono f
    obtain rfl | rfl := ht.eq_of_isType₂_δ hs.isType₂_δ i (by
      rw [S.ext_iff']
      exact ⟨rfl, hδ.symm⟩)
    · refine (h₁ (hs.δ_injective ht ?_)).elim
      rw [Subcomplex.N.ext_iff, N.ext_iff, S.ext_iff']
      exact ⟨rfl, hδ.symm⟩
    · let Ss := finset (Subcomplex.N.mk s hs₁ hs₂) rfl
      let St := finset (Subcomplex.N.mk t ht₁ ht₂) rfl
      let Sδ := finset hs.δ rfl
      replace hδ (i : Fin (d + 1)) :
          s.1 (is.castSucc.succAbove i) = t.1 (it.succ.succAbove i) :=
        DFunLike.congr_fun (congr_arg Prod.fst hδ.symm) i
      have hSs (i : Fin (d + 1)) : i ∈ Sδ ↔ is.castSucc.succAbove i ∈ Ss := by
        simp [Sδ, Ss, stdSimplex.δ_apply]
      have hSt (i : Fin (d + 1)) : i ∈ Sδ ↔ it.succ.succAbove i ∈ St := by
        simp [Sδ, St, stdSimplex.δ_apply, hδ]
      suffices Ss.card = Sδ.card ∧ St.card = Sδ.card + 1 by grind
      constructor
      · suffices Ss = Finset.image is.castSucc.succAbove Sδ by
          rw [this]
          exact Finset.card_image_of_injective _ Fin.succAbove_right_injective
        ext i
        obtain rfl | ⟨i, rfl⟩ := is.castSucc.eq_self_or_eq_succAbove i
        · have : is.castSucc ∉ Ss := fun h ↦ by
            have : s.1 is.castSucc ≤ k.castSucc := by
              simpa using (hs.simplex_fst_le_castSucc_iff is.castSucc).2 (by simp)
            simp_all [Ss]
          simpa
        · simp [hSs]
      · suffices St = Finset.image it.succ.succAbove Sδ ∪ {it.succ} by
          rw [this, Finset.card_union_of_disjoint (by simp),
            Finset.card_image_of_injective _ Fin.succAbove_right_injective,
            Finset.card_singleton]
        ext i
        obtain rfl | ⟨i, rfl⟩ := it.succ.eq_self_or_eq_succAbove i
        · have : it.succ ∈ St := by
            simpa [St, mem_finset_iff] using ht.simplex_fst_succ
          simp [hSt, this]
        · simp [hSt]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/UnionProd/Variant42b4f97b4a6402cb0ea0c14c0662cec0ebc258e23a50a997d4a928eebfd567da.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/UnionProd/Variant42b4f97b4a6402cb0ea0c14c0662cec0ebc258e23a50a997d4a928eebfd567da.lean#L587).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2a6de4130ba70cbcf0f16344e81638b7f98613c9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
