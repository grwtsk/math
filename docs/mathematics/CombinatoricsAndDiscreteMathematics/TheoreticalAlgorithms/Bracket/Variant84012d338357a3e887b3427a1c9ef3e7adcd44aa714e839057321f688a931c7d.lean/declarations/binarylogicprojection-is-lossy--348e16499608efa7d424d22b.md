# binaryLogicProjection_is_lossy

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b8a896f3-7dc7-0b75-e6f2-89ffbdb3388f",
  "kind": "theorem",
  "lexical_name": "binaryLogicProjection_is_lossy",
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
  "slug": "binarylogicprojection-is-lossy--348e16499608efa7d424d22b",
  "source": {
    "blob": "f7a613629d21c1f0f59bc2fc22050347eb4b5a4b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 212,
    "line": 199,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bracket/Variant84012d338357a3e887b3427a1c9ef3e7adcd44aa714e839057321f688a931c7d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:348e16499608efa7d424d22b50f479e56717b5677e20b2d88d27b5fe766fb171",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bracket/Variant84012d338357a3e887b3427a1c9ef3e7adcd44aa714e839057321f688a931c7d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b8a896f3-7dc7-0b75-e6f2-89ffbdb3388f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 199–212.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem binaryLogicProjection_is_lossy :
    ∃ left right : RichTreeState,
      left ≠ right ∧
        left.binaryLogicProjection = right.binaryLogicProjection := by
  let root : StableCode := ⟨0, by simp [revisionModulus]⟩
  let tree : FiniteTree := .node root []
  let left : RichTreeState := ⟨"left", tree⟩
  let right : RichTreeState := ⟨"right", tree⟩
  refine ⟨left, right, ?_, rfl⟩
  intro equal
  have labelsEqual := congrArg RichTreeState.sourceLabel equal
  simp [left, right] at labelsEqual

end Surface.Core.NetworkSurgery
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bracket/Variant84012d338357a3e887b3427a1c9ef3e7adcd44aa714e839057321f688a931c7d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bracket/Variant84012d338357a3e887b3427a1c9ef3e7adcd44aa714e839057321f688a931c7d.lean#L199).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f7a613629d21c1f0f59bc2fc22050347eb4b5a4b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
