# Adapted.isStoppingTime_crossing

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3779b2f5-de2b-c6e0-56e9-700488efd799",
  "kind": "theorem",
  "lexical_name": "Adapted.isStoppingTime_crossing",
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
  "slug": "adapted-isstoppingtime-crossing--f443f1b50700c60dec153dd4",
  "source": {
    "blob": "1d855d7a34126d0b80caf8ce38f3d19ed2df20d7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 332,
    "line": 314,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/Upcrossing/Varianta80277adfdf1602d781b47d9fe07488969ad53a778a89a6dc26eef783259f728.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f443f1b50700c60dec153dd44097661978d1048cb1f83920b22c327f4f1dadd1",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/Upcrossing/Varianta80277adfdf1602d781b47d9fe07488969ad53a778a89a6dc26eef783259f728.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3779b2f5-de2b-c6e0-56e9-700488efd799`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 314–332.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Adapted.isStoppingTime_crossing (hf : Adapted ℱ f) :
    IsStoppingTime ℱ (upperCrossingTime a b f N n) ∧
      IsStoppingTime ℱ (lowerCrossingTime a b f N n) := by
  induction n with
  | zero =>
    refine ⟨isStoppingTime_const _ 0, ?_⟩
    simp [hitting_isStoppingTime hf measurableSet_Iic]
  | succ k ih =>
    obtain ⟨_, ih₂⟩ := ih
    have : IsStoppingTime ℱ (upperCrossingTime a b f N (k + 1)) := by
      intro n
      simp_rw [upperCrossingTime_succ_eq]
      exact isStoppingTime_hitting_isStoppingTime ih₂ (fun _ => lowerCrossingTime_le)
        measurableSet_Ici hf _
    refine ⟨this, ?_⟩
    intro n
    exact isStoppingTime_hitting_isStoppingTime this (fun _ => upperCrossingTime_le)
      measurableSet_Iic hf _

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/Upcrossing/Varianta80277adfdf1602d781b47d9fe07488969ad53a778a89a6dc26eef783259f728.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/Upcrossing/Varianta80277adfdf1602d781b47d9fe07488969ad53a778a89a6dc26eef783259f728.lean#L314).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1d855d7a34126d0b80caf8ce38f3d19ed2df20d7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
