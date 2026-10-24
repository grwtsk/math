# signedErrorWeight_le_of_inverse_budget

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7dc39745-28fe-dfcd-2983-88c034d33e51",
  "kind": "theorem",
  "lexical_name": "signedErrorWeight_le_of_inverse_budget",
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
  "slug": "signederrorweight-le-of-inverse-budget--3701efe4b26d10e8e4bf0284",
  "source": {
    "blob": "8c015b841af27bb05e65f9b8217ed77c092c5ca4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 270,
    "line": 249,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceKapitzaSquareShell/Variant070e2a9f96dee4388d1a7b27503ef3675cb14c912380db7d781fc294d4250ad3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3701efe4b26d10e8e4bf0284e7ab8a58dab4cb2e96487cf9e5d78fee12640877",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceKapitzaSquareShell/Variant070e2a9f96dee4388d1a7b27503ef3675cb14c912380db7d781fc294d4250ad3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7dc39745-28fe-dfcd-2983-88c034d33e51`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 249–270.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem signedErrorWeight_le_of_inverse_budget (N : ℕ)
    (hInv : (∑ n ∈ Finset.Icc 2 N, 1 / (n : ℝ) ^ (3 / 2 : ℝ)) ≤ 2) :
    (∑ n ∈ Finset.Icc 2 N,
      |ArithmeticFunction.vonMangoldt n - 1| / (n : ℝ) ^ (3 / 2 : ℝ)) ≤
      (quadraticConstant + 6) / 2 := by
  have hq := quadraticImpulse_sum_le N
  have hw := Finset.sum_le_sum (s := Finset.Icc 2 N) (fun n _ ↦
    div_le_div_of_nonneg_right (mangoldt_sub_one_abs_le_quad n)
      (Real.rpow_nonneg (Nat.cast_nonneg _) _))
  have heq : (∑ n ∈ Finset.Icc 2 N,
      ((ArithmeticFunction.vonMangoldt n ^ 2 + 3) / 2) / (n : ℝ) ^ (3 / 2 : ℝ)) =
      ((∑ n ∈ Finset.Icc 2 N, quadraticImpulse n) +
        3 * ∑ n ∈ Finset.Icc 2 N, 1 / (n : ℝ) ^ (3 / 2 : ℝ)) / 2 := by
    rw [← Finset.sum_div, ← Finset.mul_sum, ← Finset.sum_add_distrib]
    apply Finset.sum_congr rfl
    intro n _
    unfold quadraticImpulse
    ring
  rw [heq] at hw
  linarith

/-- A finite Taylor cap; the only explicit premise is a generic analytic sum bound. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceKapitzaSquareShell/Variant070e2a9f96dee4388d1a7b27503ef3675cb14c912380db7d781fc294d4250ad3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceKapitzaSquareShell/Variant070e2a9f96dee4388d1a7b27503ef3675cb14c912380db7d781fc294d4250ad3.lean#L249).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8c015b841af27bb05e65f9b8217ed77c092c5ca4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
