# actual_good_dyadic_horizontal_sequence

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:199b8267-ac5c-0d8e-b593-aab0faa77ded",
  "kind": "theorem",
  "lexical_name": "actual_good_dyadic_horizontal_sequence",
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
  "slug": "actual-good-dyadic-horizontal-sequence--35f658757df50ca6a9b46d17",
  "source": {
    "blob": "64ebf675692d28b7732d080273b07719b850e64f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 243,
    "line": 213,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/4d08505fc004SourceActualSignedDyadicSummableError/Variant4cc7fcd5d49accc1d1d290eea523e8999a6eb1c902b2be2e91ede31631d8d7f6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:35f658757df50ca6a9b46d17cdd87ac61008f08e5c6b16149753826eb87a373c",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/4d08505fc004SourceActualSignedDyadicSummableError/Variant4cc7fcd5d49accc1d1d290eea523e8999a6eb1c902b2be2e91ede31631d8d7f6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:199b8267-ac5c-0d8e-b593-aab0faa77ded`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 213–243.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_good_dyadic_horizontal_sequence :
    ∃ Cg K : ℝ, 0 < Cg ∧ 0 < K ∧ ∀ A c : ℝ,
      1 ≤ A → 1 < c → c ≤ 3 / 2 → ∃ R : ℕ → ℝ,
      (∀ k, (actualDyadicGoodHeightIndex A c k : ℝ) ≤ R k ∧
        R k ≤ (actualDyadicGoodHeightIndex A c k : ℝ) + 1) ∧
      (∀ k, 2 * R k ≤ R (k + 1)) ∧
      (∀ k s, (s.im = R k ∨ s.im = -R k) → 1 / 2 ≤ s.re → s.re ≤ 2 →
        riemannZeta s ≠ 0 ∧ ‖logDeriv riemannZeta s‖ ≤
          Cg * (Real.log ((actualDyadicGoodHeightIndex A c k : ℝ) + 3)) ^ 2) ∧
      (∀ k, ‖actualFiniteHorizontalCorrection A c (R k)‖ ≤
        actualDyadicHorizontalCoefficient K c / A ^ 7 *
          Real.exp (-((2 * c - 1) * A) / 5) * (1 / 16 : ℝ) ^ k) := by
  obtain ⟨Cg, hCg, hg⟩ := good_heights_at
  obtain ⟨K, hK, hb⟩ := correction_geometric hCg
  refine ⟨Cg, K, hCg, hK, ?_⟩
  intro A c hA hc hc2
  have hex (k : ℕ) := hg (actualDyadicGoodHeightIndex A c k)
    (actualDyadicGoodHeightIndex_bounds A c hA hc hc2 k).1
  choose R hlo hhi hgood using hex
  refine ⟨R, fun k => ⟨hlo k, hhi k⟩, ?_, hgood, ?_⟩
  · intro k
    have he : (actualDyadicGoodHeightIndex A c (k + 1) : ℝ) =
        2 * (actualDyadicGoodHeightIndex A c k : ℝ) + 2 := by
      simp [actualDyadicGoodHeightIndex]
    have hh := hlo (k + 1)
    rw [he] at hh
    linarith [hhi k]
  · intro k
    exact hb A c (R k) k hA hc hc2 (hlo k) (hhi k) (hgood k)

/-- The actual signed shell errors are summable, with both critical and vertical terms retained. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/4d08505fc004SourceActualSignedDyadicSummableError/Variant4cc7fcd5d49accc1d1d290eea523e8999a6eb1c902b2be2e91ede31631d8d7f6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/4d08505fc004SourceActualSignedDyadicSummableError/Variant4cc7fcd5d49accc1d1d290eea523e8999a6eb1c902b2be2e91ede31631d8d7f6.lean#L213).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `64ebf675692d28b7732d080273b07719b850e64f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
