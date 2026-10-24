# closedInterior_inter_shift_eq_homothety

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:aa39214d-857c-5cfc-8b66-0a071670c57b",
  "kind": "theorem",
  "lexical_name": "closedInterior_inter_shift_eq_homothety",
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
  "slug": "closedinterior-inter-shift-eq-homothety--6f234fa3358fe42879b1dcd3",
  "source": {
    "blob": "631de5e102c49fb2f5e6a80323906c2318aab9c4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 279,
    "line": 253,
    "path": "GRWTSK/Algebra/LinearAlgebra/Shift/Variant68757c164bda5b38bc13a7e7efbbc0d09023c744d834025affe5e9dfb574c32e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6f234fa3358fe42879b1dcd3bcb29a9af7b5cf380dbac16f97299386af4a050b",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Shift/Variant68757c164bda5b38bc13a7e7efbbc0d09023c744d834025affe5e9dfb574c32e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:aa39214d-857c-5cfc-8b66-0a071670c57b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 253–279.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem closedInterior_inter_shift_eq_homothety {n : ℕ} [NeZero n] (s : Affine.Simplex k P n)
    (i : Fin (n + 1)) {x : k} (hx : x ∈ Set.Icc 0 1) :
    s.closedInterior ∩ (affineSpan k (s.points '' {i}ᶜ)).shift (s.points i) x =
    homothety (s.points i) x '' (s.faceOpposite i).closedInterior := by
  rcases hx.1.eq_or_lt with hx0 | hxpos
  · simpa [hx0.symm, nonempty_closedInterior] using s.closedInterior_inter_shift_zero i
  ext p
  by_cases hp : p ∈ affineSpan k (.range s.points)
  · obtain ⟨w, hw, rfl⟩ := eq_affineCombination_of_mem_affineSpan_of_fintype hp
    rw [Set.mem_inter_iff, SetLike.mem_coe, s.independent.affineCombination_mem_shift_iff i hw,
      affineCombination_mem_closedInterior_iff hw, Set.mem_image]
    simp_rw [AffineMap.homothety_eq_iff_of_mul_eq_one (mul_inv_cancel₀ hxpos.ne.symm),
      univ.homothety_affineCombination _ _ (mem_univ i)]
    simp only [↓existsAndEq, and_true]
    rw [faceOpposite, affineCombination_mem_closedInterior_face_iff_mem_Icc,
      closedInterior_inter_shift_aux i hxpos hx.2 hw]
    · simp only [mem_compl, mem_singleton, not_not, forall_eq]
      congrm (∀ j, (hj : _) → $(by simp [lineMap_apply, hj])) ∧ $(by simp [lineMap_apply])
    · simp [AffineMap.lineMap_apply, Finset.sum_add_distrib, ← Finset.mul_sum,
        Finset.sum_sub_distrib, hw]
  · apply iff_of_false (hp <| s.closedInterior_subset_affineSpan ·.1)
    rintro ⟨q, hq, rfl⟩
    exact hp <| homothety_mem (mem_affineSpan _ (by simp)) _ <|
      affineSpan_mono _ (by simp) ((s.faceOpposite i).closedInterior_subset_affineSpan hq)

end Field
end Affine.Simplex
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Shift/Variant68757c164bda5b38bc13a7e7efbbc0d09023c744d834025affe5e9dfb574c32e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Shift/Variant68757c164bda5b38bc13a7e7efbbc0d09023c744d834025affe5e9dfb574c32e.lean#L253).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `631de5e102c49fb2f5e6a80323906c2318aab9c4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
