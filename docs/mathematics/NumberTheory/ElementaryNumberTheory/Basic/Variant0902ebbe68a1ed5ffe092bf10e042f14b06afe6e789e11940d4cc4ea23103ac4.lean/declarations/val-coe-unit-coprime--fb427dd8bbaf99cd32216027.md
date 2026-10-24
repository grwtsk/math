# val_coe_unit_coprime

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2ab6c6fe-31de-6ce8-dd10-2b53c26766aa",
  "kind": "theorem",
  "lexical_name": "val_coe_unit_coprime",
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
  "slug": "val-coe-unit-coprime--fb427dd8bbaf99cd32216027",
  "source": {
    "blob": "ce55d9d4545548f1af235ca01c960aab74f90e91",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 796,
    "line": 787,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/Basic/Variant0902ebbe68a1ed5ffe092bf10e042f14b06afe6e789e11940d4cc4ea23103ac4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fb427dd8bbaf99cd32216027e6306980017da9c8018dfc665594b1b436c7520e",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/Basic/Variant0902ebbe68a1ed5ffe092bf10e042f14b06afe6e789e11940d4cc4ea23103ac4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2ab6c6fe-31de-6ce8-dd10-2b53c26766aa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 787–796.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem val_coe_unit_coprime {n : ℕ} (u : (ZMod n)ˣ) : Nat.Coprime (u : ZMod n).val n := by
  rcases n with - | n
  · rcases Int.units_eq_one_or u with (rfl | rfl) <;> simp
  apply Nat.coprime_of_mul_modEq_one ((u⁻¹ : Units (ZMod (n + 1))) : ZMod (n + 1)).val
  have := Units.ext_iff.1 (mul_inv_cancel u)
  rw [Units.val_one] at this
  rw [← eq_iff_modEq_nat, Nat.cast_one, ← this]; clear this
  rw [← natCast_zmod_val ((u * u⁻¹ : Units (ZMod (n + 1))) : ZMod (n + 1))]
  rw [Units.val_mul, val_mul, natCast_mod]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/Basic/Variant0902ebbe68a1ed5ffe092bf10e042f14b06afe6e789e11940d4cc4ea23103ac4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/Basic/Variant0902ebbe68a1ed5ffe092bf10e042f14b06afe6e789e11940d4cc4ea23103ac4.lean#L787).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ce55d9d4545548f1af235ca01c960aab74f90e91` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
