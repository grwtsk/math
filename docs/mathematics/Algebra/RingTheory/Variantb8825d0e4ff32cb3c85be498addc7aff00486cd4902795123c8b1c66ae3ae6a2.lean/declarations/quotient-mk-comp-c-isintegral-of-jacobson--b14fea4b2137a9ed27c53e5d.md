# quotient_mk_comp_C_isIntegral_of_jacobson'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:abdeb561-4b47-7ae3-728a-f15bff30b9ad",
  "kind": "theorem",
  "lexical_name": "quotient_mk_comp_C_isIntegral_of_jacobson'",
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
  "slug": "quotient-mk-comp-c-isintegral-of-jacobson--b14fea4b2137a9ed27c53e5d",
  "source": {
    "blob": "d9dbe84d417b0086e6bfc7f205cefac230f5406b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 542,
    "line": 504,
    "path": "GRWTSK/Algebra/Ring/Variantb8825d0e4ff32cb3c85be498addc7aff00486cd4902795123c8b1c66ae3ae6a2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b14fea4b2137a9ed27c53e5dad058220549849ef4dc1ced7f041da5190119c0e",
  "verification": {
    "reference": "docs/verification/Algebra/RingTheory/Variantb8825d0e4ff32cb3c85be498addc7aff00486cd4902795123c8b1c66ae3ae6a2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:abdeb561-4b47-7ae3-728a-f15bff30b9ad`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 504–542.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem quotient_mk_comp_C_isIntegral_of_jacobson' [Nontrivial R] (hR : IsJacobsonRing R)
    (hP' : ∀ x : R, C x ∈ P → x = 0) :
    ((Ideal.Quotient.mk P).comp C : R →+* R[X] ⧸ P).IsIntegral := by
  refine (isIntegral_quotientMap_iff _).mp ?_
  let P' : Ideal R := P.comap C
  obtain ⟨pX, hpX, hp0⟩ :=
    exists_nonzero_mem_of_ne_bot (ne_of_lt (bot_lt_of_maximal P polynomial_not_isField)).symm hP'
  let a : R ⧸ P' := (pX.map (Ideal.Quotient.mk P')).leadingCoeff
  let M : Submonoid (R ⧸ P') := Submonoid.powers a
  let φ : R ⧸ P' →+* R[X] ⧸ P := quotientMap P C le_rfl
  haveI hP'_prime : P'.IsPrime := comap_isPrime C P
  have hM : (0 : R ⧸ P') ∉ M := fun ⟨n, hn⟩ => hp0 <| leadingCoeff_eq_zero.mp (pow_eq_zero hn)
  let M' : Submonoid (R[X] ⧸ P) := M.map φ
  refine RingHom.IsIntegral.tower_bot φ (algebraMap _ (Localization M')) ?_ ?_
  · refine IsLocalization.injective (Localization M')
      (show M' ≤ _ from le_nonZeroDivisors_of_noZeroDivisors fun hM' => hM ?_)
    exact
      let ⟨z, zM, z0⟩ := hM'
      quotientMap_injective (_root_.trans z0 φ.map_zero.symm) ▸ zM
  · suffices RingHom.comp (algebraMap (R[X] ⧸ P) (Localization M')) φ =
      (IsLocalization.map (Localization M') φ M.le_comap_map).comp
        (algebraMap (R ⧸ P') (Localization M)) by
      rw [this]
      refine RingHom.IsIntegral.trans (algebraMap (R ⧸ P') (Localization M))
        (IsLocalization.map (Localization M') φ M.le_comap_map) ?_ ?_
      · exact (algebraMap (R ⧸ P') (Localization M)).isIntegral_of_surjective
          (IsField.localization_map_bijective hM ((Quotient.maximal_ideal_iff_isField_quotient _).mp
            (isMaximal_comap_C_of_isMaximal P hP'))).2
      · -- `convert` here is faster than `exact`, and this proof is near the time limit.
        -- convert isIntegral_isLocalization_polynomial_quotient P pX hpX
        have isloc : IsLocalization M' (Localization M') := by infer_instance
        exact @isIntegral_isLocalization_polynomial_quotient R _
          (Localization M) (Localization M') _ _ P pX hpX _ _ _ isloc
    rw [IsLocalization.map_comp M.le_comap_map]

variable [IsJacobsonRing R]

/-- If `R` is a Jacobson ring, and `P` is a maximal ideal of `R[X]`,
  then `R → R[X]/P` is an integral map. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/RingTheory/Variantb8825d0e4ff32cb3c85be498addc7aff00486cd4902795123c8b1c66ae3ae6a2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Ring/Variantb8825d0e4ff32cb3c85be498addc7aff00486cd4902795123c8b1c66ae3ae6a2.lean#L504).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d9dbe84d417b0086e6bfc7f205cefac230f5406b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
