# actual_endpoint_overlap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ea888689-2256-69bb-abe2-eeb8e87567b0",
  "kind": "theorem",
  "lexical_name": "actual_endpoint_overlap",
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
  "slug": "actual-endpoint-overlap--f22bf9d88c3e9fa2aed72102",
  "source": {
    "blob": "3c9d755d92632d2db58df018d5ccfc829d1c1322",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 60,
    "line": 33,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ActualEndpointCorrelationAttempt02/Variantf2d4682d340286cf3d7509b4545ddf34678bb4c192af0512410954a14bb2fe24.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f22bf9d88c3e9fa2aed7210200930e71de061aca0c2bcbbad60ad28d95da5829",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ActualEndpointCorrelationAttempt02/Variantf2d4682d340286cf3d7509b4545ddf34678bb4c192af0512410954a14bb2fe24.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ea888689-2256-69bb-abe2-eeb8e87567b0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 33–60.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_endpoint_overlap {A y : ℝ} (hA : 0<A) (hy : y∈Icc (0:ℝ) (2*A)) :
    sourceCorrelation explicitSecondDerivative A (2*A-y)=
      ∫ x in (A-y)..A,normalizedInterior A x*normalizedInterior A (x-(2*A-y)) := by
  have he : (fun x => normalizedTest explicitSecondDerivative A x*
      normalizedTest explicitSecondDerivative A (x-(2*A-y)))=
      (Icc (A-y) A).indicator (fun x => normalizedInterior A x*
        normalizedInterior A (x-(2*A-y))) := by
    funext x
    rw [normalizedTest_eq_indicator A hA]
    by_cases hx : x∈Icc (A-y) A
    · have hx1 : x∈Icc (-A) A := by constructor <;> linarith [hx.1,hx.2,hy.1,hy.2]
      have hx2 : x-(2*A-y)∈Icc (-A) A := by
        constructor <;> linarith [hx.1,hx.2,hy.1,hy.2]
      rw [indicator_of_mem hx1,indicator_of_mem hx2,indicator_of_mem hx]
    · rw [indicator_of_notMem hx]
      by_cases hx1 : A-y≤x
      · have hx2 : A<x := by
          by_contra hn
          exact hx ⟨hx1,le_of_not_gt hn⟩
        rw [indicator_of_notMem (show x∉Icc (-A) A from fun h => not_le_of_gt hx2 h.2)]
        simp
      · have hx2 : x-(2*A-y) < -A := by linarith [lt_of_not_ge hx1]
        rw [indicator_of_notMem (show x-(2*A-y)∉Icc (-A) A from
          fun h => not_le_of_gt hx2 h.1)]
        simp
  rw [sourceCorrelation,he,zeroExtension_integral _ (A-y) A (by linarith [hy.1])]

/-- Actual correlation uses the physical endpoint distance and reflected second factor. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ActualEndpointCorrelationAttempt02/Variantf2d4682d340286cf3d7509b4545ddf34678bb4c192af0512410954a14bb2fe24.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ActualEndpointCorrelationAttempt02/Variantf2d4682d340286cf3d7509b4545ddf34678bb4c192af0512410954a14bb2fe24.lean#L33).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3c9d755d92632d2db58df018d5ccfc829d1c1322` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
