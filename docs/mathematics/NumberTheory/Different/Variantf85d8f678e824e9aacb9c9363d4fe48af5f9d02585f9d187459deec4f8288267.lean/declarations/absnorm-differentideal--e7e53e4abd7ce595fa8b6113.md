# absNorm_differentIdeal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1668a9be-d5e8-92dd-272b-242bc09ae6c0",
  "kind": "lemma",
  "lexical_name": "absNorm_differentIdeal",
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
  "slug": "absnorm-differentideal--e7e53e4abd7ce595fa8b6113",
  "source": {
    "blob": "c704435797008f41895577f65f1cf04d114bd5d8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 86,
    "line": 51,
    "path": "GRWTSK/NumberTheory/Different/Variantf85d8f678e824e9aacb9c9363d4fe48af5f9d02585f9d187459deec4f8288267.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e7e53e4abd7ce595fa8b6113f75ba608256232464b1057d9d8deda988c8764b8",
  "verification": {
    "reference": "docs/verification/NumberTheory/Different/Variantf85d8f678e824e9aacb9c9363d4fe48af5f9d02585f9d187459deec4f8288267.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1668a9be-d5e8-92dd-272b-242bc09ae6c0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 51–86.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma absNorm_differentIdeal : (differentIdeal ℤ 𝒪).absNorm = (discr K).natAbs := by
  refine (differentIdeal ℤ 𝒪).toAddSubgroup.relIndex_top_right.symm.trans ?_
  rw [← Submodule.comap_map_eq_of_injective (f := Algebra.linearMap 𝒪 K)
    (FaithfulSMul.algebraMap_injective 𝒪 K) (differentIdeal ℤ 𝒪)]
  refine (AddSubgroup.relIndex_comap (IsLocalization.coeSubmodule K
    (differentIdeal ℤ 𝒪)).toAddSubgroup (algebraMap 𝒪 K).toAddMonoidHom ⊤).trans ?_
  have := FractionalIdeal.quotientEquiv (R := 𝒪) (K := K) 1 (differentIdeal ℤ 𝒪)
    (differentIdeal ℤ 𝒪)⁻¹ 1 (by simp [differentIdeal_ne_bot]) FractionalIdeal.coeIdeal_le_one
    (le_inv_of_le_inv₀ (by simp [pos_iff_ne_zero, differentIdeal_ne_bot])
      (by simpa using FractionalIdeal.coeIdeal_le_one)) one_ne_zero one_ne_zero
  have := Nat.card_congr this.toEquiv
  refine this.trans ?_
  rw [FractionalIdeal.coe_one, coeIdeal_differentIdeal (K := ℚ), inv_inv]
  let b := integralBasis K
  let b' := (Algebra.traceForm ℚ K).dualBasis (traceForm_nondegenerate ℚ K) b
  have hb : Submodule.span ℤ (Set.range b) = (1 : Submodule 𝒪 K).restrictScalars ℤ := by
    ext
    let e := IsIntegralClosure.equiv ℤ (RingOfIntegers K) K 𝒪
    simpa [e.symm.exists_congr_left, e] using mem_span_integralBasis K
  qify
  refine (AddSubgroup.relIndex_eq_abs_det (1 : Submodule 𝒪 K).toAddSubgroup (FractionalIdeal.dual
    ℤ ℚ 1 : FractionalIdeal 𝒪⁰ K).coeToSubmodule.toAddSubgroup ?_ b b' ?_ ?_).trans ?_
  · rw [Submodule.toAddSubgroup_le, ← FractionalIdeal.coe_one]
    exact FractionalIdeal.one_le_dual_one ℤ ℚ (L := K) (B := 𝒪)
  · apply AddSubgroup.toIntSubmodule.injective
    rw [AddSubgroup.toIntSubmodule_closure, hb, Submodule.toIntSubmodule_toAddSubgroup]
  · apply AddSubgroup.toIntSubmodule.injective
    rw [AddSubgroup.toIntSubmodule_closure, ← LinearMap.BilinForm.dualSubmodule_span_of_basis, hb]
    simp
  · simp only [Module.Basis.det_apply, discr, Algebra.discr]
    rw [← eq_intCast (algebraMap ℤ ℚ), RingHom.map_det]
    congr! 2
    ext i j
    simp [b', Module.Basis.toMatrix_apply, mul_comm (RingOfIntegers.basis K i),
      b, integralBasis_apply, ← map_mul, Algebra.trace_localization ℤ ℤ⁰]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Different/Variantf85d8f678e824e9aacb9c9363d4fe48af5f9d02585f9d187459deec4f8288267.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Different/Variantf85d8f678e824e9aacb9c9363d4fe48af5f9d02585f9d187459deec4f8288267.lean#L51).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c704435797008f41895577f65f1cf04d114bd5d8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
