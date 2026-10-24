# normalClosure_of_stabilizer_eq_top

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:946a1b8c-eed2-fdd1-346e-5dfc8013060e",
  "kind": "theorem",
  "lexical_name": "normalClosure_of_stabilizer_eq_top",
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
  "slug": "normalclosure-of-stabilizer-eq-top--af8b624486f0ffb47aba705a",
  "source": {
    "blob": "b3c89c327850069da2663c44090fac53c37ff192",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 107,
    "line": 66,
    "path": "GRWTSK/Algebra/GroupTheory/Jordan/Variant27b0cd1ab83231251cfdf01065b7bd947104d321d2c6e5f14e268f072714ad67.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:af8b624486f0ffb47aba705a0e36506fa3d8f0011ad912ca99ae8bbf9a6d1be2",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Jordan/Variant27b0cd1ab83231251cfdf01065b7bd947104d321d2c6e5f14e268f072714ad67.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:946a1b8c-eed2-fdd1-346e-5dfc8013060e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 66–107.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem normalClosure_of_stabilizer_eq_top (hsn' : 2 < ENat.card α)
    (hG' : IsMultiplyPretransitive G α 2) {a : α} :
    normalClosure ((stabilizer G a) : Set G) = ⊤ := by
  have : IsPretransitive G α := by
    rw [← is_one_pretransitive_iff]
    exact isMultiplyPretransitive_of_le' (one_le_two) (le_of_lt hsn')
  have : Nontrivial α := by
    rw [← ENat.one_lt_card_iff_nontrivial]
    exact lt_trans (by norm_num) hsn'
  have hGa : IsCoatom (stabilizer G a) := by
    rw [isCoatom_stabilizer_iff_preprimitive]
    exact isPreprimitive_of_is_two_pretransitive hG'
  apply hGa.right
  -- Remains to prove: (stabilizer G a) < Subgroup.normalClosure (stabilizer G a)
  constructor
  · apply le_normalClosure
  · intro hyp
    have : Nontrivial (ofStabilizer G a) := by
      rw [← ENat.one_lt_card_iff_nontrivial]
      apply lt_of_add_lt_add_right
      rwa [ENat_card_ofStabilizer_add_one_eq]
    rw [nontrivial_iff] at this
    obtain ⟨b, c, hbc⟩ := this
    have : IsPretransitive (stabilizer G a) (ofStabilizer G a) := by
      rw [← is_one_pretransitive_iff]
      rwa [← ofStabilizer.isMultiplyPretransitive]
    -- get g ∈ stabilizer G a, g • b = c,
    obtain ⟨⟨g, hg⟩, hgbc⟩ := exists_smul_eq (stabilizer G a) b c
    apply hbc
    rw [← SetLike.coe_eq_coe] at hgbc ⊢
    obtain ⟨h, hinvab⟩ := exists_smul_eq G (b : α) a
    rw [eq_comm, ← inv_smul_eq_iff] at hinvab
    rw [← hgbc, SetLike.val_smul, ← hinvab, inv_smul_eq_iff, eq_comm]
    simp only [subgroup_smul_def, smul_smul, ← mul_assoc, ← mem_stabilizer_iff]
    exact hyp (normalClosure_normal.conj_mem g (le_normalClosure hg) h)

open MulAction.IsPreprimitive

open scoped Pointwise

/-- Simultaneously prove `MulAction.IsPreprimitive.is_two_pretransitive`
and `MulAction.IsPreprimitive.is_two_preprimitive`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Jordan/Variant27b0cd1ab83231251cfdf01065b7bd947104d321d2c6e5f14e268f072714ad67.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Jordan/Variant27b0cd1ab83231251cfdf01065b7bd947104d321d2c6e5f14e268f072714ad67.lean#L66).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b3c89c327850069da2663c44090fac53c37ff192` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
