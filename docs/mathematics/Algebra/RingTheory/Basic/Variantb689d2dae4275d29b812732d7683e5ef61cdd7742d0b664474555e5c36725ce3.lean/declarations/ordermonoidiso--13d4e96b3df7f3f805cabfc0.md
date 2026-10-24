# orderMonoidIso

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f633d2a2b8d97e21b1fb8df2ef021ed105c43ddbd51db688348195050ee78ec1",
  "kind": "def",
  "lexical_name": "orderMonoidIso",
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
  "slug": "ordermonoidiso--13d4e96b3df7f3f805cabfc0",
  "source": {
    "blob": "4f2ffabc54da049d773c1bb0bd8112a123794157",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 893,
    "line": 849,
    "path": "GRWTSK/Algebra/RingTheory/Basic/Variantb689d2dae4275d29b812732d7683e5ef61cdd7742d0b664474555e5c36725ce3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:13d4e96b3df7f3f805cabfc0ee5a3002b9bd70354d7221a9758c93ad997185cd",
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

Occurrence: `declaration:f633d2a2b8d97e21b1fb8df2ef021ed105c43ddbd51db688348195050ee78ec1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 849–893.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def orderMonoidIso (h : v.IsEquiv w) :
    ValueGroup₀ (.ofClass v) ≃*o ValueGroup₀ (.ofClass w) where
  toFun := valueGroup₀Fun h
  invFun := valueGroup₀Fun h.symm
  map_mul' x y := by
    obtain _ | ⟨r₁, s₁, hr₁, hs₁, rfl⟩ := x.zero_or_exists_mk
    · simp_all [valueGroup₀Fun_zero]
    obtain _ | ⟨r₂, s₂, hr₂, hs₂, rfl⟩ := y.zero_or_exists_mk
    · simp_all [valueGroup₀Fun_zero]
    simp [← WithZero.coe_mul, valueGroup.mk_mul, valueGroup₀Fun_spec h]
  left_inv x := by
    obtain _ | ⟨r₁, s₁, hr₁, hs₁, rfl⟩ := x.zero_or_exists_mk
    · simp_all [valueGroup₀Fun_zero]
    rw [valueGroup₀Fun_spec h, valueGroup₀Fun_spec h.symm]
  right_inv x := by
    obtain _ | ⟨r₁, s₁, hr₁, hs₁, rfl⟩ := x.zero_or_exists_mk
    · simp_all [valueGroup₀Fun_zero]
    rw [valueGroup₀Fun_spec h.symm, valueGroup₀Fun_spec h]
  map_le_map_iff' {x} {y} := by
    simp only [valueGroup₀Fun, ne_eq]
    split_ifs with hx0 hy0 hy0
    · simp [hx0, hy0]
    · simp [hx0]
    · simp [hx0, hy0]
    · generalize_proofs _ _ _ _ hx _ _ hy
      conv_rhs => rw [hx.choose_spec, hy.choose_spec]
      simp only [valueGroup.mk, WithZero.coe_le_coe, Subtype.mk_le_mk]
      nth_rw 2 [mul_comm]
      rw [le_mul_inv_iff_mul_le, mul_assoc, mul_comm, ← le_mul_inv_iff_mul_le, inv_inv]
      nth_rw 4 [mul_comm]
      conv_rhs =>
        rw [le_mul_inv_iff_mul_le, mul_assoc, mul_comm, ← le_mul_inv_iff_mul_le, inv_inv]
      generalize_proofs _ hx' hx20 hy' hy10 hx10 hy20
      rw [← Units.mk0_mul _ _ (mul_ne_zero hx10 hy20), ← Units.mk0_mul _ _ (mul_ne_zero hx20 hy10),
        ← Units.mk0_mul, ← Units.mk0_mul]
      · simp only [← Units.val_le_val]
        repeat rw [Units.val_mk0]
        simp only [MonoidWithZeroHom.coe_ofClass, ← map_mul w, ← h.le_iff_le]
        simp
      · simpa only [MonoidWithZeroHom.coe_ofClass, ← map_mul v, ne_eq, h.eq_zero, map_mul w]
          using mul_ne_zero hx10 hy20
      · simpa only [MonoidWithZeroHom.coe_ofClass, ← map_mul v, ne_eq, h.eq_zero, map_mul w]
          using mul_ne_zero hx20 hy10

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/RingTheory/Basic/Variantb689d2dae4275d29b812732d7683e5ef61cdd7742d0b664474555e5c36725ce3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/RingTheory/Basic/Variantb689d2dae4275d29b812732d7683e5ef61cdd7742d0b664474555e5c36725ce3.lean#L849).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4f2ffabc54da049d773c1bb0bd8112a123794157` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
