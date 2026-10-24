# firstWeightedCorrelation_deriv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5b18c75835a16a4c4075469c85d1e6c85b1bcabe",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 443,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/07/076adfd371cde561b652e62e3c812805c3eed9dbf21b4700784d85249b84c400.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1c68963f-4bac-5077-3919-a29a26b926c7",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a2aa7cd8-d683-1656-cdba-f6aaf999b4b1",
  "kind": "theorem",
  "lexical_name": "firstWeightedCorrelation_deriv",
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
  "slug": "firstweightedcorrelation-deriv--3fa7299c91f0a6ed61a3012a",
  "source": {
    "blob": "5b18c75835a16a4c4075469c85d1e6c85b1bcabe",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 454,
    "line": 443,
    "path": "GRWTSK/Topology/GeneralTopology/EstimateKernelMoments/Variant076adfd371cde561b652e62e3c812805c3eed9dbf21b4700784d85249b84c400.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3fa7299c91f0a6ed61a3012aedba103cac92c74064dbdce8ae90a16bb8e1c27e",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/EstimateKernelMoments/Variant076adfd371cde561b652e62e3c812805c3eed9dbf21b4700784d85249b84c400.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a2aa7cd8-d683-1656-cdba-f6aaf999b4b1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 443–454.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem firstWeightedCorrelation_deriv
    (A t : ℝ) (hA : 1 ≤ A) :
    deriv (firstWeightedCorrelation A) t =
      weightedCorrelation A t +
        t * deriv (weightedCorrelation A) t := by
  have h :=
    ((hasDerivAt_id t).mul
      (((weightedCorrelation_contDiff A hA).differentiable (by norm_num) t).hasDerivAt)).deriv
  change deriv (firstWeightedCorrelation A) t = _ at h
  simpa only [id_eq, one_mul] using h

/-- First moment for C_A' - C_A/2. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/EstimateKernelMoments/Variant076adfd371cde561b652e62e3c812805c3eed9dbf21b4700784d85249b84c400.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/EstimateKernelMoments/Variant076adfd371cde561b652e62e3c812805c3eed9dbf21b4700784d85249b84c400.lean#L443).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5b18c75835a16a4c4075469c85d1e6c85b1bcabe` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
