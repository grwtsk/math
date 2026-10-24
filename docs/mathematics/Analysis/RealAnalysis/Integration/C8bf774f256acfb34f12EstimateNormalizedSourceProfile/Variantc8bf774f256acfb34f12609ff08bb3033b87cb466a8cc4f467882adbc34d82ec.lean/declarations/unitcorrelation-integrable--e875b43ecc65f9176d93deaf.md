# unitCorrelation_integrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "34c0bcf58cc8ef091d5c491dd48676342dfbe449",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 132,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c8/c8bf774f256acfb34f12609ff08bb3033b87cb466a8cc4f467882adbc34d82ec.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d58aeb82-6a23-bd91-cedc-064a4efd2e41",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:17cf5dbc-6e39-3c32-7969-10694ac4799e",
  "kind": "theorem",
  "lexical_name": "unitCorrelation_integrable",
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
  "slug": "unitcorrelation-integrable--e875b43ecc65f9176d93deaf",
  "source": {
    "blob": "34c0bcf58cc8ef091d5c491dd48676342dfbe449",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 136,
    "line": 132,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/C8bf774f256acfb34f12EstimateNormalizedSourceProfile/Variantc8bf774f256acfb34f12609ff08bb3033b87cb466a8cc4f467882adbc34d82ec.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e875b43ecc65f9176d93deaf1e17390de3de3e7e8e8bb75c31789f5c50730172",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/C8bf774f256acfb34f12EstimateNormalizedSourceProfile/Variantc8bf774f256acfb34f12609ff08bb3033b87cb466a8cc4f467882adbc34d82ec.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:17cf5dbc-6e39-3c32-7969-10694ac4799e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 132–136.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem unitCorrelation_integrable (A : ℝ) (hA : 0 < A) :
    Integrable (unitCorrelation A) :=
  (unitCorrelation_contDiff A hA).continuous.integrable_of_hasCompactSupport
    (unitCorrelation_hasCompactSupport A hA)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/C8bf774f256acfb34f12EstimateNormalizedSourceProfile/Variantc8bf774f256acfb34f12609ff08bb3033b87cb466a8cc4f467882adbc34d82ec.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/C8bf774f256acfb34f12EstimateNormalizedSourceProfile/Variantc8bf774f256acfb34f12609ff08bb3033b87cb466a8cc4f467882adbc34d82ec.lean#L132).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `34c0bcf58cc8ef091d5c491dd48676342dfbe449` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
