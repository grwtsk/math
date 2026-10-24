# RingHom.finite_of_algHom_finiteType_of_isJacobsonRing

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0e69eac3-b780-cca2-0b90-65633cbf6cd4",
  "kind": "theorem",
  "lexical_name": "RingHom.finite_of_algHom_finiteType_of_isJacobsonRing",
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
  "slug": "ringhom-finite-of-alghom-finitetype-of-isjacobsonring--b0deaaab2339db00698bcb49",
  "source": {
    "blob": "d9dbe84d417b0086e6bfc7f205cefac230f5406b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 812,
    "line": 743,
    "path": "GRWTSK/Algebra/Ring/Variantb8825d0e4ff32cb3c85be498addc7aff00486cd4902795123c8b1c66ae3ae6a2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b0deaaab2339db00698bcb4933fedbc8011058a9f126ce900d7ca71336f0a784",
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

Occurrence: `result:0e69eac3-b780-cca2-0b90-65633cbf6cd4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 743–812.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
nonrec theorem RingHom.finite_of_algHom_finiteType_of_isJacobsonRing
    {K L A : Type*} [CommRing K] [Field L] [CommRing A]
    [IsJacobsonRing K] [IsNoetherianRing K] [Nontrivial A]
    (f : K →+* L) (g : L →+* A) (hfg : (g.comp f).FiniteType) :
    f.Finite := by
  algebraize [f, (g.comp f)]
  exact finite_of_algHom_finiteType_of_isJacobsonRing ⟨g, fun _ ↦ rfl⟩

namespace Ideal

@[deprecated (since := "2024-10-27")]
alias IsJacobson := IsJacobsonRing
@[deprecated (since := "2024-10-27")]
alias isJacobson_iff := isJacobsonRing_iff
@[deprecated (since := "2024-10-27")]
alias IsJacobson.out := IsJacobsonRing.out
@[deprecated (since := "2024-10-27")]
alias isJacobson_iff_prime_eq := isJacobsonRing_iff_prime_eq
@[deprecated (since := "2024-10-27")]
alias isJacobson_iff_sInf_maximal := isJacobsonRing_iff_sInf_maximal
@[deprecated (since := "2024-10-27")]
alias isJacobson_iff_sInf_maximal' := isJacobsonRing_iff_sInf_maximal'
@[deprecated (since := "2024-10-27")]
alias isJacobson_of_surjective := isJacobsonRing_of_surjective
@[deprecated (since := "2024-10-27")]
alias isJacobson_iso := isJacobsonRing_iso
@[deprecated (since := "2024-10-27")]
alias isJacobson_of_isIntegral := isJacobsonRing_of_isIntegral
@[deprecated (since := "2024-10-27")]
alias isJacobson_of_isIntegral' := isJacobsonRing_of_isIntegral'
@[deprecated (since := "2024-10-27")]
alias isMaximal_iff_isMaximal_disjoint := IsLocalization.isMaximal_iff_isMaximal_disjoint
@[deprecated (since := "2024-10-27")]
alias isMaximal_of_isMaximal_disjoint := IsLocalization.isMaximal_of_isMaximal_disjoint
@[deprecated (since := "2024-10-27")]
alias isJacobson_localization := isJacobsonRing_localization

namespace Polynomial

@[deprecated (since := "2024-10-27")]
alias isIntegral_isLocalization_polynomial_quotient := isIntegral_isLocalization_polynomial_quotient
@[deprecated (since := "2024-10-27")]
alias jacobson_bot_of_integral_localization := jacobson_bot_of_integral_localization
@[deprecated (since := "2024-10-27")]
alias isJacobson_polynomial_of_isJacobson := isJacobsonRing_polynomial_of_isJacobsonRing
@[deprecated (since := "2024-10-27")]
alias isJacobson_polynomial_iff_isJacobson := isJacobsonRing_polynomial_iff_isJacobsonRing
@[deprecated (since := "2024-10-27")]
alias isMaximal_comap_C_of_isMaximal := isMaximal_comap_C_of_isMaximal
@[deprecated (since := "2024-10-27")]
alias quotient_mk_comp_C_isIntegral_of_jacobson :=
  Polynomial.quotient_mk_comp_C_isIntegral_of_isJacobsonRing
@[deprecated (since := "2024-10-27")]
alias isMaximal_comap_C_of_isJacobson := isMaximal_comap_C_of_isJacobsonRing
@[deprecated (since := "2024-10-27")]
alias comp_C_integral_of_surjective_of_jacobson :=
  Polynomial.comp_C_integral_of_surjective_of_isJacobsonRing

end Polynomial

@[deprecated (since := "2024-10-27")]
alias MvPolynomial.isJacobson_MvPolynomial_fin := isJacobsonRing_MvPolynomial_fin
@[deprecated (since := "2024-10-27")]
alias MvPolynomial.quotient_mk_comp_C_isIntegral_of_jacobson :=
  MvPolynomial.quotient_mk_comp_C_isIntegral_of_isJacobsonRing
@[deprecated (since := "2024-10-27")]
alias MvPolynomial.comp_C_integral_of_surjective_of_jacobson :=
  MvPolynomial.comp_C_integral_of_surjective_of_isJacobsonRing

end Ideal
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/RingTheory/Variantb8825d0e4ff32cb3c85be498addc7aff00486cd4902795123c8b1c66ae3ae6a2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Ring/Variantb8825d0e4ff32cb3c85be498addc7aff00486cd4902795123c8b1c66ae3ae6a2.lean#L743).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d9dbe84d417b0086e6bfc7f205cefac230f5406b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
