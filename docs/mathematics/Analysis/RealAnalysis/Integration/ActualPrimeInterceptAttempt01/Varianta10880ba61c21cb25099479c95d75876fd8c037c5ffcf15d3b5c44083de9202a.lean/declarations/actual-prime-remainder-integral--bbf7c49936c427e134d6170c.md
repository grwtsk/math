# actual_prime_remainder_integral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:008e3c4c-f5e8-19e6-6aa5-9413d7c6050d",
  "kind": "theorem",
  "lexical_name": "actual_prime_remainder_integral",
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
  "slug": "actual-prime-remainder-integral--bbf7c49936c427e134d6170c",
  "source": {
    "blob": "e1b12de588301eb7bbb3d03ce35b5e9bd4acb469",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 47,
    "line": 40,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/ActualPrimeInterceptAttempt01/Varianta10880ba61c21cb25099479c95d75876fd8c037c5ffcf15d3b5c44083de9202a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bbf7c49936c427e134d6170c27ee3ae2cb713c08f095cf82082875cb44680ab2",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/ActualPrimeInterceptAttempt01/Varianta10880ba61c21cb25099479c95d75876fd8c037c5ffcf15d3b5c44083de9202a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:008e3c4c-f5e8-19e6-6aa5-9413d7c6050d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 40–47.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_prime_remainder_integral
    (hI : IntegrableOn actualRemainder (Ioi (0:ℝ))) :
    (∫ t in Ioi (0:ℝ), actualPrimeRemainder t) =
      Real.eulerMascheroniConstant^2+2*firstStieltjesConstant+properPowerB1 := by
  simp_rw [actual_prime_remainder_eq_full_plus_tail]
  rw [integral_add hI omittedOnsetTail_integrable_positive,
    actual_remainder_integral_eq_coefficient hI,omittedOnsetTail_integral_eq_B1]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/ActualPrimeInterceptAttempt01/Varianta10880ba61c21cb25099479c95d75876fd8c037c5ffcf15d3b5c44083de9202a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/ActualPrimeInterceptAttempt01/Varianta10880ba61c21cb25099479c95d75876fd8c037c5ffcf15d3b5c44083de9202a.lean#L40).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e1b12de588301eb7bbb3d03ce35b5e9bd4acb469` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
