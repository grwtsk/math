# repr_mul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5cebfd62-4824-130b-ea8e-e5e34619ea6d",
  "kind": "theorem",
  "lexical_name": "repr_mul",
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
  "slug": "repr-mul--951d261484f1bf54e7bef0c5",
  "source": {
    "blob": "bedcc3ed05793f1be7551827d345e40153184598",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 647,
    "line": 620,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Notation/Variant070cb7239eecd46d74400858b5889f4b0e5b6e6f41fdcaef733b2c4b26d3d69b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:951d261484f1bf54e7bef0c541c9c8d3cde74d1595c0089b0c49ff6a4cf2f6fb",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/SetTheory/Notation/Variant070cb7239eecd46d74400858b5889f4b0e5b6e6f41fdcaef733b2c4b26d3d69b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5cebfd62-4824-130b-ea8e-e5e34619ea6d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 620–647.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem repr_mul : ∀ (o₁ o₂) [NF o₁] [NF o₂], repr (o₁ * o₂) = repr o₁ * repr o₂
  | 0, o, _, h₂ => by cases o <;> exact (zero_mul _).symm
  | oadd e₁ n₁ a₁, 0, _, _ => (mul_zero _).symm
  | oadd e₁ n₁ a₁, oadd e₂ n₂ a₂, h₁, h₂ => by
    have IH : repr (mul _ _) = _ := @repr_mul _ _ h₁ h₂.snd
    conv =>
      lhs
      simp [(· * ·)]
    have ao : repr a₁ + ω ^ repr e₁ * (n₁ : ℕ) = ω ^ repr e₁ * (n₁ : ℕ) := by
      apply add_absorp h₁.snd'.repr_lt
      simpa using (Ordinal.mul_le_mul_iff_left <| opow_pos _ omega_pos).2 (nat_cast_le.2 n₁.2)
    by_cases e0 : e₂ = 0 <;> simp [e0, mul]
    · cases' Nat.exists_eq_succ_of_ne_zero n₂.ne_zero with x xe
      simp [h₂.zero_of_zero e0, xe, -Nat.cast_succ]
      rw [nat_cast_succ x, add_mul_succ _ ao, mul_assoc]
    · haveI := h₁.fst
      haveI := h₂.fst
      simp [IH, Mul.mul, mul, e0, repr_add, opow_add, mul_add]
      rw [← mul_assoc]
      congr 2
      have := mt repr_inj.1 e0
      rw [add_mul_limit ao (opow_isLimit_left omega_isLimit this), mul_assoc,
        mul_omega_dvd (nat_cast_pos.2 n₁.pos) (nat_lt_omega _)]
      simpa using opow_dvd_opow ω (one_le_iff_ne_zero.2 this)
#align onote.repr_mul ONote.repr_mul

/-- Calculate division and remainder of `o` mod ω.
  `split' o = (a, n)` means `o = ω * a + n`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/SetTheory/Notation/Variant070cb7239eecd46d74400858b5889f4b0e5b6e6f41fdcaef733b2c4b26d3d69b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Notation/Variant070cb7239eecd46d74400858b5889f4b0e5b6e6f41fdcaef733b2c4b26d3d69b.lean#L620).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bedcc3ed05793f1be7551827d345e40153184598` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
