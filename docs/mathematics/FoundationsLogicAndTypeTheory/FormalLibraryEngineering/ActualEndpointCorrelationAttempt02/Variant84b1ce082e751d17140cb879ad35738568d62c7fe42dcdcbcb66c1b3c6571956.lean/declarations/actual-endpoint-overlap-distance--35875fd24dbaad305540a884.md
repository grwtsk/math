# actual_endpoint_overlap_distance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:048ce84c-00f1-30bf-2316-58640f33530b",
  "kind": "theorem",
  "lexical_name": "actual_endpoint_overlap_distance",
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
  "slug": "actual-endpoint-overlap-distance--35875fd24dbaad305540a884",
  "source": {
    "blob": "5b4dd25b4293e818d9dcd2819b376cec857333c3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 85,
    "line": 69,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ActualEndpointCorrelationAttempt02/Variant84b1ce082e751d17140cb879ad35738568d62c7fe42dcdcbcb66c1b3c6571956.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:35875fd24dbaad305540a884429ee74161f93afa12ad9777fef737bf09950411",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ActualEndpointCorrelationAttempt02/Variant84b1ce082e751d17140cb879ad35738568d62c7fe42dcdcbcb66c1b3c6571956.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:048ce84c-00f1-30bf-2316-58640f33530b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 69–85.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_endpoint_overlap_distance {A y : ℝ} (hA : 0<A)
    (hy : y∈Icc (0:ℝ) (2*A)) :
    sourceCorrelation explicitSecondDerivative A (2*A-y)=
      ∫ s in 0..y,normalizedInterior A (A-s)*normalizedInterior A (A-(y-s)) := by
  rw [actual_endpoint_overlap hA hy]
  have hc := intervalIntegral.integral_comp_sub_left
    (fun x => normalizedInterior A x*normalizedInterior A (x-(2*A-y)))
    (a:=0) (b:=y) A
  simp only [sub_zero] at hc
  rw [←hc]
  apply intervalIntegral.integral_congr
  intro s _
  dsimp only
  have he : A-s-(2*A-y)=-(A-(y-s)) := by ring
  rw [he,normalizedInterior_even]

/-- Squaring the two original source normalizations gives exactly one Z denominator. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ActualEndpointCorrelationAttempt02/Variant84b1ce082e751d17140cb879ad35738568d62c7fe42dcdcbcb66c1b3c6571956.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ActualEndpointCorrelationAttempt02/Variant84b1ce082e751d17140cb879ad35738568d62c7fe42dcdcbcb66c1b3c6571956.lean#L69).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5b4dd25b4293e818d9dcd2819b376cec857333c3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
