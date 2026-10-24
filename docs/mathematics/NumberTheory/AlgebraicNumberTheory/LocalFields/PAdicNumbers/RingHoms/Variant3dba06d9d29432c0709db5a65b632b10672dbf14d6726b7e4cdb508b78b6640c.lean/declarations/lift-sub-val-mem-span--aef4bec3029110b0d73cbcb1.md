# lift_sub_val_mem_span

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0a52b306-3349-617b-cfe0-bd52b439129d",
  "kind": "theorem",
  "lexical_name": "lift_sub_val_mem_span",
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
  "slug": "lift-sub-val-mem-span--aef4bec3029110b0d73cbcb1",
  "source": {
    "blob": "133710057c59a33dfd614205c183159246a63030",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 644,
    "line": 625,
    "path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/RingHoms/Variant3dba06d9d29432c0709db5a65b632b10672dbf14d6726b7e4cdb508b78b6640c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:aef4bec3029110b0d73cbcb1a5a1a7c21e76b5a58cafaa50c7d8dbdc2301d9c1",
  "verification": {
    "reference": "docs/verification/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/RingHoms/Variant3dba06d9d29432c0709db5a65b632b10672dbf14d6726b7e4cdb508b78b6640c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0a52b306-3349-617b-cfe0-bd52b439129d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 625–644.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem lift_sub_val_mem_span (r : R) (n : ℕ) :
    lift f_compat r - (f n r).val ∈ (Ideal.span {(p : ℤ_[p]) ^ n}) := by
  obtain ⟨k, hk⟩ :=
    limNthHom_spec f_compat r _
      (show (0 : ℝ) < (p : ℝ) ^ (-n : ℤ) from Nat.zpow_pos_of_pos hp_prime.1.pos _)
  have := le_of_lt (hk (max n k) (le_max_right _ _))
  rw [norm_le_pow_iff_mem_span_pow] at this
  dsimp [lift]
  rw [sub_eq_sub_add_sub (limNthHom f_compat r) _ ↑(nthHom f r (max n k))]
  apply Ideal.add_mem _ _ this
  rw [Ideal.mem_span_singleton]
  convert
    (Int.castRingHom ℤ_[p]).map_dvd (pow_dvd_nthHom_sub f_compat r n (max n k) (le_max_left _ _))
  · rw [map_pow]; rfl
  · rw [map_sub]; rfl
#align padic_int.lift_sub_val_mem_span PadicInt.lift_sub_val_mem_span

/-- One part of the universal property of `ℤ_[p]` as a projective limit.
See also `PadicInt.lift_unique`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/RingHoms/Variant3dba06d9d29432c0709db5a65b632b10672dbf14d6726b7e4cdb508b78b6640c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/RingHoms/Variant3dba06d9d29432c0709db5a65b632b10672dbf14d6726b7e4cdb508b78b6640c.lean#L625).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `133710057c59a33dfd614205c183159246a63030` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
