# induction_rad

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7aa39734-aee5-a684-3ab7-610e3931af80",
  "kind": "theorem",
  "lexical_name": "induction_rad",
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
  "slug": "induction-rad--fcad935de87b4488f00ef1f3",
  "source": {
    "blob": "3e83b05f47b9548982f19e8ea3dde485ef684b25",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 283,
    "line": 256,
    "path": "GRWTSK/Algebra/FieldTheory/AbelRuffini/Variantbf98dffa6fcc24b731c49d4ae47b7df41da640c38ab620f84510eb62d3484bc5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fcad935de87b4488f00ef1f3143cd7696676439e9b600a769a6af0df0e43f656",
  "verification": {
    "reference": "docs/verification/Algebra/FieldTheory/AbelRuffini/Variantbf98dffa6fcc24b731c49d4ae47b7df41da640c38ab620f84510eb62d3484bc5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7aa39734-aee5-a684-3ab7-610e3931af80`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 256–283.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem induction_rad {x : E} (hx : x ∈ solvableByRad F E) {n : ℕ} (hn : n ≠ 0)
    (hα : Group.IsSolvable (minpoly F (x ^ n)).Gal) : Group.IsSolvable (minpoly F x).Gal := by
  let p := minpoly F (x ^ n)
  have hp : p.comp (X ^ n) ≠ 0 := by
    intro h
    rcases comp_eq_zero_iff.mp h with h' | h'
    · exact minpoly.ne_zero (isIntegral_of_mem_solvableByRad (pow_mem hx n)) h'
    · exact hn (by rw [← @natDegree_C F, ← h'.2, natDegree_X_pow])
  apply gal_isSolvable_of_splits
  · exact ⟨(SplittingField.splits (p.comp (X ^ n))).of_dvd (map_ne_zero hp)
      ((map_dvd_map' _).mpr (minpoly.dvd F x (by rw [aeval_comp, aeval_X_pow, minpoly.aeval])))⟩
  · refine gal_isSolvable_tower p (p.comp (X ^ n)) ?_ hα ?_
    · exact Gal.splits_in_splittingField_of_comp _ _ (by rwa [natDegree_X_pow])
    · obtain ⟨s, hs⟩ := splits_iff_exists_multiset.1 (SplittingField.splits p)
      rw [map_comp, Polynomial.map_pow, map_X, hs, mul_comp, C_comp]
      apply gal_mul_isSolvable (gal_C_isSolvable _)
      rw [multiset_prod_comp]
      apply gal_prod_isSolvable
      intro q hq
      rw [Multiset.mem_map] at hq
      obtain ⟨q, hq, rfl⟩ := hq
      rw [Multiset.mem_map] at hq
      obtain ⟨q, _, rfl⟩ := hq
      rw [sub_comp, X_comp, C_comp]
      exact gal_X_pow_sub_C_isSolvable n q

open IntermediateField

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/FieldTheory/AbelRuffini/Variantbf98dffa6fcc24b731c49d4ae47b7df41da640c38ab620f84510eb62d3484bc5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/FieldTheory/AbelRuffini/Variantbf98dffa6fcc24b731c49d4ae47b7df41da640c38ab620f84510eb62d3484bc5.lean#L256).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3e83b05f47b9548982f19e8ea3dde485ef684b25` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
