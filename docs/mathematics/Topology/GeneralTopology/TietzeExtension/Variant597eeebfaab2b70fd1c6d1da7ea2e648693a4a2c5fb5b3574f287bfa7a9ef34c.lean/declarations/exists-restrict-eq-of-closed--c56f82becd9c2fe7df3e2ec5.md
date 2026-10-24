# exists_restrict_eq_of_closed

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0e499fdf1fdd4ee26446dd6b00c1ad75dbb85722",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 412,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/59/597eeebfaab2b70fd1c6d1da7ea2e648693a4a2c5fb5b3574f287bfa7a9ef34c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:bb32e4e7-c9a8-4d4c-fdd4-430fb377d37a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b57810dc-e2a2-b552-30c9-0307ef710451",
  "kind": "theorem",
  "lexical_name": "exists_restrict_eq_of_closed",
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
  "slug": "exists-restrict-eq-of-closed--c56f82becd9c2fe7df3e2ec5",
  "source": {
    "blob": "0e499fdf1fdd4ee26446dd6b00c1ad75dbb85722",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 419,
    "line": 412,
    "path": "GRWTSK/Topology/GeneralTopology/TietzeExtension/Variant597eeebfaab2b70fd1c6d1da7ea2e648693a4a2c5fb5b3574f287bfa7a9ef34c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c56f82becd9c2fe7df3e2ec57a9dda3b30f9381010558d74dcae589cc2445484",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/TietzeExtension/Variant597eeebfaab2b70fd1c6d1da7ea2e648693a4a2c5fb5b3574f287bfa7a9ef34c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b57810dc-e2a2-b552-30c9-0307ef710451`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 412–419.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_restrict_eq_of_closed {s : Set Y} (f : C(s, ℝ)) (hs : IsClosed s) :
    ∃ g : C(Y, ℝ), g.restrict s = f :=
  let ⟨g, _, hgf⟩ :=
    exists_restrict_eq_forall_mem_of_closed f (fun _ => mem_univ _) univ_nonempty hs
  ⟨g, hgf⟩
#align continuous_map.exists_restrict_eq_of_closed ContinuousMap.exists_restrict_eq_of_closed

end ContinuousMap
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/TietzeExtension/Variant597eeebfaab2b70fd1c6d1da7ea2e648693a4a2c5fb5b3574f287bfa7a9ef34c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/TietzeExtension/Variant597eeebfaab2b70fd1c6d1da7ea2e648693a4a2c5fb5b3574f287bfa7a9ef34c.lean#L412).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0e499fdf1fdd4ee26446dd6b00c1ad75dbb85722` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
