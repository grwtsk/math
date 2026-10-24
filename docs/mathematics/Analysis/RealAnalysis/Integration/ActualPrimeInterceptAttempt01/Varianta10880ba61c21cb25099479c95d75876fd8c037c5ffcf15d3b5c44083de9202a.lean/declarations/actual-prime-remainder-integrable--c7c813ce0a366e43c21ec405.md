# actual_prime_remainder_integrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ca9f2f5b-02fa-aa37-3cc5-e12cd68c2c39",
  "kind": "theorem",
  "lexical_name": "actual_prime_remainder_integrable",
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
  "slug": "actual-prime-remainder-integrable--c7c813ce0a366e43c21ec405",
  "source": {
    "blob": "e1b12de588301eb7bbb3d03ce35b5e9bd4acb469",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 39,
    "line": 32,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/ActualPrimeInterceptAttempt01/Varianta10880ba61c21cb25099479c95d75876fd8c037c5ffcf15d3b5c44083de9202a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c7c813ce0a366e43c21ec405630c2c9ed30b3cf0be31178a92c8d097a8d3fabe",
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

Occurrence: `result:ca9f2f5b-02fa-aa37-3cc5-e12cd68c2c39`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 32–39.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_prime_remainder_integrable
    (hI : IntegrableOn actualRemainder (Ioi (0:ℝ))) :
    IntegrableOn actualPrimeRemainder (Ioi (0:ℝ)) := by
  have he : actualPrimeRemainder = fun t => actualRemainder t+omittedOnsetTail t :=
    funext actual_prime_remainder_eq_full_plus_tail
  rw [he]
  exact hI.add omittedOnsetTail_integrable_positive

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/ActualPrimeInterceptAttempt01/Varianta10880ba61c21cb25099479c95d75876fd8c037c5ffcf15d3b5c44083de9202a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/ActualPrimeInterceptAttempt01/Varianta10880ba61c21cb25099479c95d75876fd8c037c5ffcf15d3b5c44083de9202a.lean#L32).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e1b12de588301eb7bbb3d03ce35b5e9bd4acb469` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
