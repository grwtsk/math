# Disjoint.isConj_mul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "571b82abc0cbbb3958596705012d663553bf2ce7",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 171,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/64/64921aafabc78a5b7472aa90882bd2fd93e1ba789960062a4c2c6ed28c33a11f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:af3bc0f4-cdb7-ee94-7709-7fdc93286524",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:bafb4eeb-86bc-de8e-aed9-6eed1e4aa031",
  "kind": "theorem",
  "lexical_name": "Disjoint.isConj_mul",
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
  "slug": "disjoint-isconj-mul--4b8d35ecd1722bf1dab2efad",
  "source": {
    "blob": "571b82abc0cbbb3958596705012d663553bf2ce7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 216,
    "line": 171,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Finite/Variant64921aafabc78a5b7472aa90882bd2fd93e1ba789960062a4c2c6ed28c33a11f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4b8d35ecd1722bf1dab2efadd9dcc417c476c9dc31a6c9aea1d8231482645499",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Finite/Variant64921aafabc78a5b7472aa90882bd2fd93e1ba789960062a4c2c6ed28c33a11f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bafb4eeb-86bc-de8e-aed9-6eed1e4aa031`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 171–216.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Disjoint.isConj_mul [Finite α] {σ τ π ρ : Perm α} (hc1 : IsConj σ π)
    (hc2 : IsConj τ ρ) (hd1 : Disjoint σ τ) (hd2 : Disjoint π ρ) : IsConj (σ * τ) (π * ρ) := by
  classical
    cases nonempty_fintype α
    obtain ⟨f, rfl⟩ := isConj_iff.1 hc1
    obtain ⟨g, rfl⟩ := isConj_iff.1 hc2
    have hd1' := coe_inj.2 hd1.support_mul
    have hd2' := coe_inj.2 hd2.support_mul
    rw [coe_union] at *
    have hd1'' := disjoint_coe.2 (disjoint_iff_disjoint_support.1 hd1)
    have hd2'' := disjoint_coe.2 (disjoint_iff_disjoint_support.1 hd2)
    refine isConj_of_support_equiv ?_ ?_
    · refine
          ((Equiv.setCongr hd1').trans (Equiv.Set.union hd1'')).trans
            ((Equiv.sumCongr (subtypeEquiv f fun a => ?_) (subtypeEquiv g fun a => ?_)).trans
              ((Equiv.setCongr hd2').trans (Equiv.Set.union hd2'')).symm) <;>
      · simp only [Set.mem_image, toEmbedding_apply, exists_eq_right, support_conj, coe_map,
          apply_eq_iff_eq]
    · intro x hx
      simp only [trans_apply, symm_trans_apply, Equiv.setCongr_apply, Equiv.setCongr_symm_apply,
        Equiv.sumCongr_apply]
      rw [hd1', Set.mem_union] at hx
      rcases hx with hxσ | hxτ
      · rw [mem_coe, mem_support] at hxσ
        rw [Set.union_apply_left, Set.union_apply_left]
        · simp only [subtypeEquiv_apply, Perm.coe_mul, Sum.map_inl, comp_apply,
            Set.union_symm_apply_left, Subtype.coe_mk, apply_eq_iff_eq]
          have h := (hd2 (f x)).resolve_left ?_
          · rw [mul_apply, mul_apply] at h
            rw [h, inv_apply_self, (hd1 x).resolve_left hxσ]
          · rwa [mul_apply, mul_apply, inv_apply_self, apply_eq_iff_eq]
        · rwa [Subtype.coe_mk, mem_coe, mem_support]
        · rwa [Subtype.coe_mk, Perm.mul_apply, (hd1 x).resolve_left hxσ, mem_coe,
            apply_mem_support, mem_support]
      · rw [mem_coe, ← apply_mem_support, mem_support] at hxτ
        rw [Set.union_apply_right, Set.union_apply_right]
        · simp only [subtypeEquiv_apply, Perm.coe_mul, Sum.map_inr, comp_apply,
            Set.union_symm_apply_right, Subtype.coe_mk, apply_eq_iff_eq]
          have h := (hd2 (g (τ x))).resolve_right ?_
          · rw [mul_apply, mul_apply] at h
            rw [inv_apply_self, h, (hd1 (τ x)).resolve_right hxτ]
          · rwa [mul_apply, mul_apply, inv_apply_self, apply_eq_iff_eq]
        · rwa [Subtype.coe_mk, mem_coe, ← apply_mem_support, mem_support]
        · rwa [Subtype.coe_mk, Perm.mul_apply, (hd1 (τ x)).resolve_right hxτ,
            mem_coe, mem_support]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Finite/Variant64921aafabc78a5b7472aa90882bd2fd93e1ba789960062a4c2c6ed28c33a11f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Finite/Variant64921aafabc78a5b7472aa90882bd2fd93e1ba789960062a4c2c6ed28c33a11f.lean#L171).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `571b82abc0cbbb3958596705012d663553bf2ce7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
