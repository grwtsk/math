# upcrossings_lt_top_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6f91b541-a45d-17c6-4c40-f194c49908ca",
  "kind": "theorem",
  "lexical_name": "upcrossings_lt_top_iff",
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
  "slug": "upcrossings-lt-top-iff--98af4580ef83c039b02444b5",
  "source": {
    "blob": "5615b3cb71bcf38481e47a143a068ecc1cc27231",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 806,
    "line": 789,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/Upcrossing/Variantaed4b7e872ff957900f3b31c0fc6a1ad89e76c41d932026e1310cdd11db3d102.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:98af4580ef83c039b02444b50f2a35bc1311942a2a7afa2aafa639dec1bca490",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/Upcrossing/Variantaed4b7e872ff957900f3b31c0fc6a1ad89e76c41d932026e1310cdd11db3d102.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6f91b541-a45d-17c6-4c40-f194c49908ca`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 789–806.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem upcrossings_lt_top_iff :
    upcrossings a b f ω < ∞ ↔ ∃ k, ∀ N, upcrossingsBefore a b f N ω ≤ k := by
  have : upcrossings a b f ω < ∞ ↔ ∃ k : ℝ≥0, upcrossings a b f ω ≤ k := by
    constructor
    · intro h
      lift upcrossings a b f ω to ℝ≥0 using h.ne with r hr
      exact ⟨r, le_rfl⟩
    · rintro ⟨k, hk⟩
      exact lt_of_le_of_lt hk ENNReal.coe_lt_top
  simp_rw [this, upcrossings, iSup_le_iff]
  constructor <;> rintro ⟨k, hk⟩
  · obtain ⟨m, hm⟩ := exists_nat_ge k
    refine ⟨m, fun N => Nat.cast_le.1 ((hk N).trans ?_)⟩
    rwa [← ENNReal.coe_natCast, ENNReal.coe_le_coe]
  · refine ⟨k, fun N => ?_⟩
    simp only [ENNReal.coe_natCast, Nat.cast_le, hk N]

/-- A variant of Doob's upcrossing estimate obtained by taking the supremum on both sides. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/Upcrossing/Variantaed4b7e872ff957900f3b31c0fc6a1ad89e76c41d932026e1310cdd11db3d102.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/Upcrossing/Variantaed4b7e872ff957900f3b31c0fc6a1ad89e76c41d932026e1310cdd11db3d102.lean#L789).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5615b3cb71bcf38481e47a143a068ecc1cc27231` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
