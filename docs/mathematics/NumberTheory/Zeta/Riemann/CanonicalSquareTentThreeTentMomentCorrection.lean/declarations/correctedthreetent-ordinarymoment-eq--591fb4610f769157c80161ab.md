# correctedThreeTent_ordinaryMoment_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3ca7d5db-eca5-c16e-2c4b-dba55208520b",
  "kind": "theorem",
  "lexical_name": "correctedThreeTent_ordinaryMoment_eq",
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
  "slug": "correctedthreetent-ordinarymoment-eq--591fb4610f769157c80161ab",
  "source": {
    "blob": "3bc7d02cc51fabacf44120b0b753dfc7b71ea2ac",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 122,
    "line": 98,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CanonicalSquareTentThreeTentMomentCorrection.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:591fb4610f769157c80161abb12b68299715e24d71f526a4c3af0610c0460dd7",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CanonicalSquareTentThreeTentMomentCorrection.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3ca7d5db-eca5-c16e-2c4b-dba55208520b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 98–122.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem correctedThreeTent_ordinaryMoment_eq :
    bombieriOrdinaryMoment correctedThreeTent =
      cofactorZero * (realOrdinaryMoment 0 : ℂ) +
        cofactorOne * (realOrdinaryMoment 1 : ℂ) +
        cofactorTwo * (realOrdinaryMoment 2 : ℂ) := by
  have h0 := (canonicalTentComplex_integrableOn 0).const_mul cofactorZero
  have h1 := (canonicalTentComplex_integrableOn 1).const_mul cofactorOne
  have h2 := (canonicalTentComplex_integrableOn 2).const_mul cofactorTwo
  unfold bombieriOrdinaryMoment correctedThreeTent
  have hadd := integral_add (h0.add h1) h2
  have hadd01 := integral_add h0 h1
  simp only [Pi.add_apply] at hadd hadd01
  rw [hadd, hadd01]
  rw [integral_const_mul, integral_const_mul, integral_const_mul]
  change cofactorZero * bombieriOrdinaryMoment (canonicalTentComplex 0) +
      cofactorOne * bombieriOrdinaryMoment (canonicalTentComplex 1) +
      cofactorTwo * bombieriOrdinaryMoment (canonicalTentComplex 2) = _
  rw [bombieriOrdinaryMoment_canonicalTent_eq 0,
    bombieriOrdinaryMoment_canonicalTent_eq 1,
    bombieriOrdinaryMoment_canonicalTent_eq 2]
  rfl

/-- The actual reciprocal-moment integral has exactly the matching
linear expansion. Division is integrable by the previous rank source,
which proved the tent supports stay away from zero. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CanonicalSquareTentThreeTentMomentCorrection.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CanonicalSquareTentThreeTentMomentCorrection.lean#L98).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3bc7d02cc51fabacf44120b0b753dfc7b71ea2ac` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
