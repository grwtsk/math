# cs06_selectedS3Realization

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "34ecdb7a3d2841a7d20938a8d9f555d7305c1b63",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 9,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/73/734a01f96343782f95201ee15d55f7101d9cb417c021c7f7dc2b39122ff6748c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5dfa223a-44e6-50dd-4019-27f46f630ee1",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:dcc204dc-99aa-bfcc-d494-aed8bef92939",
  "kind": "theorem",
  "lexical_name": "cs06_selectedS3Realization",
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
  "slug": "cs06-selecteds3realization--854b94329dd23f74f072a161",
  "source": {
    "blob": "34ecdb7a3d2841a7d20938a8d9f555d7305c1b63",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 18,
    "line": 9,
    "path": "GRWTSK/Topology/GeneralTopology/CS06SelectedS3Realization/Variant734a01f96343782f95201ee15d55f7101d9cb417c021c7f7dc2b39122ff6748c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:854b94329dd23f74f072a161a8e352d6632ae0114011dd9723779d2d7e2f8e43",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/CS06SelectedS3Realization/Variant734a01f96343782f95201ee15d55f7101d9cb417c021c7f7dc2b39122ff6748c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dcc204dc-99aa-bfcc-d494-aed8bef92939`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 9–18.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem cs06_selectedS3Realization
    (S : RealizationSystem)
    (M : ControlledPlane.ControlledPlaneModel S)
    (SM : ControlledSphericalModel S M)
    (registry : ControlledSphericalResearchRegistry S M SM) :
    ∃ W : ControlledSphericalWitnessPackage S M SM, CS06Claim W := by
  rcases registry.witnesses with ⟨W⟩
  exact ⟨W, W.cs06Claim⟩

end FCRS.ControlledSpherical.Theorems
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/CS06SelectedS3Realization/Variant734a01f96343782f95201ee15d55f7101d9cb417c021c7f7dc2b39122ff6748c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/CS06SelectedS3Realization/Variant734a01f96343782f95201ee15d55f7101d9cb417c021c7f7dc2b39122ff6748c.lean#L9).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `34ecdb7a3d2841a7d20938a8d9f555d7305c1b63` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
