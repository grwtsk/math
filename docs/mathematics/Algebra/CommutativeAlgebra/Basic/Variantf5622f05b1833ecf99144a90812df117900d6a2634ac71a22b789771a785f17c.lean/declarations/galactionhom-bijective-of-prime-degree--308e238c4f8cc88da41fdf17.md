# galActionHom_bijective_of_prime_degree'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ffc1b9b2-91c2-49ff-919e-ed7fb4a5ff8b",
  "kind": "theorem",
  "lexical_name": "galActionHom_bijective_of_prime_degree'",
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
  "slug": "galactionhom-bijective-of-prime-degree--308e238c4f8cc88da41fdf17",
  "source": {
    "blob": "910ba1283fe8eb4900da0fcbcce1bf9f039e838e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 173,
    "line": 152,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Basic/Variantf5622f05b1833ecf99144a90812df117900d6a2634ac71a22b789771a785f17c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:308e238c4f8cc88da41fdf17bcc2b3be75aacd557bc57aa8488d365a10b81341",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Basic/Variantf5622f05b1833ecf99144a90812df117900d6a2634ac71a22b789771a785f17c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ffc1b9b2-91c2-49ff-919e-ed7fb4a5ff8b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 152–173.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem galActionHom_bijective_of_prime_degree' {p : ℚ[X]} (p_irr : Irreducible p)
    (p_deg : p.natDegree.Prime)
    (p_roots1 : Fintype.card (p.rootSet ℝ) + 1 ≤ Fintype.card (p.rootSet ℂ))
    (p_roots2 : Fintype.card (p.rootSet ℂ) ≤ Fintype.card (p.rootSet ℝ) + 3) :
    Function.Bijective (galActionHom p ℂ) := by
  apply galActionHom_bijective_of_prime_degree p_irr p_deg
  let n := (galActionHom p ℂ (restrict p ℂ (Complex.conjAe.restrictScalars ℚ))).support.card
  have hn : 2 ∣ n :=
    Equiv.Perm.two_dvd_card_support
      (by
         rw [← MonoidHom.map_pow, ← MonoidHom.map_pow,
          show AlgEquiv.restrictScalars ℚ Complex.conjAe ^ 2 = 1 from
            AlgEquiv.ext Complex.conj_conj,
          MonoidHom.map_one, MonoidHom.map_one])
  have key := card_complex_roots_eq_card_real_add_card_not_gal_inv p
  simp_rw [Set.toFinset_card] at key
  omega

end Rationals

end Polynomial.Gal

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Basic/Variantf5622f05b1833ecf99144a90812df117900d6a2634ac71a22b789771a785f17c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Basic/Variantf5622f05b1833ecf99144a90812df117900d6a2634ac71a22b789771a785f17c.lean#L152).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `910ba1283fe8eb4900da0fcbcce1bf9f039e838e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
