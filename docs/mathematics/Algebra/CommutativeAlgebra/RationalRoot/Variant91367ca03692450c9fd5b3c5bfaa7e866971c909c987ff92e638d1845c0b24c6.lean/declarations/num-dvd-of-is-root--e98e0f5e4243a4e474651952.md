# num_dvd_of_is_root

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cbbfb8dc-1873-fc9b-3f13-d6287ce45f5d",
  "kind": "theorem",
  "lexical_name": "num_dvd_of_is_root",
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
  "slug": "num-dvd-of-is-root--e98e0f5e4243a4e474651952",
  "source": {
    "blob": "55409659a7a3004a03c2f05f39b1e4a7c3205a99",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 96,
    "line": 77,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/RationalRoot/Variant91367ca03692450c9fd5b3c5bfaa7e866971c909c987ff92e638d1845c0b24c6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e98e0f5e4243a4e47465195234814607131a460a66c886f22589c3d030880517",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/RationalRoot/Variant91367ca03692450c9fd5b3c5bfaa7e866971c909c987ff92e638d1845c0b24c6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cbbfb8dc-1873-fc9b-3f13-d6287ce45f5d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 77–96.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem num_dvd_of_is_root {p : A[X]} {r : K} (hr : aeval r p = 0) : num A r ∣ p.coeff 0 := by
  suffices num A r ∣ (scaleRoots p (den A r)).coeff 0 by
    simp only [coeff_scaleRoots] at this
    have inst := Classical.propDecidable
    by_cases hr : num A r = 0
    · simp_all [nonZeroDivisors.coe_ne_zero]
    · refine dvd_of_dvd_mul_left_of_no_prime_factors hr ?_ this
      intro q dvd_num dvd_denom_pow hq
      apply hq.not_isUnit
      exact num_den_reduced A r dvd_num (hq.dvd_of_dvd_pow dvd_denom_pow)
  convert! dvd_term_of_isRoot_of_dvd_terms 0 (num_isRoot_scaleRoots_of_aeval_eq_zero hr) _
  · rw [pow_zero, mul_one]
  intro j hj
  apply dvd_mul_of_dvd_right
  convert! pow_dvd_pow (num A r) (Nat.succ_le_of_lt (bot_lt_iff_ne_bot.mpr hj))
  exact (pow_one _).symm

/-- Rational root theorem part 2:
if `r : f.codomain` is a root of a polynomial over the ufd `A`,
then the denominator of `r` divides the leading coefficient -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/RationalRoot/Variant91367ca03692450c9fd5b3c5bfaa7e866971c909c987ff92e638d1845c0b24c6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/RationalRoot/Variant91367ca03692450c9fd5b3c5bfaa7e866971c909c987ff92e638d1845c0b24c6.lean#L77).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `55409659a7a3004a03c2f05f39b1e4a7c3205a99` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
