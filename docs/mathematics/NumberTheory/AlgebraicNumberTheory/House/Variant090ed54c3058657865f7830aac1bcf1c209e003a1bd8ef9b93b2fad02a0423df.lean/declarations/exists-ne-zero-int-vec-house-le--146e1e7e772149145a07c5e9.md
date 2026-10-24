# exists_ne_zero_int_vec_house_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:856915f1-d364-dc76-1675-820613dd5108",
  "kind": "theorem",
  "lexical_name": "exists_ne_zero_int_vec_house_le",
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
  "slug": "exists-ne-zero-int-vec-house-le--146e1e7e772149145a07c5e9",
  "source": {
    "blob": "c8ed24826fa9449efbaea34b87659bb52a1583a1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 325,
    "line": 300,
    "path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/House/Variant090ed54c3058657865f7830aac1bcf1c209e003a1bd8ef9b93b2fad02a0423df.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:146e1e7e772149145a07c5e981e1c3457ed4de8a293257a5800ee7a2a6d4941d",
  "verification": {
    "reference": "docs/verification/NumberTheory/AlgebraicNumberTheory/House/Variant090ed54c3058657865f7830aac1bcf1c209e003a1bd8ef9b93b2fad02a0423df.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:856915f1-d364-dc76-1675-820613dd5108`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 300–325.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_ne_zero_int_vec_house_le :
    ∃ (ξ : β → 𝓞 K), ξ ≠ 0 ∧ a *ᵥ ξ = 0 ∧
    ∀ l, house (ξ l).1 ≤ c₁ K * ((c₁ K * q * A) ^ ((p : ℝ) / (q - p))) := by
  classical
  let h := finrank ℚ K
  have hphqh : p * h < q * h := mul_lt_mul_of_pos_right hpq finrank_pos
  have h0ph : 0 < p * h := by rw [mul_pos_iff]; constructor; exact ⟨h0p, finrank_pos⟩
  have hfinp : Fintype.card (α × (K →+* ℂ)) = p * h := by
    rw [Fintype.card_prod, cardα, Embeddings.card]
  have hfinq : Fintype.card (β × (K →+* ℂ)) = q * h := by
    rw [Fintype.card_prod, cardβ, Embeddings.card]
  have ⟨x, hxl, hmulvec0, hxbound⟩ :=
    Int.Matrix.exists_ne_zero_int_vec_norm_le' (asiegel K a)
      (by rwa [hfinp, hfinq]) (by rwa [hfinp]) (asiegel_ne_0 K a ha)
  simp only [hfinp, hfinq, Nat.cast_mul] at hmulvec0 hxbound
  rw [← sub_mul, mul_div_mul_right _ _ (mod_cast finrank_pos.ne')] at hxbound
  have Apos : 0 ≤ A := by
    have ⟨k⟩ := Fintype.card_pos_iff.1 (cardα ▸ h0p)
    have ⟨l⟩ := Fintype.card_pos_iff.1 (cardβ ▸ h0p.trans hpq)
    exact le_trans (house_nonneg _) (habs k l)
  use ξ K x, ξ_ne_0 K x hxl, ξ_mulVec_eq_0 K a x hxl hmulvec0,
    house_le_bound K a hpq x habs Apos hxbound

end

end NumberField.house
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AlgebraicNumberTheory/House/Variant090ed54c3058657865f7830aac1bcf1c209e003a1bd8ef9b93b2fad02a0423df.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AlgebraicNumberTheory/House/Variant090ed54c3058657865f7830aac1bcf1c209e003a1bd8ef9b93b2fad02a0423df.lean#L300).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c8ed24826fa9449efbaea34b87659bb52a1583a1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
