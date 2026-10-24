# lipschitz_infDist

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "cf5c68b44e2e9c91d1339216ca0e9113c69bb3a4",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 308,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a3/a36e6626420eef4a97a72878d52c5dc41a2eb561a3e0cb499d7b51270777bd33.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2c2ee7a1-eb3a-1534-b7b0-3238165526ab",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:af12e663-8151-5774-7069-e8ec204f4ad9",
  "kind": "theorem",
  "lexical_name": "lipschitz_infDist",
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
  "slug": "lipschitz-infdist--c21352597df3ba889164d081",
  "source": {
    "blob": "cf5c68b44e2e9c91d1339216ca0e9113c69bb3a4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 312,
    "line": 308,
    "path": "GRWTSK/Topology/MetricTopology/Closeds/Varianta36e6626420eef4a97a72878d52c5dc41a2eb561a3e0cb499d7b51270777bd33.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c21352597df3ba889164d081fe4bd44e6d9bff63a25fef578786e79a9248b37f",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Closeds/Varianta36e6626420eef4a97a72878d52c5dc41a2eb561a3e0cb499d7b51270777bd33.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:af12e663-8151-5774-7069-e8ec204f4ad9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 308–312.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem lipschitz_infDist : LipschitzWith 2 fun p : α × NonemptyCompacts α => infDist p.1 p.2 := by
  rw [← one_add_one_eq_two]
  exact LipschitzWith.uncurry
    (fun s : NonemptyCompacts α => lipschitz_infDist_pt (s : Set α)) lipschitz_infDist_const

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Closeds/Varianta36e6626420eef4a97a72878d52c5dc41a2eb561a3e0cb499d7b51270777bd33.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Closeds/Varianta36e6626420eef4a97a72878d52c5dc41a2eb561a3e0cb499d7b51270777bd33.lean#L308).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cf5c68b44e2e9c91d1339216ca0e9113c69bb3a4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
