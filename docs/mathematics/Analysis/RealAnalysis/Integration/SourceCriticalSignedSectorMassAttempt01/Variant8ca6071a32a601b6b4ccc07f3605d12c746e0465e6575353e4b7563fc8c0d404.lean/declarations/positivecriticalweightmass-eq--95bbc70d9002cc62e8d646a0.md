# positiveCriticalWeightMass_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:62c4b866-2c99-97d4-07ae-2b02482eba9f",
  "kind": "theorem",
  "lexical_name": "positiveCriticalWeightMass_eq",
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
  "slug": "positivecriticalweightmass-eq--95bbc70d9002cc62e8d646a0",
  "source": {
    "blob": "e567bc91f697db244334bbc2b55431cb9353e242",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 53,
    "line": 43,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceCriticalSignedSectorMassAttempt01/Variant8ca6071a32a601b6b4ccc07f3605d12c746e0465e6575353e4b7563fc8c0d404.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:95bbc70d9002cc62e8d646a07458981ea575dbec20c0735477025ab7832f6547",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceCriticalSignedSectorMassAttempt01/Variant8ca6071a32a601b6b4ccc07f3605d12c746e0465e6575353e4b7563fc8c0d404.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:62c4b866-2c99-97d4-07ae-2b02482eba9f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 43–53.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem positiveCriticalWeightMass_eq {A : ℝ} (hA : 1 ≤ A) :
    positiveCriticalWeightMass A =
      (absoluteCriticalWeightMass A + (1 + criticalContinuousMoment A)) / 2 := by
  unfold positiveCriticalWeightMass
  have he : (fun t => max (baselineLogKernel A t) 0) =
      fun t => (|baselineLogKernel A t| + baselineLogKernel A t) / 2 :=
    funext (fun t => positivePart_eq (baselineLogKernel A t))
  rw [he, integral_div, integral_add (absoluteCriticalWeightMass_integrable hA)
    (baselineLogKernel_integrable hA), baselineLogKernel_integral hA]
  rfl

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceCriticalSignedSectorMassAttempt01/Variant8ca6071a32a601b6b4ccc07f3605d12c746e0465e6575353e4b7563fc8c0d404.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceCriticalSignedSectorMassAttempt01/Variant8ca6071a32a601b6b4ccc07f3605d12c746e0465e6575353e4b7563fc8c0d404.lean#L43).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e567bc91f697db244334bbc2b55431cb9353e242` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
