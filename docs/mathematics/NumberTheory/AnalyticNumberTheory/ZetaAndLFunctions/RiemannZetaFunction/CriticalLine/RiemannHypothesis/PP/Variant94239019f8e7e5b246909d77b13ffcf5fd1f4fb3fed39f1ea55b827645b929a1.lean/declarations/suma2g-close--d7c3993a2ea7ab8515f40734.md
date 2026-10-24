# sumA2g_close

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9e81bfa1-7e2c-38d5-4913-cdd9b164e9fc",
  "kind": "theorem",
  "lexical_name": "sumA2g_close",
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
  "slug": "suma2g-close--d7c3993a2ea7ab8515f40734",
  "source": {
    "blob": "1ebaf5a1dcde160d9b4e0e07a5b1f66ee129a495",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 358,
    "line": 346,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PP/Variant94239019f8e7e5b246909d77b13ffcf5fd1f4fb3fed39f1ea55b827645b929a1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d7c3993a2ea7ab8515f407345d5cea4f8192d9935663e293a3361bcfe7a1bc6f",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PP/Variant94239019f8e7e5b246909d77b13ffcf5fd1f4fb3fed39f1ea55b827645b929a1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9e81bfa1-7e2c-38d5-4913-cdd9b164e9fc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 346–358.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sumA2g_close (hcheb : Zeta23.ChebyshevMertens) :
    ∃ C : ℝ, 0 < C ∧ ∀ (L X : ℝ) (g : ℝ → ℝ), 8 ≤ L → X = Real.exp L →
      Differentiable ℝ g → Continuous (deriv g) → (∀ y : ℝ, |deriv g y| ≤ 2) →
      (∀ y : ℝ, L ≤ y → g y = 0) →
      |PrimeSide.sumA2g X g - ∫ y in (0:ℝ)..L, g y * y| ≤ C * L ^ 2 := by
  obtain ⟨C₀, hC₀⟩ := hcheb.cheb2a
  refine ⟨2 * |C₀| + 10, by positivity, fun L X g hL hX hgd hg'c hg'le hgsupp => ?_⟩
  exact abel_sum_close (c := fun n => (ArithmeticFunction.vonMangoldt n : ℝ) ^ 2 / n)
    (by simp) (by simp [ArithmeticFunction.vonMangoldt_apply_one]) hC₀ L X g hL hX hgd hg'c
    hg'le hgsupp

end ThmD
end Zeta23
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PP/Variant94239019f8e7e5b246909d77b13ffcf5fd1f4fb3fed39f1ea55b827645b929a1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PP/Variant94239019f8e7e5b246909d77b13ffcf5fd1f4fb3fed39f1ea55b827645b929a1.lean#L346).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1ebaf5a1dcde160d9b4e0e07a5b1f66ee129a495` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
