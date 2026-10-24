# Coindep.delete_spanning_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1196d1d6-2fc5-54c7-ac4d-b5fdf48b2db2",
  "kind": "lemma",
  "lexical_name": "Coindep.delete_spanning_iff",
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
  "slug": "coindep-delete-spanning-iff--428d35d1e3e24580909aba28",
  "source": {
    "blob": "d690f7517aa541762634179246bb61611faf87d1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 209,
    "line": 200,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Delete/Variant55d80f73706f0ac0a2301626c95d420c2d0d71e9a850f97a5527f6d4fcfb854e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:428d35d1e3e24580909aba2819f2faa3679307c4fc2efb451389226305aa9dcf",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Delete/Variant55d80f73706f0ac0a2301626c95d420c2d0d71e9a850f97a5527f6d4fcfb854e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1196d1d6-2fc5-54c7-ac4d-b5fdf48b2db2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 200–209.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Coindep.delete_spanning_iff {S : Set α} (hD : M.Coindep D) :
    (M ＼ D).Spanning S ↔ M.Spanning S ∧ Disjoint S D := by
  simp only [spanning_iff_exists_isBase_subset', hD.delete_isBase_iff, and_assoc, delete_ground,
    subset_sdiff, and_congr_left_iff, and_imp]
  refine fun hSE hSD ↦ ⟨fun ⟨B, hB, hBD, hBS⟩ ↦ ⟨B, hB, hBS⟩, fun ⟨B, hB, hBS⟩ ↦ ⟨B, hB, ?_, hBS⟩⟩
  exact hSD.mono_left hBS

/-! ### Loops, circuits and closure -/

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Delete/Variant55d80f73706f0ac0a2301626c95d420c2d0d71e9a850f97a5527f6d4fcfb854e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Delete/Variant55d80f73706f0ac0a2301626c95d420c2d0d71e9a850f97a5527f6d4fcfb854e.lean#L200).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d690f7517aa541762634179246bb61611faf87d1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
