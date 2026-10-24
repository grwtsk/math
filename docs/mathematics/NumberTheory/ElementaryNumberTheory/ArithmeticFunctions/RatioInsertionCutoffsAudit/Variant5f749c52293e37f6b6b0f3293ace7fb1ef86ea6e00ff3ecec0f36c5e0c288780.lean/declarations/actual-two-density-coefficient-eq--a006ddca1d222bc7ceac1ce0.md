# actual_two_density_coefficient_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5e1c3dd16333d4f197e16a5ca35b0b3d6deb1a85",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 148,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/5f/5f749c52293e37f6b6b0f3293ace7fb1ef86ea6e00ff3ecec0f36c5e0c288780.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2ebbd8d7-70d1-f025-36ae-d4618b006395",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:dd599d32-8b4f-a37f-8376-f80fa569a9aa",
  "kind": "theorem",
  "lexical_name": "actual_two_density_coefficient_eq",
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
  "slug": "actual-two-density-coefficient-eq--a006ddca1d222bc7ceac1ce0",
  "source": {
    "blob": "5e1c3dd16333d4f197e16a5ca35b0b3d6deb1a85",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 170,
    "line": 148,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/RatioInsertionCutoffsAudit/Variant5f749c52293e37f6b6b0f3293ace7fb1ef86ea6e00ff3ecec0f36c5e0c288780.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a006ddca1d222bc7ceac1ce0e42981abce1e22dcf352da196f7613ce9071759d",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/RatioInsertionCutoffsAudit/Variant5f749c52293e37f6b6b0f3293ace7fb1ef86ea6e00ff3ecec0f36c5e0c288780.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dd599d32-8b4f-a37f-8376-f80fa569a9aa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 148–170.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_two_density_coefficient_eq (h : ℕ) (a b c : ℝ)
    (hh : 1 ≤ h) (hodd : Nat.Coprime 2 h) :
    (ArithmeticFunction.moebius h : ℝ) * a / Real.sqrt (h:ℝ) +
      (ArithmeticFunction.moebius (2*h) : ℝ) * b / Real.sqrt ((2*h:ℕ):ℝ) +
      (ArithmeticFunction.moebius (2*h) : ℝ) * c / Real.sqrt ((2*h:ℕ):ℝ) =
      ((ArithmeticFunction.moebius h : ℝ) / Real.sqrt (h:ℝ)) *
        (a - (Real.sqrt 2/2)*(b+c)) := by
  have hμ : (ArithmeticFunction.moebius (2*h) : ℝ) = -(ArithmeticFunction.moebius h : ℝ) := by
    rw [TwoInsertionBoundary.moebius_two_mul, if_pos hodd.symm]
  have hh0 : (0:ℝ) < h := by exact_mod_cast (show 0<h by omega)
  have hs0 : Real.sqrt (h:ℝ) ≠ 0 := (Real.sqrt_pos.mpr hh0).ne'
  have ht0 : Real.sqrt (2:ℝ) ≠ 0 := (Real.sqrt_pos.mpr (by norm_num : (0:ℝ)<2)).ne'
  have hs := Real.sq_sqrt (by norm_num : (0:ℝ)≤2)
  have hrecip : 1/Real.sqrt ((2*h:ℕ):ℝ) = Real.sqrt 2/(2*Real.sqrt (h:ℝ)) := by
    push_cast
    rw [Real.sqrt_mul (by norm_num : (0:ℝ)≤2)]
    field_simp
    nlinarith
  rw [hμ]
  simp only [div_eq_mul_inv, one_mul, mul_inv_rev] at hrecip ⊢
  simp only [hrecip]
  ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/RatioInsertionCutoffsAudit/Variant5f749c52293e37f6b6b0f3293ace7fb1ef86ea6e00ff3ecec0f36c5e0c288780.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/RatioInsertionCutoffsAudit/Variant5f749c52293e37f6b6b0f3293ace7fb1ef86ea6e00ff3ecec0f36c5e0c288780.lean#L148).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5e1c3dd16333d4f197e16a5ca35b0b3d6deb1a85` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
