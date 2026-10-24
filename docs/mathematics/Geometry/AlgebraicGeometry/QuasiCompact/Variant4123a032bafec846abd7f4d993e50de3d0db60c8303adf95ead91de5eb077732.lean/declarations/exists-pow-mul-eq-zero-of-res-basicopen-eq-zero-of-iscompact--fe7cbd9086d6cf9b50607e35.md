# exists_pow_mul_eq_zero_of_res_basicOpen_eq_zero_of_isCompact

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:45d32225-0514-f364-352a-ebb544df0b80",
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
  "slug": "exists-pow-mul-eq-zero-of-res-basicopen-eq-zero-of-iscompact--fe7cbd9086d6cf9b50607e35",
  "source": {
    "blob": "d0089e9863bc5f1bbe575d893ef51e48d00cd625",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 322,
    "line": 277,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/QuasiCompact/Variant4123a032bafec846abd7f4d993e50de3d0db60c8303adf95ead91de5eb077732.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fe7cbd9086d6cf9b50607e355f3a293eba53e1e9ee838ab40aab4b54d3a32641",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/QuasiCompact/Variant4123a032bafec846abd7f4d993e50de3d0db60c8303adf95ead91de5eb077732.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:45d32225-0514-f364-352a-ebb544df0b80`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 277–322.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_pow_mul_eq_zero_of_res_basicOpen_eq_zero_of_isCompact (X : Scheme.{u})
    {U : X.Opens} (hU : IsCompact U.1) (x f : Γ(X, U))
    (H : x |_ (X.basicOpen f) = 0) :
    ∃ n : ℕ, f ^ n * x = 0 := by
  obtain ⟨s, hs, e⟩ := (isCompactOpen_iff_eq_finset_affine_union U.1).mp ⟨hU, U.2⟩
  replace e : U = iSup fun i : s => (i : X.Opens) := by
    ext1; simpa using e
  have h₁ : ∀ i : s, i.1.1 ≤ U := by
    intro i
    change (i : X.Opens) ≤ U
    rw [e]
    -- Porting note: `exact le_iSup _ _` no longer works
    exact le_iSup (fun (i : s) => (i : Opens (X.toPresheafedSpace))) _
  have H' := fun i : s =>
    exists_pow_mul_eq_zero_of_res_basicOpen_eq_zero_of_isAffineOpen X i.1.2
      (X.presheaf.map (homOfLE (h₁ i)).op x) (X.presheaf.map (homOfLE (h₁ i)).op f) ?_
  swap
  · show (X.presheaf.map (homOfLE _).op) ((X.presheaf.map (homOfLE _).op).hom x) = 0
    have H : (X.presheaf.map (homOfLE _).op) x = 0 := H
    convert congr_arg (X.presheaf.map (homOfLE _).op).hom H
    · simp only [← CommRingCat.comp_apply, ← Functor.map_comp]
      · rfl
    · rw [map_zero]
    · simp only [Scheme.basicOpen_res, inf_le_right]
  choose n hn using H'
  haveI := hs.to_subtype
  cases nonempty_fintype s
  use Finset.univ.sup n
  suffices ∀ i : s, X.presheaf.map (homOfLE (h₁ i)).op (f ^ Finset.univ.sup n * x) = 0 by
    subst e
    apply TopCat.Sheaf.eq_of_locally_eq X.sheaf fun i : s => (i : X.Opens)
    intro i
    show _ = (X.sheaf.val.map _) 0
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

/-- A section over a compact open of a scheme is nilpotent if and only if its associated
basic open is empty. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/QuasiCompact/Variant4123a032bafec846abd7f4d993e50de3d0db60c8303adf95ead91de5eb077732.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/QuasiCompact/Variant4123a032bafec846abd7f4d993e50de3d0db60c8303adf95ead91de5eb077732.lean#L277).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d0089e9863bc5f1bbe575d893ef51e48d00cd625` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
