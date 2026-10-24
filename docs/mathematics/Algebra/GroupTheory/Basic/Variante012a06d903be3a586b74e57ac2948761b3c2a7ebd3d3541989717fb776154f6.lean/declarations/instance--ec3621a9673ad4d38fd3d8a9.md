# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2b35266d503e7ab86d0dc6fb481594865fdea2a421bdd75f1872b892c740b6c0",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--ec3621a9673ad4d38fd3d8a9",
  "source": {
    "blob": "b15b0f65dc1f492d95ba656e345e1f0189d72f5a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1423,
    "line": 1364,
    "path": "GRWTSK/Algebra/GroupTheory/Basic/Variante012a06d903be3a586b74e57ac2948761b3c2a7ebd3d3541989717fb776154f6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ec3621a9673ad4d38fd3d8a9563b476f0244f46b2ef37fbd9827430bf20f4e0c",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Basic/Variante012a06d903be3a586b74e57ac2948761b3c2a7ebd3d3541989717fb776154f6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2b35266d503e7ab86d0dc6fb481594865fdea2a421bdd75f1872b892c740b6c0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1364–1423.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance (priority := 100) : NormalizedGCDMonoid G₀ where
  normUnit x := if h : x = 0 then 1 else (Units.mk0 x h)⁻¹
  normUnit_zero := dif_pos rfl
  normUnit_mul := fun {x y} x0 y0 => Units.eq_iff.1 (by
    -- Porting note: need `dsimp only`, also `simp` reaches maximum heartbeat
    -- by Units.eq_iff.mp (by simp only [x0, y0, mul_comm])
    dsimp only
    split_ifs with h
    · rw [mul_eq_zero] at h
      cases h
      · exact absurd ‹x = 0› x0
      · exact absurd ‹y = 0› y0
    · rw [Units.mk0_mul, mul_inv_rev, mul_comm] )
  normUnit_coe_units u := by
    -- Porting note: need `dsimp only`
    dsimp only
    rw [dif_neg (Units.ne_zero _), Units.mk0_val]
  gcd a b := if a = 0 ∧ b = 0 then 0 else 1
  lcm a b := if a = 0 ∨ b = 0 then 0 else 1
  gcd_dvd_left a b := by
    -- Porting note: need `dsimp only`
    dsimp only
    split_ifs with h
    · rw [h.1]
    · exact one_dvd _
  gcd_dvd_right a b := by
    -- Porting note: need `dsimp only`
    dsimp only
    split_ifs with h
    · rw [h.2]
    · exact one_dvd _
  dvd_gcd := fun {a b c} hac hab => by
    -- Porting note: need `dsimp only`
    dsimp only
    split_ifs with h
    · apply dvd_zero
    · rw [not_and_or] at h
      cases h
      · refine' isUnit_iff_dvd_one.mp (isUnit_of_dvd_unit _ (IsUnit.mk0 _ ‹c ≠ 0›))
        exact hac
      · refine' isUnit_iff_dvd_one.mp (isUnit_of_dvd_unit _ (IsUnit.mk0 _ ‹b ≠ 0›))
        exact hab
  gcd_mul_lcm a b := by
    by_cases ha : a = 0
    · simp only [ha, true_and, true_or, ite_true, mul_zero, zero_mul]
      exact Associated.refl _
    · by_cases hb : b = 0
      · simp only [hb, and_true, or_true, ite_true, mul_zero]
        exact Associated.refl _
      -- Porting note: need `dsimp only`
      · dsimp only
        rw [if_neg (not_and_of_not_left _ ha), one_mul, if_neg (not_or_of_not ha hb)]
        exact (associated_one_iff_isUnit.mpr ((IsUnit.mk0 _ ha).mul (IsUnit.mk0 _ hb))).symm
  lcm_zero_left b := if_pos (Or.inl rfl)
  lcm_zero_right a := if_pos (Or.inr rfl)
  -- `split_ifs` wants to split `normalize`, so handle the cases manually
  normalize_gcd a b := if h : a = 0 ∧ b = 0 then by simp [if_pos h] else by simp [if_neg h]
  normalize_lcm a b := if h : a = 0 ∨ b = 0 then by simp [if_pos h] else by simp [if_neg h]

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Basic/Variante012a06d903be3a586b74e57ac2948761b3c2a7ebd3d3541989717fb776154f6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Basic/Variante012a06d903be3a586b74e57ac2948761b3c2a7ebd3d3541989717fb776154f6.lean#L1364).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b15b0f65dc1f492d95ba656e345e1f0189d72f5a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
