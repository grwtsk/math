# ContinuousMap.HomotopyEquiv.contractibleSpace

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:64ce7a0f-e1fc-21ba-fd5a-fd56a259dbe1",
  "kind": "theorem",
  "lexical_name": "ContinuousMap.HomotopyEquiv.contractibleSpace",
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
  "slug": "continuousmap-homotopyequiv-contractiblespace--533fc4dc23dd12a81c3bb09f",
  "source": {
    "blob": "11e31398472e31074a2e14768c67d1dfe09e6a65",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 99,
    "line": 95,
    "path": "GRWTSK/Topology/AlgebraicTopology/Contractible/Variant3d94f52966cc1bd7ae765406a1354e8a34320b34124d5f27d0b52e18a59e14e7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:533fc4dc23dd12a81c3bb09fdc7a374dd3bf9bf52442a0a3ee957f97eacab40e",
  "verification": {
    "reference": "docs/verification/Topology/AlgebraicTopology/Contractible/Variant3d94f52966cc1bd7ae765406a1354e8a34320b34124d5f27d0b52e18a59e14e7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:64ce7a0f-e1fc-21ba-fd5a-fd56a259dbe1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 95–99.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem ContinuousMap.HomotopyEquiv.contractibleSpace [ContractibleSpace Y] (e : X ≃ₕ Y) :
    ContractibleSpace X :=
  ⟨(ContractibleSpace.hequiv_unit Y).map e.trans⟩
#align continuous_map.homotopy_equiv.contractible_space ContinuousMap.HomotopyEquiv.contractibleSpace

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/AlgebraicTopology/Contractible/Variant3d94f52966cc1bd7ae765406a1354e8a34320b34124d5f27d0b52e18a59e14e7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/AlgebraicTopology/Contractible/Variant3d94f52966cc1bd7ae765406a1354e8a34320b34124d5f27d0b52e18a59e14e7.lean#L95).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `11e31398472e31074a2e14768c67d1dfe09e6a65` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
