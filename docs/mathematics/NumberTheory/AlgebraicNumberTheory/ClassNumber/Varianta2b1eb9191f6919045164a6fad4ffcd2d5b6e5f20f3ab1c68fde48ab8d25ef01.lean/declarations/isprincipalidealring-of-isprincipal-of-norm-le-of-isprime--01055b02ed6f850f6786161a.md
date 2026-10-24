# isPrincipalIdealRing_of_isPrincipal_of_norm_le_of_isPrime

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e9237db9-6ba1-3c9d-2197-9b188777e02d",
  "kind": "theorem",
  "lexical_name": "isPrincipalIdealRing_of_isPrincipal_of_norm_le_of_isPrime",
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
  "slug": "isprincipalidealring-of-isprincipal-of-norm-le-of-isprime--01055b02ed6f850f6786161a",
  "source": {
    "blob": "2f97a5744f9c449d617bbdd6a0cf09d83c275af9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 151,
    "line": 124,
    "path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/ClassNumber/Varianta2b1eb9191f6919045164a6fad4ffcd2d5b6e5f20f3ab1c68fde48ab8d25ef01.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:01055b02ed6f850f6786161a324eeaa93d1566fcfd1f1bacc7cddc16359f3130",
  "verification": {
    "reference": "docs/verification/NumberTheory/AlgebraicNumberTheory/ClassNumber/Varianta2b1eb9191f6919045164a6fad4ffcd2d5b6e5f20f3ab1c68fde48ab8d25ef01.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e9237db9-6ba1-3c9d-2197-9b188777e02d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 124–151.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isPrincipalIdealRing_of_isPrincipal_of_norm_le_of_isPrime
    (h : ∀ ⦃I : (Ideal (𝓞 K))⁰⦄, (I : Ideal (𝓞 K)).IsPrime →
      absNorm (I : Ideal (𝓞 K)) ≤ M K → Submodule.IsPrincipal (I : Ideal (𝓞 K))) :
    IsPrincipalIdealRing (𝓞 K) := by
  refine isPrincipalIdealRing_of_isPrincipal_of_norm_le (fun I hI ↦ ?_)
  rw [← mem_isPrincipalSubmonoid_iff,
    ← Ideal.prod_normalizedFactors_eq_self (nonZeroDivisors.coe_ne_zero I)]
  refine Submonoid.multiset_prod_mem _ _ (fun J hJ ↦ mem_isPrincipalSubmonoid_iff.mp ?_)
  by_cases hJ0 : J = 0
  · simpa [hJ0] using! bot_isPrincipal
  rw [← Subtype.coe_mk J (mem_nonZeroDivisors_of_ne_zero hJ0)]
  refine h (((mem_normalizedFactors_iff (nonZeroDivisors.coe_ne_zero I)).mp hJ).1) ?_
  exact (cast_le.mpr <| le_of_dvd (absNorm_pos_of_nonZeroDivisors I) <|
    absNorm_dvd_absNorm_of_le <| le_of_dvd <|
      UniqueFactorizationMonoid.dvd_of_mem_normalizedFactors hJ).trans hI

set_option linter.style.longLine false in
/-- Let `K` be a number field and let `M K` be the Minkowski bound of `K`.
To show that `𝓞 K` is a PID it is enough to show that, for all (natural) primes
`p ∈ Finset.Icc 1 ⌊(M K)⌋₊`, all ideals `P` above `p` such that
`p ^ (span ({p}).inertiaDeg P) ≤ ⌊(M K)⌋₊` are principal. This is the standard technique to prove
that `𝓞 K` is principal, see [marcus1977number], discussion after Theorem 37.
If `K/ℚ` is Galois, one can use the more convenient
`RingOfIntegers.isPrincipalIdealRing_of_isPrincipal_of_lt_or_isPrincipal_of_mem_primesOver_of_mem_Icc`
below.

The way this theorem should be used is to first compute `⌊(M K)⌋₊` and then to use `fin_cases`
to deal with the finite number of primes `p` in the interval. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AlgebraicNumberTheory/ClassNumber/Varianta2b1eb9191f6919045164a6fad4ffcd2d5b6e5f20f3ab1c68fde48ab8d25ef01.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AlgebraicNumberTheory/ClassNumber/Varianta2b1eb9191f6919045164a6fad4ffcd2d5b6e5f20f3ab1c68fde48ab8d25ef01.lean#L124).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2f97a5744f9c449d617bbdd6a0cf09d83c275af9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
