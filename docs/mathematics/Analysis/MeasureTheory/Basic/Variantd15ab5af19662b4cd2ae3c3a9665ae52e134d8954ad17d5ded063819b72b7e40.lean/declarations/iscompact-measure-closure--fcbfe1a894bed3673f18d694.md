# IsCompact.measure_closure

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7c7da67bdb2729e65b1245a11c800f945ee6214e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 288,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d1/d15ab5af19662b4cd2ae3c3a9665ae52e134d8954ad17d5ded063819b72b7e40.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:80330eb2-d2b8-0c0e-ffeb-5e7fda749c47",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c280ff6c-362b-d281-2cd0-6df9ab06cc74",
  "kind": "theorem",
  "lexical_name": "IsCompact.measure_closure",
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
  "slug": "iscompact-measure-closure--fcbfe1a894bed3673f18d694",
  "source": {
    "blob": "7c7da67bdb2729e65b1245a11c800f945ee6214e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 296,
    "line": 288,
    "path": "GRWTSK/Analysis/MeasureTheory/Basic/Variantd15ab5af19662b4cd2ae3c3a9665ae52e134d8954ad17d5ded063819b72b7e40.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fcbfe1a894bed3673f18d6949d2ce7979cd6062acbe1e22a1239f0d8a5ff668b",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Basic/Variantd15ab5af19662b4cd2ae3c3a9665ae52e134d8954ad17d5ded063819b72b7e40.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c280ff6c-362b-d281-2cd0-6df9ab06cc74`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 288–296.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsCompact.measure_closure [R1Space γ] {K : Set γ} (hK : IsCompact K) (μ : Measure γ) :
    μ (closure K) = μ K := by
  refine le_antisymm ?_ (measure_mono subset_closure)
  calc
    μ (closure K) ≤ μ (toMeasurable μ K) := measure_mono <|
      hK.closure_subset_measurableSet (measurableSet_toMeasurable ..) (subset_toMeasurable ..)
    _ = μ K := measure_toMeasurable ..

@[measurability]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Basic/Variantd15ab5af19662b4cd2ae3c3a9665ae52e134d8954ad17d5ded063819b72b7e40.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Basic/Variantd15ab5af19662b4cd2ae3c3a9665ae52e134d8954ad17d5ded063819b72b7e40.lean#L288).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7c7da67bdb2729e65b1245a11c800f945ee6214e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
