# actualCriticalKernel_sector_upper

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9b85ae93-b51a-0d93-e384-03034d0755b5",
  "kind": "theorem",
  "lexical_name": "actualCriticalKernel_sector_upper",
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
  "slug": "actualcriticalkernel-sector-upper--dcf887669fec8185e0fbd630",
  "source": {
    "blob": "75433808d553e25e52ea899ddef2f1896bb0d357",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 69,
    "line": 57,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCriticalChebyshevSectorEnvelopeAttempt01/Variantb86810529fff457edd6f8ecb93fdf216005df587a66623b20f302d6eceecf327.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dcf887669fec8185e0fbd630b26ce6041c3040223bb76a6223276b5ac4ca7be6",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCriticalChebyshevSectorEnvelopeAttempt01/Variantb86810529fff457edd6f8ecb93fdf216005df587a66623b20f302d6eceecf327.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9b85ae93-b51a-0d93-e384-03034d0755b5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 57–69.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualCriticalKernel_sector_upper (A t : ℝ) :
    criticalKernel A t ≤ (Real.log 4 + 3) * max (baselineLogKernel A t) 0 +
      max (-baselineLogKernel A t) 0 := by
  have hb := actualRelativePsiError_elementary_bounds t
  rw [criticalKernel_eq_error_mul_baseline]
  by_cases h : 0 ≤ baselineLogKernel A t
  · rw [max_eq_left h, max_eq_right (by linarith : -baselineLogKernel A t ≤ 0)]
    simpa using mul_le_mul_of_nonneg_right hb.2 h
  · have hn : baselineLogKernel A t ≤ 0 := (lt_of_not_ge h).le
    rw [max_eq_right hn, max_eq_left (by linarith : 0 ≤ -baselineLogKernel A t)]
    have hm := mul_le_mul_of_nonpos_right hb.1 hn
    simpa using hm

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCriticalChebyshevSectorEnvelopeAttempt01/Variantb86810529fff457edd6f8ecb93fdf216005df587a66623b20f302d6eceecf327.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCriticalChebyshevSectorEnvelopeAttempt01/Variantb86810529fff457edd6f8ecb93fdf216005df587a66623b20f302d6eceecf327.lean#L57).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `75433808d553e25e52ea899ddef2f1896bb0d357` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
