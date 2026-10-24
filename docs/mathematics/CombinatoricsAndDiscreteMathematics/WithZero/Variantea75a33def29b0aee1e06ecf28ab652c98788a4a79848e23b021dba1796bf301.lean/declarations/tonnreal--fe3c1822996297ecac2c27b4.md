# toNNReal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1bb645587a411fcc5c8ec3e5136ff4acf52780c0b15a0607ca8ddc82bd0a5159",
  "kind": "def",
  "lexical_name": "toNNReal",
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
  "slug": "tonnreal--fe3c1822996297ecac2c27b4",
  "source": {
    "blob": "58c2ad7cc1db9386ab38a6bce804c1b7eef6b5f6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 61,
    "line": 45,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/WithZero/Variantea75a33def29b0aee1e06ecf28ab652c98788a4a79848e23b021dba1796bf301.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fe3c1822996297ecac2c27b45b98c412d47cd00d5272fffd386f3cd2cbc24780",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/WithZero/Variantea75a33def29b0aee1e06ecf28ab652c98788a4a79848e23b021dba1796bf301.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1bb645587a411fcc5c8ec3e5136ff4acf52780c0b15a0607ca8ddc82bd0a5159`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 45–61.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def toNNReal {e : ℝ≥0} (he : e ≠ 0) : ℤᵐ⁰ →*₀ ℝ≥0 where
  toFun := fun x ↦ if hx : x = 0 then 0 else e ^ (WithZero.unzero hx).toAdd
  map_zero' := rfl
  map_one' := by rw [dite_eq_right one_ne_zero, unzero_coe (x := 1), toAdd_one, zpow_zero]
  map_mul' x y := by
    by_cases hxy : x * y = 0
    · rcases mul_eq_zero.mp hxy with hx | hy
      -- either x = 0 or y = 0
      · rw [dite_eq_left hxy, dite_eq_left hx, zero_mul]
      · rw [dite_eq_left hxy, dite_eq_left hy, mul_zero]
    · obtain ⟨hx, hy⟩ := mul_ne_zero_iff.mp hxy
      -- x ≠ 0 and y ≠ 0
      rw [dite_eq_right hxy, dite_eq_right hx, dite_eq_right hy, ← zpow_add' (Or.inl he),
        ← toAdd_mul]
      congr
      rw [← WithZero.coe_inj, WithZero.coe_mul, coe_unzero hx, coe_unzero hy, coe_unzero hxy]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/WithZero/Variantea75a33def29b0aee1e06ecf28ab652c98788a4a79848e23b021dba1796bf301.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/WithZero/Variantea75a33def29b0aee1e06ecf28ab652c98788a4a79848e23b021dba1796bf301.lean#L45).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `58c2ad7cc1db9386ab38a6bce804c1b7eef6b5f6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
