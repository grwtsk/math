# logarithmic_budget

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:49add980-7bbb-614c-d10f-bc44000f49ea",
  "kind": "theorem",
  "lexical_name": "logarithmic_budget",
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
  "slug": "logarithmic-budget--cb88165a964ce7c911d9e217",
  "source": {
    "blob": "728e97ca9cdd31b64e83aa34c364577f81e4d104",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 336,
    "line": 313,
    "path": "GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyGlobalMinimalDiscriminant.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cb88165a964ce7c911d9e217df1e37cbeff7c1bdb1b83c96607d654240582b7e",
  "verification": {
    "reference": "docs/verification/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyGlobalMinimalDiscriminant.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:49add980-7bbb-614c-d10f-bc44000f49ea`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 313–336.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem logarithmic_budget (t : PrimitiveAdditiveTriple) :
    Real.log (minimalDiscriminant t : ℝ) + modelCorrectionCost t =
      Real.log 16 + 2 * Real.log (t.a * t.b * t.c : ℕ) := by
  have hD : (0 : ℝ) < (minimalDiscriminant t : ℝ) := by
    exact_mod_cast minimalDiscriminant_pos t
  have hP : (0 : ℝ) < (t.a * t.b * t.c : ℕ) := by exact_mod_cast t.product_pos
  have hs : (0 : ℝ) < (removedFactor t : ℝ) := by exact_mod_cast removedFactor_pos t
  have he : (removedFactor t : ℝ) * (minimalDiscriminant t : ℝ) =
      16 * (t.a * t.b * t.c : ℕ)^2 := by exact_mod_cast discriminant_balance t
  have hl := congrArg Real.log he
  rw [Real.log_mul (ne_of_gt hs) (ne_of_gt hD),
    Real.log_mul (by norm_num) (pow_ne_zero 2 (ne_of_gt hP)), Real.log_pow] at hl
  have hc : Real.log (removedFactor t : ℝ) = modelCorrectionCost t := by
    unfold modelCorrectionCost
    rw [correction_formula]
    by_cases hd : Descends t
    · simp only [removedFactor, if_pos hd, Nat.cast_ofNat, Int.cast_ofNat]
      rw [show (4096 : ℝ) = 2^12 by norm_num, Real.log_pow]
      norm_num
    · simp [removedFactor, hd]
  rw [hc] at hl
  simpa only [Nat.cast_ofNat, add_comm] using hl

end GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyGlobalMinimalDiscriminant
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyGlobalMinimalDiscriminant.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyGlobalMinimalDiscriminant.lean#L313).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `728e97ca9cdd31b64e83aa34c364577f81e4d104` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
