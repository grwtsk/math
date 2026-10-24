# torsion_directed_flow_well_posed

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "235d25342cb844b2fab7bac4875eb8047a02ca4f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 788,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/47/477e0913c86490a3efdabb5caa1de446f1e92a332c117df3f9565df4d5abc79e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1ab22d4f-6336-c7b3-1ddf-31c4134a57db",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:aa633acf-1058-75fd-d9be-941df7aa0ed6",
  "kind": "theorem",
  "lexical_name": "torsion_directed_flow_well_posed",
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
  "slug": "torsion-directed-flow-well-posed--7d9adee905fd80fdf6cd5428",
  "source": {
    "blob": "235d25342cb844b2fab7bac4875eb8047a02ca4f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 796,
    "line": 788,
    "path": "GRWTSK/Algebra/GroupTheory/CountableShadowPipeline/Variant477e0913c86490a3efdabb5caa1de446f1e92a332c117df3f9565df4d5abc79e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7d9adee905fd80fdf6cd5428e14c6a1d20b93c83005620dec70e840e86ba7c84",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/CountableShadowPipeline/Variant477e0913c86490a3efdabb5caa1de446f1e92a332c117df3f9565df4d5abc79e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:aa633acf-1058-75fd-d9be-941df7aa0ed6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 788–796.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem torsion_directed_flow_well_posed
    (R : AnalyticRealityDescriptor)
    (F : TorsionDirectedFlowData R)
    (hLocal : F.vectorFieldLocallyLipschitz)
    (hGlobal : F.globalGrowthControlled)
    (hInvariant : F.preservesAdmissibleDomain) :
    ∃ S : FlowSemigroup R, S.generatedBy F ∧ S.global ∧ S.unique :=
  flow_semigroup_from_lipschitz_data R F hLocal hGlobal hInvariant

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/CountableShadowPipeline/Variant477e0913c86490a3efdabb5caa1de446f1e92a332c117df3f9565df4d5abc79e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/CountableShadowPipeline/Variant477e0913c86490a3efdabb5caa1de446f1e92a332c117df3f9565df4d5abc79e.lean#L788).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `235d25342cb844b2fab7bac4875eb8047a02ca4f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
