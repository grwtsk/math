# Anonymous example

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3ea82edaeadecc86d85ceeb3151ebcbf2d23f0d11e30a10b02c1a0871fdcc0d8",
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
  "slug": "example--6d18aad8b8aabd6e3d962428",
  "source": {
    "blob": "97693b83e2e412a2b2d13d786b86885f1b12d9ce",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 32,
    "line": 29,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/RhEstimateTypeiiSourceEdgeAudit/Variant35e0f0e1bd9ecd9b5ba1c8a8d7ff0ef426396bac41632103ce374a4001750a5e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6d18aad8b8aabd6e3d962428a1601c442ad76d7d20e5c368f0114a945227cc53",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/RhEstimateTypeiiSourceEdgeAudit/Variant35e0f0e1bd9ecd9b5ba1c8a8d7ff0ef426396bac41632103ce374a4001750a5e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `example` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3ea82edaeadecc86d85ceeb3151ebcbf2d23f0d11e30a10b02c1a0871fdcc0d8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 29–32.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
example (A : ℝ) (hA : 1 ≤ A) :
    typeTwoOffDiagonal A = ∑ c ∈ logCells A, logBlockSum A c :=
  typeTwoOffDiagonal_eq_logBlocks A hA

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/RhEstimateTypeiiSourceEdgeAudit/Variant35e0f0e1bd9ecd9b5ba1c8a8d7ff0ef426396bac41632103ce374a4001750a5e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/RhEstimateTypeiiSourceEdgeAudit/Variant35e0f0e1bd9ecd9b5ba1c8a8d7ff0ef426396bac41632103ce374a4001750a5e.lean#L29).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `97693b83e2e412a2b2d13d786b86885f1b12d9ce` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
