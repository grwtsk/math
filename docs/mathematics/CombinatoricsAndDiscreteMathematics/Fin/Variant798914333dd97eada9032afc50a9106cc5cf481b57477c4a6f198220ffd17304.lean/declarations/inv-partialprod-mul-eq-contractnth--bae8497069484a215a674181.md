# inv_partialProd_mul_eq_contractNth

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0925d3fd11f19650de9a7f095870f5d1382ff44a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 552,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/79/798914333dd97eada9032afc50a9106cc5cf481b57477c4a6f198220ffd17304.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e93a8f20-1c97-c61d-cc06-cbcf9d26df2f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:622f1a95-96d7-48dd-89ce-19666bb3693c",
  "kind": "theorem",
  "lexical_name": "inv_partialProd_mul_eq_contractNth",
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
  "slug": "inv-partialprod-mul-eq-contractnth--bae8497069484a215a674181",
  "source": {
    "blob": "0925d3fd11f19650de9a7f095870f5d1382ff44a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 579,
    "line": 552,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Fin/Variant798914333dd97eada9032afc50a9106cc5cf481b57477c4a6f198220ffd17304.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bae8497069484a215a674181d2e81b77f1f32f82a598b60bfb3aea2ef78ee7c8",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Fin/Variant798914333dd97eada9032afc50a9106cc5cf481b57477c4a6f198220ffd17304.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:622f1a95-96d7-48dd-89ce-19666bb3693c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 552–579.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem inv_partialProd_mul_eq_contractNth {G : Type*} [Group G] (g : Fin (n + 1) → G)
    (j : Fin (n + 1)) (k : Fin n) :
    (partialProd g (j.succ.succAbove (Fin.castSucc k)))⁻¹ * partialProd g (j.succAbove k).succ =
      j.contractNth (· * ·) g k := by
  rcases lt_trichotomy (k : ℕ) j with (h | h | h)
  · rwa [succAbove_of_castSucc_lt, succAbove_of_castSucc_lt, partialProd_right_inv,
    contractNth_apply_of_lt]
    · assumption
    · rw [castSucc_lt_iff_succ_le, succ_le_succ_iff, le_iff_val_le_val]
      exact le_of_lt h
  · rwa [succAbove_of_castSucc_lt, succAbove_of_le_castSucc, partialProd_succ,
    castSucc_succ, ← mul_assoc,
      partialProd_right_inv, contractNth_apply_of_eq]
    · simp [le_iff_val_le_val, ← h]
    · rw [castSucc_lt_iff_succ_le, succ_le_succ_iff, le_iff_val_le_val]
      exact le_of_eq h
  · rwa [succAbove_of_le_castSucc, succAbove_of_le_castSucc, partialProd_succ, partialProd_succ,
      castSucc_succ, partialProd_succ, inv_mul_cancel_left, contractNth_apply_of_gt]
    · exact le_iff_val_le_val.2 (le_of_lt h)
    · rw [le_iff_val_le_val, val_succ]
      exact Nat.succ_le_of_lt h

end PartialProd

end Fin

/-- Equivalence between `Fin n → Fin m` and `Fin (m ^ n)`. -/
@[simps!]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Fin/Variant798914333dd97eada9032afc50a9106cc5cf481b57477c4a6f198220ffd17304.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Fin/Variant798914333dd97eada9032afc50a9106cc5cf481b57477c4a6f198220ffd17304.lean#L552).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0925d3fd11f19650de9a7f095870f5d1382ff44a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
