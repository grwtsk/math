# eval₂_C_mk_eq_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8c916e9e-47f2-fa1b-7929-4b20b17fbdc6",
  "kind": "theorem",
  "lexical_name": "eval₂_C_mk_eq_zero",
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
  "slug": "eval-c-mk-eq-zero--4656d60cbd3dd38537bd4934",
  "source": {
    "blob": "43fd101382dcf65ec91760bd75e076fb391c3dfa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 112,
    "line": 95,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Quotient/Variant7af4a891b2337bb37e61cc81e5f486a9db3c4d026234b3ed261f9e6207a35e3e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4656d60cbd3dd38537bd493452493e294573658e805daec828c1885f2a59989a",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Quotient/Variant7af4a891b2337bb37e61cc81e5f486a9db3c4d026234b3ed261f9e6207a35e3e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8c916e9e-47f2-fa1b-7929-4b20b17fbdc6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 95–112.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eval₂_C_mk_eq_zero {I : Ideal R} :
    ∀ f ∈ (map (C : R →+* R[X]) I : Ideal R[X]), eval₂RingHom (C.comp (Quotient.mk I)) X f = 0 := by
  intro a ha
  rw [← sum_monomial_eq a]
  dsimp
  rw [eval₂_sum]
  refine Finset.sum_eq_zero fun n _ => ?_
  dsimp
  rw [eval₂_monomial (C.comp (Quotient.mk I)) X]
  refine mul_eq_zero_of_left (Polynomial.ext fun m => ?_) (X ^ n)
  rw [RingHom.comp_apply, coeff_C]
  by_cases h : m = 0
  · simpa [h] using Quotient.eq_zero_iff_mem.2 ((mem_map_C_iff.1 ha) n)
  · simp [h]

/-- If `I` is an ideal of `R`, then the ring polynomials over the quotient ring `I.quotient` is
isomorphic to the quotient of `R[X]` by the ideal `map C I`,
where `map C I` contains exactly the polynomials whose coefficients all lie in `I`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Quotient/Variant7af4a891b2337bb37e61cc81e5f486a9db3c4d026234b3ed261f9e6207a35e3e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Quotient/Variant7af4a891b2337bb37e61cc81e5f486a9db3c4d026234b3ed261f9e6207a35e3e.lean#L95).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `43fd101382dcf65ec91760bd75e076fb391c3dfa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
