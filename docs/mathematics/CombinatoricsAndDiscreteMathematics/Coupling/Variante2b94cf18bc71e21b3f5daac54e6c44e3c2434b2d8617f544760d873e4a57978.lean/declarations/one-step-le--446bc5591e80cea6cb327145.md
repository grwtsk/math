# one_step_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6e9d33b7d6235709ae778962d5cfc20ee8167f6b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 292,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e2/e2b94cf18bc71e21b3f5daac54e6c44e3c2434b2d8617f544760d873e4a57978.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:64619d21-ca49-8558-94da-20b65802b006",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9e207207-3136-4b20-3186-5387ee232d17",
  "kind": "theorem",
  "lexical_name": "one_step_le",
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
  "slug": "one-step-le--446bc5591e80cea6cb327145",
  "source": {
    "blob": "6e9d33b7d6235709ae778962d5cfc20ee8167f6b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 345,
    "line": 292,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Coupling/Variante2b94cf18bc71e21b3f5daac54e6c44e3c2434b2d8617f544760d873e4a57978.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:446bc5591e80cea6cb3271457696f2cfc62c5bcb6ce1e45a38249e1ca4e83c16",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Coupling/Variante2b94cf18bc71e21b3f5daac54e6c44e3c2434b2d8617f544760d873e4a57978.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9e207207-3136-4b20-3186-5387ee232d17`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 292–345.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem one_step_le
    (trajectory : ProjectedGradientTrajectory State)
    {s : Nat} (within : s < trajectory.horizon) :
    dist (trajectory.state (s + 1)) (trajectory.state s) ≤
      trajectory.gradientBound * trajectory.initialStep /
        Real.sqrt (s + 1 : ℝ) := by
  have hsqrt_nonneg : 0 ≤ Real.sqrt (s + 1 : ℝ) := Real.sqrt_nonneg _
  have hsqrt_pos : 0 < Real.sqrt (s + 1 : ℝ) := by positivity
  have hstep_nonneg :
      0 ≤ trajectory.initialStep / Real.sqrt (s + 1 : ℝ) :=
    div_nonneg trajectory.initialStep_nonnegative hsqrt_nonneg
  rw [trajectory.update s within]
  have hadmissible :=
    trajectory.state_admissible s (Nat.le_of_lt within)
  calc
    dist (trajectory.project
        (trajectory.state s -
          (trajectory.initialStep / Real.sqrt (s + 1 : ℝ)) •
            trajectory.gradient s))
        (trajectory.state s)
        = dist (trajectory.project
            (trajectory.state s -
              (trajectory.initialStep / Real.sqrt (s + 1 : ℝ)) •
                trajectory.gradient s))
            (trajectory.project (trajectory.state s)) := by
          rw [hadmissible]
    _
        ≤ dist
          (trajectory.state s -
            (trajectory.initialStep / Real.sqrt (s + 1 : ℝ)) •
              trajectory.gradient s)
          (trajectory.state s) :=
      trajectory.project_nonexpansive _ _
    _ = (trajectory.initialStep / Real.sqrt (s + 1 : ℝ)) *
          ‖trajectory.gradient s‖ := by
      rw [dist_eq_norm]
      have :
          trajectory.state s -
              (trajectory.initialStep / Real.sqrt (s + 1 : ℝ)) •
                trajectory.gradient s -
            trajectory.state s =
          -((trajectory.initialStep / Real.sqrt (s + 1 : ℝ)) •
            trajectory.gradient s) := by abel
      rw [this, norm_neg, norm_smul, Real.norm_eq_abs,
        abs_of_nonneg hstep_nonneg]
    _ ≤ (trajectory.initialStep / Real.sqrt (s + 1 : ℝ)) *
          trajectory.gradientBound := by
      exact mul_le_mul_of_nonneg_left
        (trajectory.gradient_norm_le s within) hstep_nonneg
    _ = trajectory.gradientBound * trajectory.initialStep /
          Real.sqrt (s + 1 : ℝ) := by
      field_simp

/-- Telescoping the one-step estimates yields the cumulative scheduled bound. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Coupling/Variante2b94cf18bc71e21b3f5daac54e6c44e3c2434b2d8617f544760d873e4a57978.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Coupling/Variante2b94cf18bc71e21b3f5daac54e6c44e3c2434b2d8617f544760d873e4a57978.lean#L292).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6e9d33b7d6235709ae778962d5cfc20ee8167f6b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
