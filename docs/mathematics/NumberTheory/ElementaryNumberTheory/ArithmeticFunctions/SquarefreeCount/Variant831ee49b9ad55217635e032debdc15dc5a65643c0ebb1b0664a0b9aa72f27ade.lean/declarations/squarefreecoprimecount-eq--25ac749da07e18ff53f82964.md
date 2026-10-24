# squarefreeCoprimeCount_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7403f3b7-8203-f520-709c-9b7a3d1f3502",
  "kind": "theorem",
  "lexical_name": "squarefreeCoprimeCount_eq",
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
  "slug": "squarefreecoprimecount-eq--25ac749da07e18ff53f82964",
  "source": {
    "blob": "031d29ed54e358d9392f47bf06066a4dbc3f4e91",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 206,
    "line": 177,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SquarefreeCount/Variant831ee49b9ad55217635e032debdc15dc5a65643c0ebb1b0664a0b9aa72f27ade.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:25ac749da07e18ff53f8296492e5b573d71a44aa724638a4e123e962fc0c15bd",
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

Occurrence: `result:7403f3b7-8203-f520-709c-9b7a3d1f3502`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 177–206.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem squarefreeCoprimeCount_eq (h j : ℕ) :
    squarefreeCoprimeCount h j =
      ∑ d ∈ Icc 1 (Nat.sqrt j),
        (ArithmeticFunction.moebius d : ℝ) *
          (if Nat.Coprime d h then (coprimeCount h (j / d^2) : ℝ) else 0) := by
  unfold squarefreeCoprimeCount
  have hpoint (g : ℕ) (hg : g ∈ Icc 1 j) :
      (ArithmeticFunction.moebius g : ℝ)^2 =
        ∑ d ∈ Icc 1 (Nat.sqrt j), if d^2 ∣ g then
          (ArithmeticFunction.moebius d : ℝ) else 0 :=
    moebius_square_eq_sum_Icc g j (mem_Icc.mp hg).1 (mem_Icc.mp hg).2
  calc
    _ = ∑ g ∈ Icc 1 j, (∑ d ∈ Icc 1 (Nat.sqrt j),
        if d^2 ∣ g then (ArithmeticFunction.moebius d : ℝ) else 0) *
          (if Nat.Coprime g h then 1 else 0) :=
      sum_congr rfl (fun g hg ↦ by rw [hpoint g hg])
    _ = ∑ d ∈ Icc 1 (Nat.sqrt j), ∑ g ∈ Icc 1 j,
        (if d^2 ∣ g then (ArithmeticFunction.moebius d : ℝ) else 0) *
          (if Nat.Coprime g h then 1 else 0) := by
      simp_rw [sum_mul]
      rw [sum_comm]
    _ = _ := by
      apply sum_congr rfl
      intro d hd
      rw [← coprime_multiples_sum h j d (mem_Icc.mp hd).1, mul_sum]
      apply sum_congr rfl
      intro g _
      by_cases hdg : d^2 ∣ g <;> simp [hdg]


```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SquarefreeCount/Variant831ee49b9ad55217635e032debdc15dc5a65643c0ebb1b0664a0b9aa72f27ade.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SquarefreeCount/Variant831ee49b9ad55217635e032debdc15dc5a65643c0ebb1b0664a0b9aa72f27ade.lean#L177).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `031d29ed54e358d9392f47bf06066a4dbc3f4e91` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
