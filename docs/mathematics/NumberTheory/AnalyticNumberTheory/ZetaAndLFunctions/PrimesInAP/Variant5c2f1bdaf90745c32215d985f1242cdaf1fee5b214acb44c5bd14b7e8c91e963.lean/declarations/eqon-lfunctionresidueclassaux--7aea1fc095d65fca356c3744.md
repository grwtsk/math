# eqOn_LFunctionResidueClassAux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5ca7fbf0-1185-2095-0e1e-2028d7db6a2e",
  "kind": "lemma",
  "lexical_name": "eqOn_LFunctionResidueClassAux",
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
  "slug": "eqon-lfunctionresidueclassaux--7aea1fc095d65fca356c3744",
  "source": {
    "blob": "5e35a5a8dcca8824941af102c2b0fdabd6abecb5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 379,
    "line": 356,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/PrimesInAP/Variant5c2f1bdaf90745c32215d985f1242cdaf1fee5b214acb44c5bd14b7e8c91e963.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7aea1fc095d65fca356c3744b190daa2ac03d2cacc4f49c0263f4b5d50cda07f",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/PrimesInAP/Variant5c2f1bdaf90745c32215d985f1242cdaf1fee5b214acb44c5bd14b7e8c91e963.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5ca7fbf0-1185-2095-0e1e-2028d7db6a2e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 356–379.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma eqOn_LFunctionResidueClassAux (ha : IsUnit a) :
    Set.EqOn (LFunctionResidueClassAux a)
      (fun s ↦ L ↗(residueClass a) s - (q.totient : ℂ)⁻¹ / (s - 1))
      {s | 1 < s.re} := by
  intro s hs
  replace hs := Set.mem_setOf.mp hs
  simp only [LSeries_residueClass_eq ha hs, LFunctionResidueClassAux]
  rw [neg_div, ← neg_add', mul_neg, ← neg_mul, div_eq_mul_one_div (q.totient : ℂ)⁻¹,
    sub_eq_add_neg, ← neg_mul, ← mul_add]
  congrm (_ * ?_)
  -- this should be easier, but `IsUnit.inv ha` does not work here
  have ha' : IsUnit a⁻¹ := isUnit_of_dvd_one ⟨a, (ZMod.inv_mul_of_unit a ha).symm⟩
  classical -- for `Fintype.sum_eq_add_sum_compl`
  rw [Fintype.sum_eq_add_sum_compl 1, MulChar.one_apply ha', one_mul, add_right_comm]
  simp only [mul_div_assoc]
  congrm (?_ + _)
  have hs₁ : s ≠ 1 := fun h ↦ ((h ▸ hs).trans_eq one_re).false
  rw [deriv_LFunctionTrivChar₁_apply_of_ne_one _ hs₁, LFunctionTrivChar₁,
    Function.update_of_ne hs₁, LFunctionTrivChar, add_div,
    mul_div_mul_left _ _ (sub_ne_zero_of_ne hs₁)]
  conv_lhs => enter [2, 1]; rw [← mul_one (LFunction ..)]
  rw [mul_comm _ 1, mul_div_mul_right _ _ <| LFunction_ne_zero_of_one_le_re 1 (.inr hs₁) hs.le]

/-- The auxiliary function takes real values for real arguments `x > 1`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/PrimesInAP/Variant5c2f1bdaf90745c32215d985f1242cdaf1fee5b214acb44c5bd14b7e8c91e963.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/PrimesInAP/Variant5c2f1bdaf90745c32215d985f1242cdaf1fee5b214acb44c5bd14b7e8c91e963.lean#L356).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5e35a5a8dcca8824941af102c2b0fdabd6abecb5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
