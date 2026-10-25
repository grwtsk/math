# Anonymous example

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ba82d3321d57c6a0f6d6499a12102087ab32b03724def65b3520b0ff9d12de30",
  "kind": "example",
  "lexical_name": null,
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
  "slug": "example--b9b219e248371aab4277ddbc",
  "source": {
    "blob": "53e4026ffddd7f8fcd4dd0d10d072a80b0232291",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 256,
    "line": 249,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/TypeTheory/PipelineMaintenanceContracts/Variant7235b19c99e77896d1d7894d62aba2609c6a8ed278c51678c64d925c0f7dce25.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b9b219e248371aab4277ddbcb6ed40bc55e33210c8422e3c16c453a3b107809b",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/TypeTheory/PipelineMaintenanceContracts/Variant7235b19c99e77896d1d7894d62aba2609c6a8ed278c51678c64d925c0f7dce25.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_SOURCE_DEPENDENCY"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `example` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ba82d3321d57c6a0f6d6499a12102087ab32b03724def65b3520b0ff9d12de30`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 249–256.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
example (ordered : List (TargetKey × Nat)) (routes : List Route)
    (slots : Nat → Option Nat) (objects : TargetKey → Nat)
    (registered : ∀ row ∈ ordered, ∃ route ∈ routes,
      route.target = row.2 ∧ route.object = objects row.1)
    (assembly_covered : ∀ route ∈ routes, slots route.target = some route.object) :
    attachOutputs ordered slots = some (ordered.map fun row => ⟨row.1.1, row.1.2, objects row.1⟩) :=
  lowering_assembly_reattachment_outputs ordered routes slots objects registered assembly_covered

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/TypeTheory/PipelineMaintenanceContracts/Variant7235b19c99e77896d1d7894d62aba2609c6a8ed278c51678c64d925c0f7dce25.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/TypeTheory/PipelineMaintenanceContracts/Variant7235b19c99e77896d1d7894d62aba2609c6a8ed278c51678c64d925c0f7dce25.lean#L249).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `53e4026ffddd7f8fcd4dd0d10d072a80b0232291` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
