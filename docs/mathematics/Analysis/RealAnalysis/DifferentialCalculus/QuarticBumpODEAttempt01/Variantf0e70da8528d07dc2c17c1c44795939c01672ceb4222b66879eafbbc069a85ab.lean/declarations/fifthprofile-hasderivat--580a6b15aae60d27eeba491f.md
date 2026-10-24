# fifthProfile_hasDerivAt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bd70710f-3b3d-bd7c-c47e-e7475a74a6d6",
  "kind": "theorem",
  "lexical_name": "fifthProfile_hasDerivAt",
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
  "slug": "fifthprofile-hasderivat--580a6b15aae60d27eeba491f",
  "source": {
    "blob": "997bc92706d98d72805128ad8f2f943c3c7bc3ae",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 87,
    "line": 75,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpODEAttempt01/Variantf0e70da8528d07dc2c17c1c44795939c01672ceb4222b66879eafbbc069a85ab.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:580a6b15aae60d27eeba491f418877610196d335693b3db2607856633c709f57",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpODEAttempt01/Variantf0e70da8528d07dc2c17c1c44795939c01672ceb4222b66879eafbbc069a85ab.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bd70710f-3b3d-bd7c-c47e-e7475a74a6d6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 75–87.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem fifthProfile_hasDerivAt (v : ℝ) :
    HasDerivAt fifthProfile (-10*v*sourceBump v) v := by
  have hb : HasDerivAt sourceBump (firstDerivative 1 v) v := by
    rw [sourceBump_eq_scaled_unit]
    exact scaledBump_hasDerivAt (by norm_num) v
  have h := ((hasDerivAt_const v (1 : ℝ)).sub ((hasDerivAt_id v).pow 2)).mul hb
  apply h.congr_deriv
  by_cases hv : v ∈ Icc (-1 : ℝ) 1
  · simp only [firstDerivative,indicator_of_mem hv,Realization.firstInterior]
    simp [sourceBump,hv]
    ring
  · simp [firstDerivative,sourceBump,hv]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpODEAttempt01/Variantf0e70da8528d07dc2c17c1c44795939c01672ceb4222b66879eafbbc069a85ab.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpODEAttempt01/Variantf0e70da8528d07dc2c17c1c44795939c01672ceb4222b66879eafbbc069a85ab.lean#L75).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `997bc92706d98d72805128ad8f2f943c3c7bc3ae` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
