# exactFrontier

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:98e14b59b599d47cc14dbb140da182a5d87681a0d12f77039792b10976d45607",
  "kind": "def",
  "lexical_name": "exactFrontier",
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
  "slug": "exactfrontier--66c6ae15817c629759dc8886",
  "source": {
    "blob": "d63e3201548fc8c2d51ccc02a2c9ac7adb39e932",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 22,
    "line": 13,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/Checks/QuadraticThetaPrimeFejerPeriodCorrectionControls.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:66c6ae15817c629759dc88861e1df428889ca3b4a321075501684bb12d085412",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/Checks/QuadraticThetaPrimeFejerPeriodCorrectionControls.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:98e14b59b599d47cc14dbb140da182a5d87681a0d12f77039792b10976d45607`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 13–22.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def exactFrontier : List String :=
  ["original signed sample is X-periodic",
   "original canonical prefix weight aliases p and p+X",
   "octave length is 2X, so period X is structurally too short",
   "corrected operator uses period 4X",
   "all octave differences lie within corrected principal half-period",
   "period-4X normalized sample satisfies X/(N*d^2) decay",
   "remaining theorem is actual sharp-minus-smoothed comparison for corrected operator"]

end GRWTSK.RiemannHypothesis.Checks.QuadraticThetaPrimeFejerPeriodCorrectionControls
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/Zeta/Riemann/Checks/QuadraticThetaPrimeFejerPeriodCorrectionControls.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/Checks/QuadraticThetaPrimeFejerPeriodCorrectionControls.lean#L13).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d63e3201548fc8c2d51ccc02a2c9ac7adb39e932` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
