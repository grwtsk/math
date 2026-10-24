# powerTower_tendsto_boundary

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0a79c685f4bdce23a69572173aad8428e2187022",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 217,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/89/89803b2f951a99086eaf6d594dd4a31cea8f1ad1bd096960492d812f2badafac.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:041a28b6-4e1b-714c-d58f-b39ad239aeed",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1fa907be-53e1-ddd3-b8f7-f19512f51b81",
  "kind": "theorem",
  "lexical_name": "powerTower_tendsto_boundary",
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
  "slug": "powertower-tendsto-boundary--68b8c8aaf954691bc7dc9085",
  "source": {
    "blob": "0a79c685f4bdce23a69572173aad8428e2187022",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 237,
    "line": 217,
    "path": "GRWTSK/Topology/GeneralTopology/PowerTowerBoundary/Variant89803b2f951a99086eaf6d594dd4a31cea8f1ad1bd096960492d812f2badafac.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:68b8c8aaf954691bc7dc90855357ceccbc58bd96fe1355f5ccc1b56dabc81165",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/PowerTowerBoundary/Variant89803b2f951a99086eaf6d594dd4a31cea8f1ad1bd096960492d812f2badafac.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1fa907be-53e1-ddd3-b8f7-f19512f51b81`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 217–237.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem powerTower_tendsto_boundary
    (certificate : PowerTowerBoundaryCertificate)
    {seed : ℂ}
    (seed_mem : seed ∈ certificate.dynamics.basin) :
    Filter.Tendsto
      (fun depth =>
        finitePowerTower
          certificate.dynamics depth seed)
      Filter.atTop
      (𝓝 certificate.dynamics.boundary) := by
  have contractiveSeed :
      seed ∈ certificate.contractive.basin := by
    simpa [certificate.basinMatches] using seed_mem
  have convergence :=
    certificate.contractive.traversal_tendsto_boundary
      (fun _ => ()) contractiveSeed
  simpa
    [finitePowerTower_eq_scheduleIteration,
      certificate.boundaryMatches] using convergence

end Mathematics.MobiusOntology
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/PowerTowerBoundary/Variant89803b2f951a99086eaf6d594dd4a31cea8f1ad1bd096960492d812f2badafac.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/PowerTowerBoundary/Variant89803b2f951a99086eaf6d594dd4a31cea8f1ad1bd096960492d812f2badafac.lean#L217).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0a79c685f4bdce23a69572173aad8428e2187022` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
