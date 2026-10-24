# restrict

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6e06328864026091b1ed8689cfce936f92fcf56cd9a1ca105a94e2eb2d4017c4",
  "kind": "def",
  "lexical_name": "restrict",
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
  "slug": "restrict--2eba2fdf59d0a1f611fac456",
  "source": {
    "blob": "4f2ffabc54da049d773c1bb0bd8112a123794157",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 501,
    "line": 476,
    "path": "GRWTSK/Algebra/RingTheory/Basic/Variantb689d2dae4275d29b812732d7683e5ef61cdd7742d0b664474555e5c36725ce3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2eba2fdf59d0a1f611fac4563ce518485c6caba82b6ec184775542a5be0398c8",
  "verification": {
    "reference": "docs/verification/Algebra/RingTheory/Basic/Variantb689d2dae4275d29b812732d7683e5ef61cdd7742d0b664474555e5c36725ce3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6e06328864026091b1ed8689cfce936f92fcf56cd9a1ca105a94e2eb2d4017c4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 476–501.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def restrict : Valuation R (ValueGroup₀ (.ofClass v)) where
  __ := restrict₀ (.ofClass v)
  map_add_le_max' x y := by
    by_cases H : v x ≠ 0 ∨ v y ≠ 0
    · rcases H with h | h
      all_goals simp only [ZeroHom.toFun_eq_coe, toZeroHom_coe, restrict₀_apply, coe_ofClass, h,
        reduceDIte, le_sup_iff]
      all_goals split_ifs with H
      · simp [H]
      · simp only [H, ↓reduceDIte, WithZero.coe_le_coe, Subtype.mk_le_mk, ← Units.val_le_val,
          Units.val_mk0]
        split_ifs with hy
        · simpa [hy] using map_add_le _ (le_rfl (a := v x)) (hy ▸ zero_le)
        · simp [hy, ← Units.val_le_val]
      · simp [H]
      · simp only [H, ↓reduceDIte, WithZero.coe_le_coe, Subtype.mk_le_mk]
        split_ifs with hx
        · simpa [hx, ← Units.val_le_val] using map_add_le _ (hx ▸ zero_le) (le_rfl (a := v y))
        · simp [hx, ← Units.val_le_val]
    · simp only [ne_eq, not_or, Decidable.not_not] at H
      simp only [ZeroHom.toFun_eq_coe, toZeroHom_coe, restrict₀_apply,
        MonoidWithZeroHom.coe_ofClass, H, ↓reduceDIte, max_self, nonpos_iff_eq_zero]
      replace H : v (x + y) = 0 :=
        le_antisymm (map_add_le _ (le_of_eq H.1) (le_of_eq H.2)) zero_le
      simp [H]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/RingTheory/Basic/Variantb689d2dae4275d29b812732d7683e5ef61cdd7742d0b664474555e5c36725ce3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/RingTheory/Basic/Variantb689d2dae4275d29b812732d7683e5ef61cdd7742d0b664474555e5c36725ce3.lean#L476).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4f2ffabc54da049d773c1bb0bd8112a123794157` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
