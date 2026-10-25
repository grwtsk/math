# toPGame_nadd

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:85194847-8c36-c469-eac6-55d65b4981a5",
  "kind": "theorem",
  "lexical_name": "toPGame_nadd",
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
  "slug": "topgame-nadd--6f82392ec3fc61ef3cccf7cc",
  "source": {
    "blob": "2506ce68fbcfc9aa13e93df21bbc7062b09aab2a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 221,
    "line": 202,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Variant6257c6fda9da05b985d10d9038715c3d9b9257570a0b8d655c4f3ec427cca5b2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6f82392ec3fc61ef3cccf7cc2577f9a6208052963a72e7437a5575a3c1155d01",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Variant6257c6fda9da05b985d10d9038715c3d9b9257570a0b8d655c4f3ec427cca5b2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:85194847-8c36-c469-eac6-55d65b4981a5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 202–221.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem toPGame_nadd (a b : Ordinal) : (a ♯ b).toPGame ≈ a.toPGame + b.toPGame := by
  refine ⟨le_of_forall_lf (fun i => ?_) isEmptyElim, le_of_forall_lf (fun i => ?_) isEmptyElim⟩
  · rw [toPGame_moveLeft']
    rcases lt_nadd_iff.1 (toLeftMovesToPGame_symm_lt i) with (⟨c, hc, hc'⟩ | ⟨c, hc, hc'⟩) <;>
    rw [← toPGame_le_iff, le_congr_right (toPGame_nadd _ _)] at hc' <;>
    apply lf_of_le_of_lf hc'
    · apply add_lf_add_right
      rwa [toPGame_lf_iff]
    · apply add_lf_add_left
      rwa [toPGame_lf_iff]
  · apply leftMoves_add_cases i <;>
    intro i <;>
    let wf := toLeftMovesToPGame_symm_lt i <;>
    (try rw [add_moveLeft_inl]) <;>
    (try rw [add_moveLeft_inr]) <;>
    rw [toPGame_moveLeft', ← lf_congr_left (toPGame_nadd _ _), toPGame_lf_iff]
    · exact nadd_lt_nadd_right wf _
    · exact nadd_lt_nadd_left wf _
termination_by (a, b)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Variant6257c6fda9da05b985d10d9038715c3d9b9257570a0b8d655c4f3ec427cca5b2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Variant6257c6fda9da05b985d10d9038715c3d9b9257570a0b8d655c4f3ec427cca5b2.lean#L202).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2506ce68fbcfc9aa13e93df21bbc7062b09aab2a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
