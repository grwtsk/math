# actualSecondProfile_eq_indicator

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e35352ed909741291983e19799c81f2852c4d6f6",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 30,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c8/c8d78a12fdde293cb9563baeafc014ba481882863f75a44d0bbd8f35c8fc616b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:efb6bb3a-2679-3ffc-4a17-35d440291585",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:fb4ef300-5b2b-e8e7-ead8-959f32fef823",
  "kind": "theorem",
  "lexical_name": "actualSecondProfile_eq_indicator",
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
  "slug": "actualsecondprofile-eq-indicator--670b00e7855faf1dd208828d",
  "source": {
    "blob": "e35352ed909741291983e19799c81f2852c4d6f6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 39,
    "line": 30,
    "path": "GRWTSK/Topology/GeneralTopology/C8d78a12fdde293cb956ActualSourceWeakSecondDerivative/Variantc8d78a12fdde293cb9563baeafc014ba481882863f75a44d0bbd8f35c8fc616b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:670b00e7855faf1dd208828d0909b722155587273ad88c49c4a12964542c72c7",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/C8d78a12fdde293cb956ActualSourceWeakSecondDerivative/Variantc8d78a12fdde293cb9563baeafc014ba481882863f75a44d0bbd8f35c8fc616b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fb4ef300-5b2b-e8e7-ead8-959f32fef823`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 30–39.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualSecondProfile_eq_indicator (A : ℝ) (hA : 0 < A) :
    actualSecondProfile A = (Icc (-A) A).indicator (normalizedInteriorSecond A) := by
  funext x
  by_cases hx : x ∈ Icc (-A) A
  · rw [indicator_of_mem hx, actualSecondProfile_eq_interior A x hA hx]
  · rw [indicator_of_notMem hx]
    have hxu : x / A ∉ Icc (-1 : ℝ) 1 := (scaled_unit_interval_iff A x hA).not.mpr hx
    simp [actualSecondProfile, unitSecondEnergyProfile, indicator_of_notMem hxu]

/-- The actual weak profile is genuinely integrable before any test-function identity. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/C8d78a12fdde293cb956ActualSourceWeakSecondDerivative/Variantc8d78a12fdde293cb9563baeafc014ba481882863f75a44d0bbd8f35c8fc616b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/C8d78a12fdde293cb956ActualSourceWeakSecondDerivative/Variantc8d78a12fdde293cb9563baeafc014ba481882863f75a44d0bbd8f35c8fc616b.lean#L30).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e35352ed909741291983e19799c81f2852c4d6f6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
