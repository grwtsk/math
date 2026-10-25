# conductorThreePsi_sub_theta_abs_le_two_criticalRate

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
      "line": 160,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/81/811c1598035c198b954e50fbbe3f88b467c9fb4d4c1c22226a37646b18319c60.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9dba3915-a83c-6767-6a34-4a7f094d4ca0",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:cdf85244-3648-49c9-8a61-f9363eaa2ee1",
  "kind": "theorem",
  "lexical_name": "conductorThreePsi_sub_theta_abs_le_two_criticalRate",
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
  "slug": "conductorthreepsi-sub-theta-abs-le-two-criticalrate--971590e755b13986b5e6aeba",
  "source": {
    "blob": "9c927e6b52b60c2980b6f6bf87b7317fa7e1bb27",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 185,
    "line": 160,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ConductorThreeCriticalPredicates/Variant811c1598035c198b954e50fbbe3f88b467c9fb4d4c1c22226a37646b18319c60.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:971590e755b13986b5e6aeba22e492ec4a12274e04e94ed087b4b5224cf8df73",
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

Occurrence: `result:cdf85244-3648-49c9-8a61-f9363eaa2ee1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 160–185.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem conductorThreePsi_sub_theta_abs_le_two_criticalRate
    {x : ℕ} (hx : 3 ≤ x) :
    |conductorThreePsi x - conductorThreeTheta x| ≤
      2 * twistedPsiCriticalRate x := by
  have hBase := conductorThreePsi_sub_theta_abs_le_sqrt_mul_log
    (x := x) (by omega)
  have hlog : 1 ≤ Real.log (x : ℝ) := by
    rw [← Real.exp_le_exp, Real.exp_log (by positivity)]
    exact le_trans Real.exp_one_lt_three.le (by exact_mod_cast hx)
  have hsqrt : 0 ≤ Real.sqrt (x : ℝ) := Real.sqrt_nonneg _
  have hscale :
      Real.sqrt (x : ℝ) * Real.log (x : ℝ) ≤
        Real.sqrt (x : ℝ) * Real.log (x : ℝ) ^ 2 := by
    gcongr
    nlinarith
  exact hBase.trans <| by
    calc
      2 * Real.sqrt (x : ℝ) * Real.log (x : ℝ) =
          2 * (Real.sqrt (x : ℝ) * Real.log (x : ℝ)) := by ring
      _ ≤ 2 * (Real.sqrt (x : ℝ) * Real.log (x : ℝ) ^ 2) :=
        mul_le_mul_of_nonneg_left hscale (by norm_num)
      _ = 2 * twistedPsiCriticalRate x := by
        rfl

/-- Removing higher prime powers loses no critical information. -/
@[surface_novel, surface_published]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ConductorThreeCriticalPredicates/Variant811c1598035c198b954e50fbbe3f88b467c9fb4d4c1c22226a37646b18319c60.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ConductorThreeCriticalPredicates/Variant811c1598035c198b954e50fbbe3f88b467c9fb4d4c1c22226a37646b18319c60.lean#L160).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9c927e6b52b60c2980b6f6bf87b7317fa7e1bb27` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
