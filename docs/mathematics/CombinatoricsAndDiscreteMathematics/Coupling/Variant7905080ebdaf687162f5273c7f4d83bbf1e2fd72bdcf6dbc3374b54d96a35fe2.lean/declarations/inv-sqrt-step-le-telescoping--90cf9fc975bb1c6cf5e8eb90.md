# inv_sqrt_step_le_telescoping

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:63925167-2068-c5c0-1a7a-fea3a07e8aef",
  "kind": "theorem",
  "lexical_name": "inv_sqrt_step_le_telescoping",
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
  "slug": "inv-sqrt-step-le-telescoping--90cf9fc975bb1c6cf5e8eb90",
  "source": {
    "blob": "5a299685ac41e75d56f3163c9aeb93e987389058",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 195,
    "line": 163,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Coupling/Variant7905080ebdaf687162f5273c7f4d83bbf1e2fd72bdcf6dbc3374b54d96a35fe2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:90cf9fc975bb1c6cf5e8eb905348fa1ce1af3d4d9901c9b1b960ab46df79ccdd",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Coupling/Variant7905080ebdaf687162f5273c7f4d83bbf1e2fd72bdcf6dbc3374b54d96a35fe2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:63925167-2068-c5c0-1a7a-fea3a07e8aef`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 163–195.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem inv_sqrt_step_le_telescoping (s : Nat) :
    1 / Real.sqrt (s + 1 : ℝ) ≤
      2 * (Real.sqrt (s + 1 : ℝ) - Real.sqrt (s : ℝ)) := by
  have hs_nonneg : (0 : ℝ) ≤ s := by positivity
  have hs1_pos : (0 : ℝ) < s + 1 := by positivity
  have hs1_nonneg : (0 : ℝ) ≤ s + 1 := hs1_pos.le
  have hsqrt_pos : 0 < Real.sqrt (s + 1 : ℝ) := Real.sqrt_pos.2 hs1_pos
  have hsqrt_mono : Real.sqrt (s : ℝ) ≤ Real.sqrt (s + 1 : ℝ) := by
    exact Real.sqrt_le_sqrt (by norm_num)
  have hdiff_nonneg :
      0 ≤ Real.sqrt (s + 1 : ℝ) - Real.sqrt (s : ℝ) :=
    sub_nonneg.2 hsqrt_mono
  have hsquare : Real.sqrt (s : ℝ) ^ 2 = s :=
    Real.sq_sqrt hs_nonneg
  have hsquare1 : Real.sqrt (s + 1 : ℝ) ^ 2 = s + 1 :=
    Real.sq_sqrt hs1_nonneg
  have hproduct :
      (Real.sqrt (s + 1 : ℝ) - Real.sqrt (s : ℝ)) *
        (Real.sqrt (s + 1 : ℝ) + Real.sqrt (s : ℝ)) = 1 := by
    nlinarith
  rw [div_le_iff₀ hsqrt_pos]
  calc
    1 =
        (Real.sqrt (s + 1 : ℝ) - Real.sqrt (s : ℝ)) *
          (Real.sqrt (s + 1 : ℝ) + Real.sqrt (s : ℝ)) := hproduct.symm
    _ ≤ (Real.sqrt (s + 1 : ℝ) - Real.sqrt (s : ℝ)) *
          (2 * Real.sqrt (s + 1 : ℝ)) := by
      apply mul_le_mul_of_nonneg_left _ hdiff_nonneg
      linarith
    _ = 2 * (Real.sqrt (s + 1 : ℝ) - Real.sqrt (s : ℝ)) *
          Real.sqrt (s + 1 : ℝ) := by ring

/-- The exact finite cumulative inverse-square-root bound. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Coupling/Variant7905080ebdaf687162f5273c7f4d83bbf1e2fd72bdcf6dbc3374b54d96a35fe2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Coupling/Variant7905080ebdaf687162f5273c7f4d83bbf1e2fd72bdcf6dbc3374b54d96a35fe2.lean#L163).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5a299685ac41e75d56f3163c9aeb93e987389058` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
