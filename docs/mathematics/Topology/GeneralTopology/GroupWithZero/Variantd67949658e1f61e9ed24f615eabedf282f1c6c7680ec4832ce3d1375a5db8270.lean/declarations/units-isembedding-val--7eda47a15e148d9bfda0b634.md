# Units.isEmbedding_val₀

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:07b1bb2c-403b-0b58-4705-502802a66a86",
  "kind": "theorem",
  "lexical_name": "Units.isEmbedding_val₀",
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
  "slug": "units-isembedding-val--7eda47a15e148d9bfda0b634",
  "source": {
    "blob": "6e88a392290dd1450ae457dbe31a9f7810718149",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 149,
    "line": 139,
    "path": "GRWTSK/Topology/GeneralTopology/GroupWithZero/Variantd67949658e1f61e9ed24f615eabedf282f1c6c7680ec4832ce3d1375a5db8270.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7eda47a15e148d9bfda0b6340b60cf59fcb1a2b4184998f5f2b5aaa7ab7efa2e",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/GroupWithZero/Variantd67949658e1f61e9ed24f615eabedf282f1c6c7680ec4832ce3d1375a5db8270.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:07b1bb2c-403b-0b58-4705-502802a66a86`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 139–149.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Units.isEmbedding_val₀ [GroupWithZero G₀] [TopologicalSpace G₀] [HasContinuousInv₀ G₀] :
    IsEmbedding (val : G₀ˣ → G₀) :=
  embedding_val_mk <| (continuousOn_inv₀ (G₀ := G₀)).mono fun _ ↦ IsUnit.ne_zero

@[deprecated (since := "2024-10-26")]
alias Units.embedding_val₀ := Units.isEmbedding_val₀

section NhdsInv

variable [GroupWithZero G₀] [TopologicalSpace G₀] [HasContinuousInv₀ G₀] {x : G₀}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/GroupWithZero/Variantd67949658e1f61e9ed24f615eabedf282f1c6c7680ec4832ce3d1375a5db8270.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/GroupWithZero/Variantd67949658e1f61e9ed24f615eabedf282f1c6c7680ec4832ce3d1375a5db8270.lean#L139).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6e88a392290dd1450ae457dbe31a9f7810718149` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
