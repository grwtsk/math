# Anonymous example

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5ab036cc72389f481dd20f1bc345488a49db85ef586ac35e984293aab8c74579",
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
  "slug": "example--22feeeada5d4b14282ee6480",
  "source": {
    "blob": "21dc7c5a45d763210b23d14d2a404de0f6a7c4fc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 296,
    "line": 289,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/TypeTheory/PipelineOutputContracts/Variante6f8a7a6c10ba4e34d923cca88b8525002a27b722c6ee892945a52c9569b7707.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:22feeeada5d4b14282ee6480ff4e3393a84372989792001c59b545f80f269a56",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/TypeTheory/PipelineOutputContracts/Variante6f8a7a6c10ba4e34d923cca88b8525002a27b722c6ee892945a52c9569b7707.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_SOURCE_DEPENDENCY"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `example` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5ab036cc72389f481dd20f1bc345488a49db85ef586ac35e984293aab8c74579`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 289–296.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
example (state : Outputs) (ordered : List (TargetKey × Nat)) (slots : Nat → Option Nat)
    (emitted : List Nat) (valid : Invariant state) (enumerated : Enumeration state ordered)
    (covered : ∀ route ∈ state.lowered.routes, slots route.target = some route.object)
    (history : emitted = markedIndices (state.lowered.routes.map Route.occurrence)) :
    finish state ordered slots emitted = some ⟨state.lowered.metadata.filterMap id,
      ordered.map (fun row => ⟨row.1.1, row.1.2, targetObject state row.1⟩)⟩ :=
  finish_assembly_correspondence state ordered slots emitted valid enumerated covered history

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/TypeTheory/PipelineOutputContracts/Variante6f8a7a6c10ba4e34d923cca88b8525002a27b722c6ee892945a52c9569b7707.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/TypeTheory/PipelineOutputContracts/Variante6f8a7a6c10ba4e34d923cca88b8525002a27b722c6ee892945a52c9569b7707.lean#L289).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `21dc7c5a45d763210b23d14d2a404de0f6a7c4fc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
