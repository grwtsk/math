# twistedPsiCriticalBound_iff_twistedThetaCriticalBound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9c927e6b52b60c2980b6f6bf87b7317fa7e1bb27",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 186,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/81/811c1598035c198b954e50fbbe3f88b467c9fb4d4c1c22226a37646b18319c60.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:93cc538b-15da-4911-315f-0e5651b0349a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:76b46021-8582-7809-72ef-406b54e01289",
  "kind": "theorem",
  "lexical_name": "twistedPsiCriticalBound_iff_twistedThetaCriticalBound",
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
  "slug": "twistedpsicriticalbound-iff-twistedthetacriticalbound--40d773d545ea775efb353b5c",
  "source": {
    "blob": "9c927e6b52b60c2980b6f6bf87b7317fa7e1bb27",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 234,
    "line": 186,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ConductorThreeCriticalPredicates/Variant811c1598035c198b954e50fbbe3f88b467c9fb4d4c1c22226a37646b18319c60.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:40d773d545ea775efb353b5c98178b3aaa4d29a3d7974e0d3198a6bd17e1f03e",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ConductorThreeCriticalPredicates/Variant811c1598035c198b954e50fbbe3f88b467c9fb4d4c1c22226a37646b18319c60.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:76b46021-8582-7809-72ef-406b54e01289`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 186–234.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem twistedPsiCriticalBound_iff_twistedThetaCriticalBound :
    TwistedPsiCriticalBound ↔ TwistedThetaCriticalBound := by
  constructor
  · rintro ⟨C, hC, x₀, hx₀, hPsi⟩
    refine ⟨C + 2, by linarith, max x₀ 3, by omega, ?_⟩
    intro x hx
    have hx₀x : x₀ ≤ x := le_trans (le_max_left _ _) hx
    have hx3 : 3 ≤ x := le_trans (le_max_right _ _) hx
    have hMain := hPsi x hx₀x
    have hError := conductorThreePsi_sub_theta_abs_le_two_criticalRate hx3
    have hIdentity :
        conductorThreeTheta x =
          conductorThreePsi x -
            (conductorThreePsi x - conductorThreeTheta x) := by ring
    rw [hIdentity]
    calc
      |conductorThreePsi x -
          (conductorThreePsi x - conductorThreeTheta x)| ≤
          |conductorThreePsi x| +
            |conductorThreePsi x - conductorThreeTheta x| :=
        abs_sub _ _
      _ ≤ C * twistedPsiCriticalRate x +
          2 * twistedPsiCriticalRate x := add_le_add hMain hError
      _ = (C + 2) * twistedPsiCriticalRate x := by ring
  · rintro ⟨C, hC, x₀, hx₀, hTheta⟩
    refine ⟨C + 2, by linarith, max x₀ 3, by omega, ?_⟩
    intro x hx
    have hx₀x : x₀ ≤ x := le_trans (le_max_left _ _) hx
    have hx3 : 3 ≤ x := le_trans (le_max_right _ _) hx
    have hMain := hTheta x hx₀x
    have hError := conductorThreePsi_sub_theta_abs_le_two_criticalRate hx3
    have hIdentity :
        conductorThreePsi x =
          conductorThreeTheta x +
            (conductorThreePsi x - conductorThreeTheta x) := by ring
    rw [hIdentity]
    calc
      |conductorThreeTheta x +
          (conductorThreePsi x - conductorThreeTheta x)| ≤
          |conductorThreeTheta x| +
            |conductorThreePsi x - conductorThreeTheta x| :=
        abs_add_le _ _
      _ ≤ C * twistedPsiCriticalRate x +
          2 * twistedPsiCriticalRate x := add_le_add hMain hError
      _ = (C + 2) * twistedPsiCriticalRate x := by ring

end

end Surface.Core.ConductorThreeCriticalPredicates
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ConductorThreeCriticalPredicates/Variant811c1598035c198b954e50fbbe3f88b467c9fb4d4c1c22226a37646b18319c60.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ConductorThreeCriticalPredicates/Variant811c1598035c198b954e50fbbe3f88b467c9fb4d4c1c22226a37646b18319c60.lean#L186).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9c927e6b52b60c2980b6f6bf87b7317fa7e1bb27` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
