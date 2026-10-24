# lineCount_eq_pointCount

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "34ff37de56738c85768cf7d7eddb4f4d83e78c7b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 428,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/1b/1b8cab695d363cfe58a56c821883a6fe97c6dd7ba726ad6e080c2fc0b6fad585.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5aab537d-3de0-ad36-6254-c103367d8e25",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:020dee0e-f977-7f28-de5f-b121bd0e831c",
  "kind": "theorem",
  "lexical_name": "lineCount_eq_pointCount",
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
  "slug": "linecount-eq-pointcount--e813732dbb647be34ed8d704",
  "source": {
    "blob": "34ff37de56738c85768cf7d7eddb4f4d83e78c7b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 438,
    "line": 428,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Configuration/Variant1b8cab695d363cfe58a56c821883a6fe97c6dd7ba726ad6e080c2fc0b6fad585.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e813732dbb647be34ed8d7042f4752de659fa6450e9a75370e91c18a4564155b",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Configuration/Variant1b8cab695d363cfe58a56c821883a6fe97c6dd7ba726ad6e080c2fc0b6fad585.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:020dee0e-f977-7f28-de5f-b121bd0e831c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 428–438.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem lineCount_eq_pointCount [Finite P] [Finite L] (p : P) (l : L) :
    lineCount L p = pointCount P l :=
  Exists.elim (exists_point l) fun q hq =>
    (lineCount_eq_lineCount L p q).trans <| by
      cases nonempty_fintype P
      cases nonempty_fintype L
      exact HasLines.lineCount_eq_pointCount (card_points_eq_card_lines P L) hq
#align configuration.projective_plane.line_count_eq_point_count Configuration.ProjectivePlane.lineCount_eq_pointCount

variable (P L)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Configuration/Variant1b8cab695d363cfe58a56c821883a6fe97c6dd7ba726ad6e080c2fc0b6fad585.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Configuration/Variant1b8cab695d363cfe58a56c821883a6fe97c6dd7ba726ad6e080c2fc0b6fad585.lean#L428).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `34ff37de56738c85768cf7d7eddb4f4d83e78c7b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
