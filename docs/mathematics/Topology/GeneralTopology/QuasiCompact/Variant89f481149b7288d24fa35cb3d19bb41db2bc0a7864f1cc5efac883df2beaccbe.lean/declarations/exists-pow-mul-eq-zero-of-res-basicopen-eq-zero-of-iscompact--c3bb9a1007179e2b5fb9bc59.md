# exists_pow_mul_eq_zero_of_res_basicOpen_eq_zero_of_isCompact

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:eeea0cdf-673d-8cd6-3640-f7fb01777601",
  "kind": "theorem",
  "lexical_name": "exists_pow_mul_eq_zero_of_res_basicOpen_eq_zero_of_isCompact",
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
  "slug": "exists-pow-mul-eq-zero-of-res-basicopen-eq-zero-of-iscompact--c3bb9a1007179e2b5fb9bc59",
  "source": {
    "blob": "05399ce62aa03a6bf827e5e15e46066b6be70e23",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 356,
    "line": 314,
    "path": "GRWTSK/Topology/GeneralTopology/QuasiCompact/Variant89f481149b7288d24fa35cb3d19bb41db2bc0a7864f1cc5efac883df2beaccbe.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c3bb9a1007179e2b5fb9bc5969ef6aaaf9a7425bb140ff55613c61644e5483bf",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/QuasiCompact/Variant89f481149b7288d24fa35cb3d19bb41db2bc0a7864f1cc5efac883df2beaccbe.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:eeea0cdf-673d-8cd6-3640-f7fb01777601`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 314–356.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_pow_mul_eq_zero_of_res_basicOpen_eq_zero_of_isCompact (X : Scheme.{u})
    {U : Opens X.carrier} (hU : IsCompact U.1) (x f : X.presheaf.obj (op U))
    (H : x |_ X.basicOpen f = 0) : ∃ n : ℕ, f ^ n * x = 0 := by
  obtain ⟨s, hs, e⟩ := (isCompact_open_iff_eq_finset_affine_union U.1).mp ⟨hU, U.2⟩
  replace e : U = iSup fun i : s => (i : Opens X.carrier)
  · ext1; simpa using e
  have h₁ : ∀ i : s, i.1.1 ≤ U := by
    intro i
    change (i : Opens X.carrier) ≤ U
    rw [e]
    -- porting note: `exact le_iSup _ _` no longer works
    exact le_iSup (fun (i : s) => (i : Opens (X.toPresheafedSpace))) _
  have H' := fun i : s =>
    exists_pow_mul_eq_zero_of_res_basicOpen_eq_zero_of_isAffineOpen X i.1.2
      (X.presheaf.map (homOfLE (h₁ i)).op x) (X.presheaf.map (homOfLE (h₁ i)).op f) ?_
  swap
  · delta TopCat.Presheaf.restrictOpen TopCat.Presheaf.restrict at H ⊢
    convert congr_arg (X.presheaf.map (homOfLE _).op) H
    · simp only [← comp_apply, ← Functor.map_comp]
      rfl
    · rw [map_zero]
      simp only [Scheme.basicOpen_res, ge_iff_le, inf_le_right]
  choose n hn using H'
  haveI := hs.to_subtype
  cases nonempty_fintype s
  use Finset.univ.sup n
  suffices ∀ i : s, X.presheaf.map (homOfLE (h₁ i)).op (f ^ Finset.univ.sup n * x) = 0 by
    subst e
    apply TopCat.Sheaf.eq_of_locally_eq X.sheaf fun i : s => (i : Opens X.carrier)
    intro i
    rw [map_zero]
    apply this
  intro i
  replace hn :=
    congr_arg (fun x => X.presheaf.map (homOfLE (h₁ i)).op (f ^ (Finset.univ.sup n - n i)) * x)
      (hn i)
  dsimp at hn
  simp only [← map_mul, ← map_pow] at hn
  rwa [mul_zero, ← mul_assoc, ← pow_add, tsub_add_cancel_of_le] at hn
  apply Finset.le_sup (Finset.mem_univ i)
#align algebraic_geometry.exists_pow_mul_eq_zero_of_res_basic_open_eq_zero_of_is_compact AlgebraicGeometry.exists_pow_mul_eq_zero_of_res_basicOpen_eq_zero_of_isCompact

end AlgebraicGeometry
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/QuasiCompact/Variant89f481149b7288d24fa35cb3d19bb41db2bc0a7864f1cc5efac883df2beaccbe.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/QuasiCompact/Variant89f481149b7288d24fa35cb3d19bb41db2bc0a7864f1cc5efac883df2beaccbe.lean#L314).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `05399ce62aa03a6bf827e5e15e46066b6be70e23` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
