# actualClosedMangoldtXiPair_eq_half_sub_psi

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6dc88830-e78b-2bac-0108-7cbb1e4c830b",
  "kind": "theorem",
  "lexical_name": "actualClosedMangoldtXiPair_eq_half_sub_psi",
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
  "slug": "actualclosedmangoldtxipair-eq-half-sub-psi--52e83e95f5ccb7e0bce83dd7",
  "source": {
    "blob": "1fecbc7613235f6a8d4854987c39639c2c10b5ca",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 69,
    "line": 61,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt01/Variant74eb82fa845073c3df9e5764fc012819a9f8b47ce712c98fddea06289d85e90f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:52e83e95f5ccb7e0bce83dd7ce0f7dd1a681ffbd23a2dc0e1d51727e55b9d7f6",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt01/Variant74eb82fa845073c3df9e5764fc012819a9f8b47ce712c98fddea06289d85e90f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6dc88830-e78b-2bac-0108-7cbb1e4c830b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 61–69.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualClosedMangoldtXiPair_eq_half_sub_psi (Y : ℝ) :
    actualClosedMangoldtXiPair Y = actualMoebiusLogHalfHyperbola (Nat.floor Y) -
      Chebyshev.psi Y / Real.sqrt Y := by
  unfold actualClosedMangoldtXiPair actualClosedXiAtomKernel
  simp_rw [mul_sub, mul_one_div]
  rw [Finset.sum_sub_distrib, ← Finset.sum_div,
    actualMangoldtHalfPrefix_eq_hyperbola, ← psi_eq_positive_prefix]

/-- Both actual arithmetic terms combine into the same full signed product-weight hyperbola. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt01/Variant74eb82fa845073c3df9e5764fc012819a9f8b47ce712c98fddea06289d85e90f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt01/Variant74eb82fa845073c3df9e5764fc012819a9f8b47ce712c98fddea06289d85e90f.lean#L61).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1fecbc7613235f6a8d4854987c39639c2c10b5ca` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
