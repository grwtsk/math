# chebyshev_prime_power_ibp_of_upper_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a0d1c232-dbee-f638-13f1-948df1fd91a9",
  "kind": "theorem",
  "lexical_name": "chebyshev_prime_power_ibp_of_upper_zero",
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
  "slug": "chebyshev-prime-power-ibp-of-upper-zero--e47155c111ad699c44431e65",
  "source": {
    "blob": "c2aea553f32491eebd03cf963391425b5785ce9c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 249,
    "line": 241,
    "path": "GRWTSK/NumberTheory/Chebyshev/FiniteIntegrationByParts.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e47155c111ad699c44431e652e61328a0bf6adcdf343748412bef70d1c5bc35f",
  "verification": {
    "reference": "docs/verification/NumberTheory/Chebyshev/FiniteIntegrationByParts.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a0d1c232-dbee-f638-13f1-948df1fd91a9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 241–249.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem chebyshev_prime_power_ibp_of_upper_zero (b : ℝ) (hb : lowerEndpoint ≤ b)
    (F : ℝ → ℝ) (hF : ContDiff ℝ 1 F) (hzero : F b = 0) :
    (∫ t in lowerEndpoint..b, chebyshevError (Real.exp t) * deriv F t) =
      -(∑ n ∈ primePowerInventory b, ArithmeticFunction.vonMangoldt n * F (Real.log n)) +
      2 * F lowerEndpoint + ∫ t in lowerEndpoint..b, Real.exp t * F t := by
  simpa only [hzero, mul_zero, zero_sub] using chebyshev_prime_power_ibp b hb F hF

/-- The `+2 F(log 2)` term becomes exactly the source's separate prime-two
correction when the prime sum is substituted with coefficient `-2`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Chebyshev/FiniteIntegrationByParts.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Chebyshev/FiniteIntegrationByParts.lean#L241).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c2aea553f32491eebd03cf963391425b5785ce9c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
