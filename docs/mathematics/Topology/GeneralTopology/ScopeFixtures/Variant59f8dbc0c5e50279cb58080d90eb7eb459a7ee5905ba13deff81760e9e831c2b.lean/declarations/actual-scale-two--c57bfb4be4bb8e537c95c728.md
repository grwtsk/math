# actual_scale_two

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f55f834dc7b14af0fcc527d01b0c625af7a7482b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 29,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/59/59f8dbc0c5e50279cb58080d90eb7eb459a7ee5905ba13deff81760e9e831c2b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d6ffa7dc-d3e8-e2ad-c027-aa7c26e5146e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:33d2a3d5-86e5-bce9-7542-8d40d6f92b65",
  "kind": "theorem",
  "lexical_name": "actual_scale_two",
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
  "slug": "actual-scale-two--c57bfb4be4bb8e537c95c728",
  "source": {
    "blob": "f55f834dc7b14af0fcc527d01b0c625af7a7482b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 36,
    "line": 29,
    "path": "GRWTSK/Topology/GeneralTopology/ScopeFixtures/Variant59f8dbc0c5e50279cb58080d90eb7eb459a7ee5905ba13deff81760e9e831c2b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c57bfb4be4bb8e537c95c728b2cdc94892268cb225b8ab30612a195fe2e8cc98",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ScopeFixtures/Variant59f8dbc0c5e50279cb58080d90eb7eb459a7ee5905ba13deff81760e9e831c2b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:33d2a3d5-86e5-bce9-7542-8d40d6f92b65`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 29–36.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_scale_two :
    |criticalMangoldtWork 2 - ∫ t in 0..4,
      (mangoldtLogError t - mangoldtLogError 4 / 4 * t) *
        deriv (criticalPrimeTest 2) t| ≤ (Real.log 4 + 4 + Real.log 2) / 2 := by
  simpa only [show (2 : ℝ) * 2 = 4 by norm_num] using
    criticalMangoldtWork_endpoint_chord_replacement_abs_le (A := 2) (by norm_num)

/-- The totalized zero division does not supply the theorem's guard. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ScopeFixtures/Variant59f8dbc0c5e50279cb58080d90eb7eb459a7ee5905ba13deff81760e9e831c2b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ScopeFixtures/Variant59f8dbc0c5e50279cb58080d90eb7eb459a7ee5905ba13deff81760e9e831c2b.lean#L29).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f55f834dc7b14af0fcc527d01b0c625af7a7482b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
