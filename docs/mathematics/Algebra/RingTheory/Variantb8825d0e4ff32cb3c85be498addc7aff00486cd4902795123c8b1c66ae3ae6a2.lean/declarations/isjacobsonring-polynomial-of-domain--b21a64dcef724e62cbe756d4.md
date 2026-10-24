# isJacobsonRing_polynomial_of_domain

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ee1811a6-e5c3-fde0-58a1-620ed5acd9ea",
  "kind": "theorem",
  "lexical_name": "isJacobsonRing_polynomial_of_domain",
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
  "slug": "isjacobsonring-polynomial-of-domain--b21a64dcef724e62cbe756d4",
  "source": {
    "blob": "d9dbe84d417b0086e6bfc7f205cefac230f5406b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 412,
    "line": 392,
    "path": "GRWTSK/Algebra/Ring/Variantb8825d0e4ff32cb3c85be498addc7aff00486cd4902795123c8b1c66ae3ae6a2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b21a64dcef724e62cbe756d440e1e6e7ab6da2b86459d5c2b706aeab4eb94131",
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

Occurrence: `result:ee1811a6-e5c3-fde0-58a1-620ed5acd9ea`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 392–412.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem isJacobsonRing_polynomial_of_domain (R : Type*) [CommRing R] [IsDomain R]
    [hR : IsJacobsonRing R] (P : Ideal R[X]) [IsPrime P] (hP : ∀ x : R, C x ∈ P → x = 0) :
    P.jacobson = P := by
  by_cases Pb : P = ⊥
  · exact Pb.symm ▸
      jacobson_bot_polynomial_of_jacobson_bot (hR.out isRadical_bot_of_noZeroDivisors)
  · rw [jacobson_eq_iff_jacobson_quotient_eq_bot]
    let P' := P.comap (C : R →+* R[X])
    haveI : P'.IsPrime := comap_isPrime C P
    haveI hR' : IsJacobsonRing (R ⧸ P') := by infer_instance
    obtain ⟨p, pP, p0⟩ := exists_nonzero_mem_of_ne_bot Pb hP
    let x := (Polynomial.map (Ideal.Quotient.mk P') p).leadingCoeff
    have hx : x ≠ 0 := by rwa [Ne, leadingCoeff_eq_zero]
    let φ : R ⧸ P' →+* R[X] ⧸ P := Ideal.quotientMap P (C : R →+* R[X]) le_rfl
    let hφ : Function.Injective ↑φ := quotientMap_injective
    let Rₘ := Localization.Away x
    let Sₘ := (Localization ((Submonoid.powers x).map φ : Submonoid (R[X] ⧸ P)))
    refine jacobson_bot_of_integral_localization (S := R[X] ⧸ P) (R := R ⧸ P') Rₘ Sₘ _ hφ _ hx ?_
    haveI islocSₘ : IsLocalization (Submonoid.map φ (Submonoid.powers x)) Sₘ := by infer_instance
    exact @isIntegral_isLocalization_polynomial_quotient R _ Rₘ Sₘ _ _ P p pP _ _ _ islocSₘ

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/RingTheory/Variantb8825d0e4ff32cb3c85be498addc7aff00486cd4902795123c8b1c66ae3ae6a2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Ring/Variantb8825d0e4ff32cb3c85be498addc7aff00486cd4902795123c8b1c66ae3ae6a2.lean#L392).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d9dbe84d417b0086e6bfc7f205cefac230f5406b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
