# nativeMellin_integrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "cd25beb1931507a94c7ae661059524a079058c13",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 68,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/fd/fd440f2943f9d38c80d4e744e71a937fb45e17c4439a0214ed6133567470a273.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:29ece2ae-c5db-f141-f394-4010b89d2ecf",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e136106c-dadf-7c39-e23b-57f4cc7b8cf2",
  "kind": "theorem",
  "lexical_name": "nativeMellin_integrable",
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
  "slug": "nativemellin-integrable--10cc7781cfa96d85f0532179",
  "source": {
    "blob": "cd25beb1931507a94c7ae661059524a079058c13",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 74,
    "line": 68,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceNativeMellin/Variantfd440f2943f9d38c80d4e744e71a937fb45e17c4439a0214ed6133567470a273.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:10cc7781cfa96d85f053217938d52ea8d2ed0750253219e5dd0f8c1dd26a8339",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceNativeMellin/Variantfd440f2943f9d38c80d4e744e71a937fb45e17c4439a0214ed6133567470a273.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e136106c-dadf-7c39-e23b-57f4cc7b8cf2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 68–74.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem nativeMellin_integrable (A : ℝ) (hA : 0 < A) (s : ℂ) :
    Integrable (fun t : ℝ ↦ (sourceCorrelation explicitSecondDerivative A t : ℂ) *
      Complex.exp ((s - 1 / 2) * (t : ℂ))) :=
  weighted_integrable _ (sourceCorrelation_contDiff A hA).continuous
    (sourceCorrelation_hasCompactSupport A hA) (s - 1 / 2)

/-- Normalization divides the original bilateral transform by the literal square root. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceNativeMellin/Variantfd440f2943f9d38c80d4e744e71a937fb45e17c4439a0214ed6133567470a273.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceNativeMellin/Variantfd440f2943f9d38c80d4e744e71a937fb45e17c4439a0214ed6133567470a273.lean#L68).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cd25beb1931507a94c7ae661059524a079058c13` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
