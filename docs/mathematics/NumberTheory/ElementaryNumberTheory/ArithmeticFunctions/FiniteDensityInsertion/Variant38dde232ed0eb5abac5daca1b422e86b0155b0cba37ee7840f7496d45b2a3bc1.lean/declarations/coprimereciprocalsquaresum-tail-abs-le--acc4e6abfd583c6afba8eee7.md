# coprimeReciprocalSquareSum_tail_abs_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4b7ebab4-3624-c1a9-ef5a-e4e8f88e1ae9",
  "kind": "theorem",
  "lexical_name": "coprimeReciprocalSquareSum_tail_abs_le",
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
  "slug": "coprimereciprocalsquaresum-tail-abs-le--acc4e6abfd583c6afba8eee7",
  "source": {
    "blob": "251abac54e2e3e1f46d1c8aeba505e573b24fe69",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 137,
    "line": 119,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/FiniteDensityInsertion/Variant38dde232ed0eb5abac5daca1b422e86b0155b0cba37ee7840f7496d45b2a3bc1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:acc4e6abfd583c6afba8eee781827ba2d3971b345d822f66532eabf983f1188a",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/FiniteDensityInsertion/Variant38dde232ed0eb5abac5daca1b422e86b0155b0cba37ee7840f7496d45b2a3bc1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4b7ebab4-3624-c1a9-ef5a-e4e8f88e1ae9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 119–137.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem coprimeReciprocalSquareSum_tail_abs_le (h Y Z : ℕ) (hY : 1 ≤ Y)
    (hYZ : Y ≤ Z) :
    |∑ d ∈ Ioc Y Z, if Nat.Coprime d h then
      (ArithmeticFunction.moebius d : ℝ) / (d : ℝ)^2 else 0| ≤ 1 / (Y : ℝ) := by
  calc
    _ ≤ ∑ d ∈ Ioc Y Z, |if Nat.Coprime d h then
        (ArithmeticFunction.moebius d : ℝ) / (d : ℝ)^2 else 0| :=
      abs_sum_le_sum_abs _ _
    _ ≤ ∑ d ∈ Ioc Y Z, 1 / (d : ℝ)^2 := by
      apply sum_le_sum
      intro d _
      by_cases hdh : Nat.Coprime d h
      · rw [if_pos hdh, abs_div, abs_of_nonneg (sq_nonneg (d : ℝ))]
        apply div_le_div_of_nonneg_right _ (sq_nonneg _)
        exact_mod_cast (ArithmeticFunction.abs_moebius_le_one (n := d))
      · rw [if_neg hdh, abs_zero]
        positivity
    _ ≤ _ := ReciprocalSquareTail.reciprocal_square_tail_le Y Z hY hYZ

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/FiniteDensityInsertion/Variant38dde232ed0eb5abac5daca1b422e86b0155b0cba37ee7840f7496d45b2a3bc1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/FiniteDensityInsertion/Variant38dde232ed0eb5abac5daca1b422e86b0155b0cba37ee7840f7496d45b2a3bc1.lean#L119).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `251abac54e2e3e1f46d1c8aeba505e573b24fe69` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
