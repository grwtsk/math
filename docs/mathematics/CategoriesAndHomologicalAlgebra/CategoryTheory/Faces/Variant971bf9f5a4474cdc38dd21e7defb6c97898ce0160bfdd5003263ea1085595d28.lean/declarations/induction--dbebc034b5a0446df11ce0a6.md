# induction

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:132e7535-36e5-0dbd-77d7-dbe080224d66",
  "kind": "theorem",
  "lexical_name": "induction",
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
  "slug": "induction--dbebc034b5a0446df11ce0a6",
  "source": {
    "blob": "0626795feb9708db33ead9a38b53d128b6a49f06",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 233,
    "line": 180,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Faces/Variant971bf9f5a4474cdc38dd21e7defb6c97898ce0160bfdd5003263ea1085595d28.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dbebc034b5a0446df11ce0a6a71fc02660b9c07767ffdddd381da283b21b0352",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Faces/Variant971bf9f5a4474cdc38dd21e7defb6c97898ce0160bfdd5003263ea1085595d28.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:132e7535-36e5-0dbd-77d7-dbe080224d66`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 180–233.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem induction {Y : C} {n q : ℕ} {φ : Y ⟶ X _[n + 1]} (v : HigherFacesVanish q φ) :
    HigherFacesVanish (q + 1) (φ ≫ (𝟙 _ + Hσ q).f (n + 1)) := by
  intro j hj₁
  dsimp
  simp only [comp_add, add_comp, comp_id]
  -- when n < q, the result follows immediately from the assumption
  by_cases hqn : n < q
  · rw [v.comp_Hσ_eq_zero hqn, zero_comp, add_zero, v j (by linarith)]
  -- we now assume that n≥q, and write n=a+q
  cases' Nat.le.dest (not_lt.mp hqn) with a ha
  rw [v.comp_Hσ_eq (show n = a + q by linarith), neg_comp, add_neg_eq_zero, assoc, assoc]
  cases' n with m hm
  -- the boundary case n=0
  · simp only [Nat.eq_zero_of_add_eq_zero_left ha, Fin.eq_zero j, Fin.mk_zero, Fin.mk_one,
      δ_comp_σ_succ, comp_id]
    rfl
  -- in the other case, we need to write n as m+1
  -- then, we first consider the particular case j = a
  by_cases hj₂ : a = (j : ℕ)
  · simp only [hj₂, Fin.eta, δ_comp_σ_succ, comp_id]
    rfl
  -- now, we assume j ≠ a (i.e. a < j)
  have haj : a < j := (Ne.le_iff_lt hj₂).mp (by linarith)
  have hj₃ := j.is_lt
  have ham : a ≤ m := by
    by_contra h
    rw [not_le, ← Nat.succ_le_iff] at h
    linarith
  rw [X.δ_comp_σ_of_gt', j.pred_succ]
  swap
  · rw [Fin.lt_iff_val_lt_val]
    simpa only [Fin.val_mk, Fin.val_succ, add_lt_add_iff_right] using haj
  obtain _ | ham'' := ham.lt_or_eq
  · -- case where `a<m`
    rw [← X.δ_comp_δ''_assoc]
    swap
    · rw [Fin.le_iff_val_le_val]
      dsimp
      linarith
    simp only [← assoc, v j (by linarith), zero_comp]
  · -- in the last case, a=m, q=1 and j=a+1
    rw [X.δ_comp_δ_self'_assoc]
    swap
    · ext
      dsimp
      linarith
    simp only [← assoc, v j (by linarith), zero_comp]
#align algebraic_topology.dold_kan.higher_faces_vanish.induction AlgebraicTopology.DoldKan.HigherFacesVanish.induction

end HigherFacesVanish

end DoldKan

end AlgebraicTopology
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Faces/Variant971bf9f5a4474cdc38dd21e7defb6c97898ce0160bfdd5003263ea1085595d28.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Faces/Variant971bf9f5a4474cdc38dd21e7defb6c97898ce0160bfdd5003263ea1085595d28.lean#L180).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0626795feb9708db33ead9a38b53d128b6a49f06` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
