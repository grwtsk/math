# PrespectralSpace.sigma

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e7328738708c1692f311b73ca6f10e0ed9f86727eea1552f0bdc152edeff158e",
  "kind": "instance",
  "lexical_name": "PrespectralSpace.sigma",
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
  "slug": "prespectralspace-sigma--0fe8a0f214259d3453ec223a",
  "source": {
    "blob": "9812b00807feedcbadd596237523f407f1d73ca0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 102,
    "line": 95,
    "path": "GRWTSK/Topology/GeneralTopology/Prespectral/Variantba0897162ebc772ae135a9d2eb0f109e8570a7097b21ab467e99e97cc1914412.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0fe8a0f214259d3453ec223a8599633c914e7f6d806c00e8b01d653866fc6e4f",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Prespectral/Variantba0897162ebc772ae135a9d2eb0f109e8570a7097b21ab467e99e97cc1914412.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e7328738708c1692f311b73ca6f10e0ed9f86727eea1552f0bdc152edeff158e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 95–102.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance PrespectralSpace.sigma {ι : Type*} (X : ι → Type*) [∀ i, TopologicalSpace (X i)]
    [∀ i, PrespectralSpace (X i)] : PrespectralSpace (Σ i, X i) :=
  .of_isTopologicalBasis (IsTopologicalBasis.sigma fun i ↦ isTopologicalBasis) fun U hU ↦ by
    simp_rw [Set.mem_iUnion] at hU
    obtain ⟨i, V, hV, rfl⟩ := hU
    exact hV.2.image continuous_sigmaMk

variable (X) in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Prespectral/Variantba0897162ebc772ae135a9d2eb0f109e8570a7097b21ab467e99e97cc1914412.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Prespectral/Variantba0897162ebc772ae135a9d2eb0f109e8570a7097b21ab467e99e97cc1914412.lean#L95).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9812b00807feedcbadd596237523f407f1d73ca0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
