# coprime_multiples_sum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:53ca8c1b-6d02-539e-9ec3-949df3036726",
  "kind": "theorem",
  "lexical_name": "coprime_multiples_sum",
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
  "slug": "coprime-multiples-sum--8885fbac8cdd6cf5481d9e29",
  "source": {
    "blob": "031d29ed54e358d9392f47bf06066a4dbc3f4e91",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 176,
    "line": 147,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SquarefreeCount/Variant831ee49b9ad55217635e032debdc15dc5a65643c0ebb1b0664a0b9aa72f27ade.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8885fbac8cdd6cf5481d9e29edfe395f44eb22a3cfdce57a408c8b778884bcf1",
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

Occurrence: `result:53ca8c1b-6d02-539e-9ec3-949df3036726`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 147–176.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem coprime_multiples_sum (h j d : ℕ) (hd : 1 ≤ d) :
    (∑ g ∈ Icc 1 j, (if d^2 ∣ g then (1 : ℝ) else 0) *
      (if Nat.Coprime g h then 1 else 0)) =
      if Nat.Coprime d h then (coprimeCount h (j / d^2) : ℝ) else 0 := by
  classical
  by_cases hdh : Nat.Coprime d h
  · rw [if_pos hdh]
    have hsq : Nat.Coprime (d^2) h := hdh.pow_left 2
    have hcount := coprime_multiples_card h j (d^2) (by nlinarith) hsq
    have hs : (∑ g ∈ Icc 1 j, (if d^2 ∣ g then (1 : ℝ) else 0) *
        (if Nat.Coprime g h then 1 else 0)) =
        (((Icc 1 j).filter (fun g ↦ d^2 ∣ g ∧ Nat.Coprime g h)).card : ℝ) := by
      calc
        _ = ∑ g ∈ Icc 1 j, if d^2 ∣ g ∧ Nat.Coprime g h then (1 : ℝ) else 0 := by
          apply sum_congr rfl
          intro g _
          by_cases h1 : d^2 ∣ g <;> by_cases h2 : Nat.Coprime g h <;> simp [h1, h2]
        _ = _ := by simp only [← sum_filter, sum_const, nsmul_eq_mul, mul_one]
    rw [hs, hcount]
  · rw [if_neg hdh]
    apply sum_eq_zero
    intro g _
    by_cases hdg : d^2 ∣ g
    · have hgh : ¬Nat.Coprime g h := by
        intro hgh
        apply hdh
        exact hgh.of_dvd_left ((dvd_pow_self d (by decide : 2 ≠ 0)).trans hdg)
      simp [hgh]
    · simp [hdg]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SquarefreeCount/Variant831ee49b9ad55217635e032debdc15dc5a65643c0ebb1b0664a0b9aa72f27ade.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SquarefreeCount/Variant831ee49b9ad55217635e032debdc15dc5a65643c0ebb1b0664a0b9aa72f27ade.lean#L147).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `031d29ed54e358d9392f47bf06066a4dbc3f4e91` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
