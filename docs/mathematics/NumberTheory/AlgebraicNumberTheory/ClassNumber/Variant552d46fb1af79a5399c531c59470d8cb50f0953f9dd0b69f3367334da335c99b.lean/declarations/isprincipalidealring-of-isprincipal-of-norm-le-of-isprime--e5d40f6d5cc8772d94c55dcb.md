# isPrincipalIdealRing_of_isPrincipal_of_norm_le_of_isPrime

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "bdd843116f899d2b1cb01d0360b78163f789f327",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 105,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/55/552d46fb1af79a5399c531c59470d8cb50f0953f9dd0b69f3367334da335c99b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:aec3958a-aece-ecf0-b34a-167929879629",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a928f1a1-c49f-14f5-0218-f6392996484e",
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
  "slug": "isprincipalidealring-of-isprincipal-of-norm-le-of-isprime--e5d40f6d5cc8772d94c55dcb",
  "source": {
    "blob": "bdd843116f899d2b1cb01d0360b78163f789f327",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 129,
    "line": 105,
    "path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/ClassNumber/Variant552d46fb1af79a5399c531c59470d8cb50f0953f9dd0b69f3367334da335c99b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e5d40f6d5cc8772d94c55dcbb7c638fa4051c97e0f98c961a070ee0590c2314b",
  "verification": {
    "reference": "docs/verification/NumberTheory/AlgebraicNumberTheory/ClassNumber/Variant552d46fb1af79a5399c531c59470d8cb50f0953f9dd0b69f3367334da335c99b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a928f1a1-c49f-14f5-0218-f6392996484e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 105–129.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isPrincipalIdealRing_of_isPrincipal_of_norm_le_of_isPrime
    (h : ∀ ⦃I : (Ideal (𝓞 K))⁰⦄, (I : Ideal (𝓞 K)).IsPrime →
      absNorm (I : Ideal (𝓞 K)) ≤ M K → Submodule.IsPrincipal (I : Ideal (𝓞 K))) :
    IsPrincipalIdealRing (𝓞 K) := by
  refine isPrincipalIdealRing_of_isPrincipal_of_norm_le (fun I hI ↦ ?_)
  rw [← mem_isPrincipalSubmonoid_iff,
    ← prod_normalizedFactors_eq_self (nonZeroDivisors.coe_ne_zero I)]
  refine Submonoid.multiset_prod_mem _ _ (fun J hJ ↦ mem_isPrincipalSubmonoid_iff.mp ?_)
  by_cases hJ0 : J = 0
  · simpa [hJ0] using bot_isPrincipal
  rw [← Subtype.coe_mk J (mem_nonZeroDivisors_of_ne_zero hJ0)]
  refine h (((mem_normalizedFactors_iff (nonZeroDivisors.coe_ne_zero I)).mp hJ).1) ?_
  exact (cast_le.mpr <| le_of_dvd (absNorm_pos_of_nonZeroDivisors I) <|
    absNorm_dvd_absNorm_of_le <| le_of_dvd <|
      UniqueFactorizationMonoid.dvd_of_mem_normalizedFactors hJ).trans hI

/-- Let `K` be a number field and let `M K` be the Minkowski bound of `K` (by definition it is
`(4 / π) ^ nrComplexPlaces K * ((finrank ℚ K)! / (finrank ℚ K) ^ (finrank ℚ K) * √|discr K|)`).
To show that `𝓞 K` is a PID it is enough to show that, for all (natural) primes
`p ∈ Finset.Icc 1 ⌊(M K)⌋₊`, all ideals `P` above `p` such that
`p ^ (span ({p}).inertiaDeg P) ≤ ⌊(M K)⌋₊` are principal. This is the standard technique to prove
that `𝓞 K` is principal, see [marcus1977number], discussion after Theorem 37.

The way this theorem should be used is to first compute `⌊(M K)⌋₊` and then to use `fin_cases`
to deal with the finite number of primes `p` in the interval. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AlgebraicNumberTheory/ClassNumber/Variant552d46fb1af79a5399c531c59470d8cb50f0953f9dd0b69f3367334da335c99b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AlgebraicNumberTheory/ClassNumber/Variant552d46fb1af79a5399c531c59470d8cb50f0953f9dd0b69f3367334da335c99b.lean#L105).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bdd843116f899d2b1cb01d0360b78163f789f327` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
