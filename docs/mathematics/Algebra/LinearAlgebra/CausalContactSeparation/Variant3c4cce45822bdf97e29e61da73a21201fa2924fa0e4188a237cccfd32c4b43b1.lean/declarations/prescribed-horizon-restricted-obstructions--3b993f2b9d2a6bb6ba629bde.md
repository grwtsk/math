# prescribed_horizon_restricted_obstructions

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1e64d17c-6fe4-00b4-29a1-8f81489c6348",
  "kind": "theorem",
  "lexical_name": "prescribed_horizon_restricted_obstructions",
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
  "slug": "prescribed-horizon-restricted-obstructions--3b993f2b9d2a6bb6ba629bde",
  "source": {
    "blob": "b2d5c5c85f91756bf84d7167ba273afb7e6654b5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 166,
    "line": 133,
    "path": "GRWTSK/Algebra/LinearAlgebra/CausalContactSeparation/Variant3c4cce45822bdf97e29e61da73a21201fa2924fa0e4188a237cccfd32c4b43b1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3b993f2b9d2a6bb6ba629bdeeeac00a7cf1f72a85cf05a19838858edb0e78662",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/CausalContactSeparation/Variant3c4cce45822bdf97e29e61da73a21201fa2924fa0e4188a237cccfd32c4b43b1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1e64d17c-6fe4-00b4-29a1-8f81489c6348`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 133–166.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem prescribed_horizon_restricted_obstructions :
    ∃ A : ℝ, 1 ≤ A ∧ 8 ∈ inventory (2 * A) ∧
      (∀ map : (ℝ → ℝ) →ₗ[ℝ] (ℝ → ℝ),
        map (windowResponse (2 * A) 8) ≠ SourceGram.sourceVector A 8) ∧
      (∀ d : ℕ → ℝ,
        diagonalScale d (gram (2 * A)) 8 8 ≠ SourceGram.sourceGram A 8 8) ∧
      (∀ C : ℝ, ¬ ∀ w : ℕ → ℝ,
        (∑ m ∈ inventory (2 * A), ∑ k ∈ inventory (2 * A),
          w m * w k * SourceGram.sourceGram A m k) ≤
        C * ArithmeticPickupGram.quadraticForm (2 * A) (inventory (2 * A)) w) := by
  have logEight : Real.log (8 : ℝ) = 3 * Real.log 2 := by
    rw [show (8 : ℝ) = 2 ^ (3 : ℕ) by norm_num, Real.log_pow]
    norm_num
  have scale : 1 ≤ Real.log (8 : ℝ) / 2 := by
    rw [logEight]
    linarith [Real.log_two_gt_d9]
  have positive : 0 < Real.log (8 : ℝ) / 2 := by linarith
  have horizon : 2 * (Real.log (8 : ℝ) / 2) = Real.log (8 : ℝ) := by ring
  refine ⟨Real.log (8 : ℝ) / 2, scale, ?_, ?_, ?_, ?_⟩
  · rw [horizon]
    exact SourceNativeSeparation.touching_atom_in_inventory (n := 8) (by norm_num)
  · intro map
    rw [horizon]
    exact linear_contact_map_ne_source positive (by norm_num) map
  · intro d
    rw [horizon]
    exact diagonal_scaled_native_ne_source positive (by norm_num) d
  · intro C
    rw [horizon]
    exact native_contact_no_source_quadratic_domination positive (by norm_num) C

end

end GRWTSK.Analysis.InnerProductSpace.CausalContactSeparation
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/CausalContactSeparation/Variant3c4cce45822bdf97e29e61da73a21201fa2924fa0e4188a237cccfd32c4b43b1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/CausalContactSeparation/Variant3c4cce45822bdf97e29e61da73a21201fa2924fa0e4188a237cccfd32c4b43b1.lean#L133).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b2d5c5c85f91756bf84d7167ba273afb7e6654b5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
