# rectangular_mass_step

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9ab8cf77-3e35-9748-f1e0-e8badb3e783e",
  "kind": "theorem",
  "lexical_name": "rectangular_mass_step",
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
  "slug": "rectangular-mass-step--e08efd40493311b49bac3fac",
  "source": {
    "blob": "affebe081e0ae6b3697a7a38ff4a97babb758edb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 207,
    "line": 171,
    "path": "GRWTSK/Analysis/ErrorBounds/GrowingGramResidual.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e08efd40493311b49bac3facdaa1faf966694e0b0b05a48565a95c7aa3cbab3c",
  "verification": {
    "reference": "docs/verification/Analysis/ErrorBounds/GrowingGramResidual.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9ab8cf77-3e35-9748-f1e0-e8badb3e783e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 171–207.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem rectangular_mass_step {ι τ : Type*} [Fintype ι] [Fintype τ]
    (weight : ι → ℝ) (nextWeight : τ → ℝ)
    (residual : ι → ℝ) (nextResidual forcing : τ → ℝ) (gain : τ → ι → ℝ) (r : ℝ)
    (nextWeightsNonnegative : ∀ i, 0 ≤ nextWeight i)
    (evolution : ∀ i, nextResidual i = (∑ j, gain i j * residual j) + forcing i)
    (columnBound : ∀ j, (∑ i, nextWeight i * |gain i j|) ≤ r * weight j) :
    channelMass nextWeight nextResidual ≤
      r * channelMass weight residual + channelMass nextWeight forcing := by
  have each (i : τ) : |nextResidual i| ≤
      (∑ j, |gain i j| * |residual j|) + |forcing i| := by
    rw [evolution i]
    calc
      _ ≤ |∑ j, gain i j * residual j| + |forcing i| := abs_add_le _ _
      _ ≤ (∑ j, |gain i j * residual j|) + |forcing i| := by
        apply add_le_add_left
        simpa only [Real.norm_eq_abs] using
          (norm_sum_le Finset.univ (fun j => gain i j * residual j))
      _ = _ := by simp only [abs_mul]
  unfold channelMass
  calc
    _ ≤ ∑ i, nextWeight i * ((∑ j, |gain i j| * |residual j|) + |forcing i|) :=
      Finset.sum_le_sum fun i _ => mul_le_mul_of_nonneg_left (each i) (nextWeightsNonnegative i)
    _ = (∑ i, ∑ j, nextWeight i * (|gain i j| * |residual j|)) +
        ∑ i, nextWeight i * |forcing i| := by
      simp_rw [mul_add, Finset.sum_add_distrib, Finset.mul_sum]
    _ = (∑ j, ∑ i, nextWeight i * (|gain i j| * |residual j|)) +
        ∑ i, nextWeight i * |forcing i| := by rw [Finset.sum_comm]
    _ = (∑ j, (∑ i, nextWeight i * |gain i j|) * |residual j|) +
        ∑ i, nextWeight i * |forcing i| := by
      simp only [Finset.sum_mul, mul_assoc]
    _ ≤ (∑ j, (r * weight j) * |residual j|) + ∑ i, nextWeight i * |forcing i| := by
      apply add_le_add_left
      exact Finset.sum_le_sum fun j _ =>
        mul_le_mul_of_nonneg_right (columnBound j) (abs_nonneg _)
    _ = _ := by simp only [Finset.mul_sum, mul_assoc]

/-- A finite source readout may omit a tail, but the comparison must charge it. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/ErrorBounds/GrowingGramResidual.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ErrorBounds/GrowingGramResidual.lean#L171).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `affebe081e0ae6b3697a7a38ff4a97babb758edb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
