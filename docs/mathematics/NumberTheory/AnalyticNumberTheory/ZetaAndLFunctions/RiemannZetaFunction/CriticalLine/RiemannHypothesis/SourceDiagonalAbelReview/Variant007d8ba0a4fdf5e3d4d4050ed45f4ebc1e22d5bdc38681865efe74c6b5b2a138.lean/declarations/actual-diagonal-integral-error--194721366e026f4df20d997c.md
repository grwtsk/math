# actual_diagonal_integral_error

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2129547d-c023-4b08-77bb-7b40544b5955",
  "kind": "theorem",
  "lexical_name": "actual_diagonal_integral_error",
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
  "slug": "actual-diagonal-integral-error--194721366e026f4df20d997c",
  "source": {
    "blob": "fc8bbbe219b39e7ae8b47de4b9264b7a4f85c9db",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 166,
    "line": 144,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceDiagonalAbelReview/Variant007d8ba0a4fdf5e3d4d4050ed45f4ebc1e22d5bdc38681865efe74c6b5b2a138.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:194721366e026f4df20d997c87f2c2a311c256aaa0ff4d4030b5b32794721958",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceDiagonalAbelReview/Variant007d8ba0a4fdf5e3d4d4050ed45f4ebc1e22d5bdc38681865efe74c6b5b2a138.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2129547d-c023-4b08-77bb-7b40544b5955`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 144–166.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_diagonal_integral_error :
    ∃ C : ℝ, 0 ≤ C ∧ ∀ A : ℝ, 1 ≤ A →
      |typeTwoDiagonal A +
        (∫ t in Real.log (vaughanCutoff A : ℝ)..A,
          sourceCorrelation explicitSecondDerivative A (2 * t))| ≤ C := by
  obtain ⟨C₁, hC₁0, hC₁⟩ := actual_diagonal_minus_inventory_prime_bounded
  obtain ⟨C₂, hC₂0, hC₂⟩ := retainedPrimeDiagonal_integral_error
  refine ⟨C₁ + C₂, by positivity, ?_⟩
  intro A hA
  have hd := hC₁ A hA
  rw [inventoryPrimeDiagonal_eq_retainedPrimeDiagonal A hA] at hd
  have hp := hC₂ A hA
  change |typeTwoDiagonal A +
    (∫ t in Real.log (⌊A ^ 2⌋₊ : ℝ)..A, diagonalCorrelation A t)| ≤ C₁ + C₂
  calc
    _ = |(typeTwoDiagonal A - retainedPrimeDiagonal A) +
        (retainedPrimeDiagonal A +
          (∫ t in Real.log (⌊A ^ 2⌋₊ : ℝ)..A, diagonalCorrelation A t))| := by congr 1; ring
    _ ≤ _ := abs_add_le _ _
    _ ≤ C₁ + C₂ := add_le_add hd hp

end
end FormalResearch.RiemannHypothesis.VaughanDiagonalAbelReview
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceDiagonalAbelReview/Variant007d8ba0a4fdf5e3d4d4050ed45f4ebc1e22d5bdc38681865efe74c6b5b2a138.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceDiagonalAbelReview/Variant007d8ba0a4fdf5e3d4d4050ed45f4ebc1e22d5bdc38681865efe74c6b5b2a138.lean#L144).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fc8bbbe219b39e7ae8b47de4b9264b7a4f85c9db` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
