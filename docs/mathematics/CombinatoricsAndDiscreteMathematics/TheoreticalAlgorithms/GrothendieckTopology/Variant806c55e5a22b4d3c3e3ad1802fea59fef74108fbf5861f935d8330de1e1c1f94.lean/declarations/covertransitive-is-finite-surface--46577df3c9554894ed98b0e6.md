# coverTransitive_is_finite_surface

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7b8ee53642422c260ef2e314af872a1d3fa31aae",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 333,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/80/806c55e5a22b4d3c3e3ad1802fea59fef74108fbf5861f935d8330de1e1c1f94.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9efe611e-375f-b82f-a32a-d61529a07ab0",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:cadeab87-6d14-ef4b-7405-9220fb68a56b",
  "kind": "theorem",
  "lexical_name": "coverTransitive_is_finite_surface",
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
  "slug": "covertransitive-is-finite-surface--46577df3c9554894ed98b0e6",
  "source": {
    "blob": "7b8ee53642422c260ef2e314af872a1d3fa31aae",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 347,
    "line": 333,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/GrothendieckTopology/Variant806c55e5a22b4d3c3e3ad1802fea59fef74108fbf5861f935d8330de1e1c1f94.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:46577df3c9554894ed98b0e6b83a3419bb06d528c04b6508716a05dfc2e5aae1",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/GrothendieckTopology/Variant806c55e5a22b4d3c3e3ad1802fea59fef74108fbf5861f935d8330de1e1c1f94.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cadeab87-6d14-ef4b-7405-9220fb68a56b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 333–347.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem coverTransitive_is_finite_surface
    {M : BitMatrix}
    (cover : CoveringFamily M)
    (refinedPieces : List (BitInterval M))
    (hrefined :
      ∀ i : Fin (M.rows * M.cols),
        cover.target.Contains i ↔
          ∃ piece ∈ refinedPieces, piece.Contains i) :
    (coverTransitive cover refinedPieces hrefined).target = cover.target ∧
      (coverTransitive cover refinedPieces hrefined).pieces =
        refinedPieces ∧
      (coverTransitive cover refinedPieces hrefined).finiteSurface =
        true := by
  exact ⟨rfl, rfl, rfl⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/GrothendieckTopology/Variant806c55e5a22b4d3c3e3ad1802fea59fef74108fbf5861f935d8330de1e1c1f94.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/GrothendieckTopology/Variant806c55e5a22b4d3c3e3ad1802fea59fef74108fbf5861f935d8330de1e1c1f94.lean#L333).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7b8ee53642422c260ef2e314af872a1d3fa31aae` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
