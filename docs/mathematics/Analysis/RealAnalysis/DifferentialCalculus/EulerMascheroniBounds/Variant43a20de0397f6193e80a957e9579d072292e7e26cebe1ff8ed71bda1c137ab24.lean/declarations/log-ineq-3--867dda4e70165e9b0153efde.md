# log_ineq_3

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "67adb0c44c59889ed996a6114ab1cd9d4b74928f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 160,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/43/43a20de0397f6193e80a957e9579d072292e7e26cebe1ff8ed71bda1c137ab24.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9c289a1f-d61b-1be0-b465-2befb2d3dc67",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:64fe0751-6375-53be-af54-811c11bea4b0",
  "kind": "lemma",
  "lexical_name": "log_ineq_3",
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
  "slug": "log-ineq-3--867dda4e70165e9b0153efde",
  "source": {
    "blob": "67adb0c44c59889ed996a6114ab1cd9d4b74928f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 184,
    "line": 160,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/EulerMascheroniBounds/Variant43a20de0397f6193e80a957e9579d072292e7e26cebe1ff8ed71bda1c137ab24.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:867dda4e70165e9b0153efdea378b56a130d9e62bce01697a4ed560490aadce9",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/EulerMascheroniBounds/Variant43a20de0397f6193e80a957e9579d072292e7e26cebe1ff8ed71bda1c137ab24.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:64fe0751-6375-53be-af54-811c11bea4b0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 160–184.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma log_ineq_3 (u : ℝ) (hu : 0 < u) :
    12 * u + 18 * u ^ 2 + 4 * u ^ 3 - u ^ 4 <
    12 * (1 + u) ^ 2 * Real.log (1 + u) := by
  have hg_deriv_pos : ∀ u > 0,
      0 < 12 * ((1 + u) * Real.log (1 + u) - u - u ^ 2 / 2 + u ^ 3 / 6) :=
    fun u hu => mul_pos (by norm_num) (by linarith [log_ineq_2 u hu])
  obtain ⟨c, hc⟩ : ∃ c ∈ Set.Ioo 0 u, deriv (fun u => 12 * (1 + u) ^ 2 * Real.log (1 + u) -
      12 * u - 18 * u ^ 2 - 4 * u ^ 3 + u ^ 4) c =
      (12 * (1 + u) ^ 2 * Real.log (1 + u) - 12 * u - 18 * u ^ 2 - 4 * u ^ 3 + u ^ 4 -
      (12 * (1 + 0) ^ 2 * Real.log (1 + 0) - 12 * 0 - 18 * 0 ^ 2 - 4 * 0 ^ 3 + 0 ^ 4)) /
      (u - 0) := by
    apply_rules [exists_deriv_eq_slope] <;> fun_prop (disch := grind)
  norm_num [add_comm, mul_comm] at *
  have : c + 1 ≠ 0 := by linarith
  rw [deriv_fun_add, deriv_fun_sub, deriv_fun_sub, deriv_fun_sub, deriv_fun_mul, deriv.log _ (by linarith)] at hc
  · simp only [differentiableAt_fun_id, deriv_fun_pow, Nat.cast_ofNat, Nat.add_one_sub_one,
      deriv_id'', mul_one, differentiableAt_add_const_iff, DifferentiableAt.fun_pow,
      differentiableAt_const, deriv_fun_mul, pow_one, deriv_fun_add,
      deriv_const', add_zero, mul_zero, one_div, one_mul] at hc
    rw [eq_div_iff (by linarith)] at hc
    nlinarith [hg_deriv_pos c hc.1.1,
        mul_inv_cancel_left₀ (by linarith : (c + 1) ≠ 0) (12 * (c + 1))]
  all_goals fun_prop (disch := assumption)

/-- `γ₂` is strictly decreasing for `n ≥ 1`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/EulerMascheroniBounds/Variant43a20de0397f6193e80a957e9579d072292e7e26cebe1ff8ed71bda1c137ab24.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/EulerMascheroniBounds/Variant43a20de0397f6193e80a957e9579d072292e7e26cebe1ff8ed71bda1c137ab24.lean#L160).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `67adb0c44c59889ed996a6114ab1cd9d4b74928f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
