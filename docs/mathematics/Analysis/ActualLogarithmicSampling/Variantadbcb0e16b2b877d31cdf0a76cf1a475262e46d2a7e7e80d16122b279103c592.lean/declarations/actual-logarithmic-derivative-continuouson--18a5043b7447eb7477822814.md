# actual_logarithmic_derivative_continuousOn

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:05922a25-88bb-4649-49da-2aa358a24c43",
  "kind": "theorem",
  "lexical_name": "actual_logarithmic_derivative_continuousOn",
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
  "slug": "actual-logarithmic-derivative-continuouson--18a5043b7447eb7477822814",
  "source": {
    "blob": "eff1d92c91177d8e48df6cd3a660fdf0106e8b22",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 56,
    "line": 49,
    "path": "GRWTSK/Analysis/ActualLogarithmicSampling/Variantadbcb0e16b2b877d31cdf0a76cf1a475262e46d2a7e7e80d16122b279103c592.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:18a5043b7447eb74778228141e024435b53806256828c7f3cb3ba7568d32755d",
  "verification": {
    "reference": "docs/verification/Analysis/ActualLogarithmicSampling/Variantadbcb0e16b2b877d31cdf0a76cf1a475262e46d2a7e7e80d16122b279103c592.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:05922a25-88bb-4649-49da-2aa358a24c43`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 49–56.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_logarithmic_derivative_continuousOn {A : ℝ} (hA : 1 ≤ A) (r : ℝ) :
    ContinuousOn (logarithmicDerivative A r) (Ioi 0) := by
  intro x hx
  have hd := (sourceCorrelation_contDiff A (by linarith)).continuous_deriv (by norm_num)
  exact ((continuousAt_const.mul (hd.continuousAt.comp
    (continuousAt_const.mul (Real.continuousAt_log hx.ne')))).div
    continuousAt_id hx.ne').continuousWithinAt

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/ActualLogarithmicSampling/Variantadbcb0e16b2b877d31cdf0a76cf1a475262e46d2a7e7e80d16122b279103c592.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ActualLogarithmicSampling/Variantadbcb0e16b2b877d31cdf0a76cf1a475262e46d2a7e7e80d16122b279103c592.lean#L49).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `eff1d92c91177d8e48df6cd3a660fdf0106e8b22` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
