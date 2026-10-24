# actual_source_log_ae

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ceba8e36-e85d-7619-3053-ee710055259e",
  "kind": "theorem",
  "lexical_name": "actual_source_log_ae",
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
  "slug": "actual-source-log-ae--1a50dfc8913f4b7e06976baf",
  "source": {
    "blob": "4f658f98844fc699b6221a274354326eaf53f22f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 104,
    "line": 96,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/LogMellinAttempt03/Variant2b6033d18d75b4288b3676de57d32532cc32c4dd09a85e3c4cc11a4c09ffdaa1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1a50dfc8913f4b7e06976bafb3063362fcf004bdee319a4ae5d59ef413d204b3",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/LogMellinAttempt03/Variant2b6033d18d75b4288b3676de57d32532cc32c4dd09a85e3c4cc11a4c09ffdaa1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ceba8e36-e85d-7619-3053-ee710055259e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 96–104.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_source_log_ae (A : ℝ) (hA : 1 ≤ A) :
    logMap (actualSourceL2 A hA) =ᵐ[volume]
      (fun u => (normalizedTest Realization.explicitSecondDerivative A u : ℂ)) := by
  filter_upwards [logMap_ae (actualSourceL2 A hA),
    exp_quasi.ae_eq_comp (actualSourceL2_ae A hA)] with u hu hf
  dsimp only [Function.comp_apply] at hf
  rw [hu,logFunc,hf]
  exact actual_source_log_pointwise A u

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/LogMellinAttempt03/Variant2b6033d18d75b4288b3676de57d32532cc32c4dd09a85e3c4cc11a4c09ffdaa1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/LogMellinAttempt03/Variant2b6033d18d75b4288b3676de57d32532cc32c4dd09a85e3c4cc11a4c09ffdaa1.lean#L96).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4f658f98844fc699b6221a274354326eaf53f22f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
