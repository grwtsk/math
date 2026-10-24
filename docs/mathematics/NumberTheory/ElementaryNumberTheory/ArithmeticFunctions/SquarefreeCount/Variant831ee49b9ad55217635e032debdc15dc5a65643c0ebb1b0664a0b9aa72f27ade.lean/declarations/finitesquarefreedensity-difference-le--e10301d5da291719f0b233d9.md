# finiteSquarefreeDensity_difference_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a2210758-cb7e-f4e4-3c1a-399ce7e227e0",
  "kind": "theorem",
  "lexical_name": "finiteSquarefreeDensity_difference_le",
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
  "slug": "finitesquarefreedensity-difference-le--e10301d5da291719f0b233d9",
  "source": {
    "blob": "031d29ed54e358d9392f47bf06066a4dbc3f4e91",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 312,
    "line": 281,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SquarefreeCount/Variant831ee49b9ad55217635e032debdc15dc5a65643c0ebb1b0664a0b9aa72f27ade.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e10301d5da291719f0b233d9f5fe9e200c41f14d3b9f8c5da444d7cac596ce60",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SquarefreeCount/Variant831ee49b9ad55217635e032debdc15dc5a65643c0ebb1b0664a0b9aa72f27ade.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a2210758-cb7e-f4e4-3c1a-399ce7e227e0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 281–312.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem finiteSquarefreeDensity_difference_le (h Y Z : ℕ) (hh : 1 ≤ h) (hYZ : Y ≤ Z) :
    |finiteSquarefreeDensity h Z - finiteSquarefreeDensity h Y| ≤
      ∑ d ∈ Ioc Y Z, 1 / (d : ℝ)^2 := by
  classical
  have hunion : Icc 1 Z = Icc 1 Y ∪ Ioc Y Z := by
    ext d
    simp only [mem_union, mem_Icc, mem_Ioc]
    omega
  have hdisj : Disjoint (Icc 1 Y) (Ioc Y Z) := by
    apply disjoint_left.mpr
    intro d hd1 hd2
    have h1 := (mem_Icc.mp hd1).2
    have h2 := (mem_Ioc.mp hd2).1
    omega
  rw [finiteSquarefreeDensity, finiteSquarefreeDensity, hunion, sum_union hdisj,
    mul_add, add_sub_cancel_left, abs_mul, abs_of_nonneg (coprimeDensity_nonneg h hh)]
  calc
    _ ≤ |∑ d ∈ Ioc Y Z, if Nat.Coprime d h then
        (ArithmeticFunction.moebius d : ℝ) / (d : ℝ)^2 else 0| :=
      mul_le_of_le_one_left (abs_nonneg _) (coprimeDensity_le_one h hh)
    _ ≤ ∑ d ∈ Ioc Y Z, |if Nat.Coprime d h then
        (ArithmeticFunction.moebius d : ℝ) / (d : ℝ)^2 else 0| := abs_sum_le_sum_abs _ _
    _ ≤ _ := by
      apply sum_le_sum
      intro d _
      by_cases hdh : Nat.Coprime d h
      · rw [if_pos hdh, abs_div, abs_of_nonneg (sq_nonneg (d : ℝ))]
        apply div_le_div_of_nonneg_right _ (sq_nonneg _)
        exact_mod_cast (ArithmeticFunction.abs_moebius_le_one (n := d))
      · rw [if_neg hdh, abs_zero]
        positivity

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SquarefreeCount/Variant831ee49b9ad55217635e032debdc15dc5a65643c0ebb1b0664a0b9aa72f27ade.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SquarefreeCount/Variant831ee49b9ad55217635e032debdc15dc5a65643c0ebb1b0664a0b9aa72f27ade.lean#L281).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `031d29ed54e358d9392f47bf06066a4dbc3f4e91` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
