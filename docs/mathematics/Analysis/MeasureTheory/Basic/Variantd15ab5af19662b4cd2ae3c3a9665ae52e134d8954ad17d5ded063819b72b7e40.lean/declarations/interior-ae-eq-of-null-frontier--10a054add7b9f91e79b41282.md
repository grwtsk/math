# interior_ae_eq_of_null_frontier

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
      "line": 454,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d1/d15ab5af19662b4cd2ae3c3a9665ae52e134d8954ad17d5ded063819b72b7e40.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:312406fe-f9eb-a3f1-dd79-0f0f1f2a4c66",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:dfc31220-d5b6-340b-500e-0d283c815e6d",
  "kind": "theorem",
  "lexical_name": "interior_ae_eq_of_null_frontier",
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
  "slug": "interior-ae-eq-of-null-frontier--10a054add7b9f91e79b41282",
  "source": {
    "blob": "7c7da67bdb2729e65b1245a11c800f945ee6214e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 457,
    "line": 454,
    "path": "GRWTSK/Analysis/MeasureTheory/Basic/Variantd15ab5af19662b4cd2ae3c3a9665ae52e134d8954ad17d5ded063819b72b7e40.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:10a054add7b9f91e79b41282f96cef83305bf8767b1a396cb293c3504e019d61",
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

Occurrence: `result:dfc31220-d5b6-340b-500e-0d283c815e6d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 454–457.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem interior_ae_eq_of_null_frontier {μ : Measure α'} {s : Set α'} (h : μ (frontier s) = 0) :
    interior s =ᵐ[μ] s :=
  interior_subset.eventuallySubset.antisymm <| subset_closure.eventuallySubset.trans (ae_le_set.2 h)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Basic/Variantd15ab5af19662b4cd2ae3c3a9665ae52e134d8954ad17d5ded063819b72b7e40.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Basic/Variantd15ab5af19662b4cd2ae3c3a9665ae52e134d8954ad17d5ded063819b72b7e40.lean#L454).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7c7da67bdb2729e65b1245a11c800f945ee6214e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
