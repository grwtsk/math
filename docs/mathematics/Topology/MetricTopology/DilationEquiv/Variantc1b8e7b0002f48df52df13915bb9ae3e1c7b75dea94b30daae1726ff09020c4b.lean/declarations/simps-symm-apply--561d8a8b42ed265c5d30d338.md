# Simps.symm_apply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:904cf814a9274c954a59db4ece5ca30cc2a3e3f65794d81e49055dbe63e540cb",
  "kind": "def",
  "lexical_name": "Simps.symm_apply",
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
  "slug": "simps-symm-apply--561d8a8b42ed265c5d30d338",
  "source": {
    "blob": "6cc6898ba891774e9456958f17b2738240b7cbf7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 109,
    "line": 106,
    "path": "GRWTSK/Topology/MetricTopology/DilationEquiv/Variantc1b8e7b0002f48df52df13915bb9ae3e1c7b75dea94b30daae1726ff09020c4b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:561d8a8b42ed265c5d30d3386576f6ea0a0546168edc36c9d895f96f9f0390cd",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/DilationEquiv/Variantc1b8e7b0002f48df52df13915bb9ae3e1c7b75dea94b30daae1726ff09020c4b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:904cf814a9274c954a59db4ece5ca30cc2a3e3f65794d81e49055dbe63e540cb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 106–109.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Simps.symm_apply (e : X ≃ᵈ Y) : Y → X := e.symm

initialize_simps_projections DilationEquiv (toFun → apply, invFun → symm_apply)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/DilationEquiv/Variantc1b8e7b0002f48df52df13915bb9ae3e1c7b75dea94b30daae1726ff09020c4b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/DilationEquiv/Variantc1b8e7b0002f48df52df13915bb9ae3e1c7b75dea94b30daae1726ff09020c4b.lean#L106).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6cc6898ba891774e9456958f17b2738240b7cbf7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
