# normalizedFactorsMapEquivNormalizedFactorsMinPolyMk

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:062b3b53e24a91235b52bb1d92fbef12c8c9996bbe9514f76a3bbd68d31a416b",
  "kind": "def",
  "lexical_name": "normalizedFactorsMapEquivNormalizedFactorsMinPolyMk",
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
  "slug": "normalizedfactorsmapequivnormalizedfactorsminpolymk--d5bc19a276ae879d210996d6",
  "source": {
    "blob": "7b4a5a2bc169271918ea64d64998dffcff659417",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 253,
    "line": 228,
    "path": "GRWTSK/Algebra/KummerDedekind/Variantdfcbd876637e69dfcd94011f5eede0cce9f9208120d1d58632c70fed7cba0029.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d5bc19a276ae879d210996d627d9eae862e9440c9dd68ad2439ebf36ccdaabcd",
  "verification": {
    "reference": "docs/verification/Algebra/KummerDedekind/Variantdfcbd876637e69dfcd94011f5eede0cce9f9208120d1d58632c70fed7cba0029.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:062b3b53e24a91235b52bb1d92fbef12c8c9996bbe9514f76a3bbd68d31a416b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 228–253.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def normalizedFactorsMapEquivNormalizedFactorsMinPolyMk (hI : IsMaximal I)
    (hI' : I ≠ ⊥) (hx : (conductor R x).comap (algebraMap R S) ⊔ I = ⊤) (hx' : IsIntegral R x) :
    {J : Ideal S | J ∈ normalizedFactors (I.map (algebraMap R S))} ≃
      {d : (R ⧸ I)[X] |
        d ∈ normalizedFactors (Polynomial.map (Ideal.Quotient.mk I) (minpoly R x))} := by
  -- Porting note: Lean needs to be reminded about this so it does not time out
  have : IsPrincipalIdealRing (R ⧸ I)[X] := inferInstance
  let f : S ⧸ map (algebraMap R S) I ≃+*
    (R ⧸ I)[X] ⧸ span {Polynomial.map (Ideal.Quotient.mk I) (minpoly R x)} := by
    refine (quotAdjoinEquivQuotMap hx ?_).symm.trans
      (((Algebra.adjoin.powerBasis'
        hx').quotientEquivQuotientMinpolyMap I).toRingEquiv.trans (quotEquivOfEq ?_))
    · exact NoZeroSMulDivisors.algebraMap_injective (Algebra.adjoin R {x}) S
    · rw [Algebra.adjoin.powerBasis'_minpoly_gen hx']
  refine (normalizedFactorsEquivOfQuotEquiv f ?_ ?_).trans ?_
  · rwa [Ne.def, map_eq_bot_iff_of_injective (NoZeroSMulDivisors.algebraMap_injective R S),
      ← Ne.def]
  · by_contra h
    exact (show Polynomial.map (Ideal.Quotient.mk I) (minpoly R x) ≠ 0 from
      Polynomial.map_monic_ne_zero (minpoly.monic hx')) (span_singleton_eq_bot.mp h)
  · refine (normalizedFactorsEquivSpanNormalizedFactors ?_).symm
    exact Polynomial.map_monic_ne_zero (minpoly.monic hx')
#align kummer_dedekind.normalized_factors_map_equiv_normalized_factors_min_poly_mk KummerDedekind.normalizedFactorsMapEquivNormalizedFactorsMinPolyMk

/-- The second half of the **Kummer-Dedekind Theorem** in the monogenic case, stating that the
    bijection `FactorsEquiv'` defined in the first half preserves multiplicities. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/KummerDedekind/Variantdfcbd876637e69dfcd94011f5eede0cce9f9208120d1d58632c70fed7cba0029.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/KummerDedekind/Variantdfcbd876637e69dfcd94011f5eede0cce9f9208120d1d58632c70fed7cba0029.lean#L228).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7b4a5a2bc169271918ea64d64998dffcff659417` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
