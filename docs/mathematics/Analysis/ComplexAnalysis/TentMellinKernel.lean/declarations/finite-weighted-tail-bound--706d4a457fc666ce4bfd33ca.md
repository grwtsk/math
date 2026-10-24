# finite_weighted_tail_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:dabfd1a6-e2df-76c0-73fd-39a2aa9b6166",
  "kind": "theorem",
  "lexical_name": "finite_weighted_tail_bound",
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
  "slug": "finite-weighted-tail-bound--706d4a457fc666ce4bfd33ca",
  "source": {
    "blob": "eb0bd10edfbba94a5c53fbabf9e039f9c4570baf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 233,
    "line": 205,
    "path": "GRWTSK/Analysis/Complex/TentMellinKernel.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:706d4a457fc666ce4bfd33ca566903b173221ecae9f5d34e51492cb4f0859f90",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/TentMellinKernel.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dabfd1a6-e2df-76c0-73fd-39a2aa9b6166`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 205–233.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem finite_weighted_tail_bound (x h β : ℝ)
    (hh : 0 < h) (ha : 1 < x - h) (hβ : 0 ≤ β)
    {ι : Type*} (S : Finset ι) (m : ι → ℕ) (ρ : ι → ℂ)
    (hρ : ∀ j ∈ S, (ρ j).re ≤ β)
    (hγ : ∀ j ∈ S, (ρ j).im ≠ 0) :
    ‖∑ j ∈ S, (m j : ℂ) * tentKernel x h (ρ j)‖ ≤
      (4 * Real.exp ((β + 1) * Real.log (x + h)) / h) *
        ∑ j ∈ S, (m j : ℝ) / (ρ j).im ^ 2 := by
  calc
    _ ≤ ∑ j ∈ S, ‖(m j : ℂ) * tentKernel x h (ρ j)‖ := norm_sum_le _ _
    _ ≤ ∑ j ∈ S,
        (4 * Real.exp ((β + 1) * Real.log (x + h)) / h) *
          ((m j : ℝ) / (ρ j).im ^ 2) := by
      apply Finset.sum_le_sum
      intro j hj
      have hb := mul_le_mul_of_nonneg_left
        (norm_tentKernel_le_inverse_height_sq x h β hh ha hβ
          (ρ j) (hρ j hj) (hγ j hj))
        (Nat.cast_nonneg (m j) : (0 : ℝ) ≤ m j)
      calc
        _ ≤ (m j : ℝ) *
            (4 * Real.exp ((β + 1) * Real.log (x + h)) / (h * (ρ j).im ^ 2)) := by
          simpa [norm_mul] using hb
        _ = _ := by ring
    _ = _ := by rw [Finset.mul_sum]


end
end GRWTSK.Analysis.Complex.TentMellinKernel
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/ComplexAnalysis/TentMellinKernel.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Complex/TentMellinKernel.lean#L205).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `eb0bd10edfbba94a5c53fbabf9e039f9c4570baf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
