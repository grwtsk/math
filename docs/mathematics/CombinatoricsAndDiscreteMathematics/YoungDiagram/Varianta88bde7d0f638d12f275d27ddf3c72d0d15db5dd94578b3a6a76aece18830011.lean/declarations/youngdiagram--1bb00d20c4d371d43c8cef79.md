# YoungDiagram

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b56032165e4506a4acb2f5f6eb8c3e76bb070a2d3f77024b704e8adf9e2a4580",
  "kind": "structure",
  "lexical_name": "YoungDiagram",
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
  "slug": "youngdiagram--1bb00d20c4d371d43c8cef79",
  "source": {
    "blob": "823a7b8276b4a19b09395ece0e5a89922b364621",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 82,
    "line": 75,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/YoungDiagram/Varianta88bde7d0f638d12f275d27ddf3c72d0d15db5dd94578b3a6a76aece18830011.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1bb00d20c4d371d43c8cef7912c46197f9d3553a0ee5f404a88d3f469d71dfba",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/YoungDiagram/Varianta88bde7d0f638d12f275d27ddf3c72d0d15db5dd94578b3a6a76aece18830011.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b56032165e4506a4acb2f5f6eb8c3e76bb070a2d3f77024b704e8adf9e2a4580`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 75–82.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure YoungDiagram where
  /-- A finite set which represents a finite collection of cells on the `ℕ × ℕ` grid. -/
  cells : Finset (ℕ × ℕ)
  /-- Cells are up-left justified, witnessed by the fact that `cells` is a lower set in `ℕ × ℕ`. -/
  isLowerSet : IsLowerSet (cells : Set (ℕ × ℕ))

namespace YoungDiagram

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/YoungDiagram/Varianta88bde7d0f638d12f275d27ddf3c72d0d15db5dd94578b3a6a76aece18830011.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/YoungDiagram/Varianta88bde7d0f638d12f275d27ddf3c72d0d15db5dd94578b3a6a76aece18830011.lean#L75).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `823a7b8276b4a19b09395ece0e5a89922b364621` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
