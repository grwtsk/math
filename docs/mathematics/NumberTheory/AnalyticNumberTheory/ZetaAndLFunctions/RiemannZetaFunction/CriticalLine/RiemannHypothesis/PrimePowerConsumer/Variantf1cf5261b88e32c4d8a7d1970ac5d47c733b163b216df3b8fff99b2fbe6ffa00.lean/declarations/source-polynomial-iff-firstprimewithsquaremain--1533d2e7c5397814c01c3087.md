# source_polynomial_iff_firstPrimeWithSquareMain

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4249fc61-5e47-c4a5-f4eb-497942ce5ca9",
  "kind": "theorem",
  "lexical_name": "source_polynomial_iff_firstPrimeWithSquareMain",
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
  "slug": "source-polynomial-iff-firstprimewithsquaremain--1533d2e7c5397814c01c3087",
  "source": {
    "blob": "d9115a7d0ca5cc3a0b2690217ad7dbb07baff5e0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 63,
    "line": 53,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrimePowerConsumer/Variantf1cf5261b88e32c4d8a7d1970ac5d47c733b163b216df3b8fff99b2fbe6ffa00.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1533d2e7c5397814c01c3087ff1ea907b6a4e63f35c26848aa01b8200f2392a8",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrimePowerConsumer/Variantf1cf5261b88e32c4d8a7d1970ac5d47c733b163b216df3b8fff99b2fbe6ffa00.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4249fc61-5e47-c4a5-f4eb-497942ce5ca9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 53–63.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem source_polynomial_iff_firstPrimeWithSquareMain :
    EventuallyPolynomialUpper closedPrimeMoment ↔
      EventuallyPolynomialUpper firstPrimeWithSquareMain := by
  obtain ⟨E, hE, herr⟩ := residual_firstPrime_uniform_replacement_error
  apply polynomial_upper_iff_of_bounded_error hE
  intro A hA
  simpa only [firstPrimeWithSquareMain, mertensResidual_eq_closedPrimeMoment A hA]
    using herr A hA

/-- The signed Mertens integral and the retained first-prime/square target
are two exact access routes to the same eventual polynomial obligation. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrimePowerConsumer/Variantf1cf5261b88e32c4d8a7d1970ac5d47c733b163b216df3b8fff99b2fbe6ffa00.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrimePowerConsumer/Variantf1cf5261b88e32c4d8a7d1970ac5d47c733b163b216df3b8fff99b2fbe6ffa00.lean#L53).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d9115a7d0ca5cc3a0b2690217ad7dbb07baff5e0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
