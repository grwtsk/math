# fejer_kernel_le_linear

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:798b9dd3-d654-b391-24bc-0e12e484c8e3",
  "kind": "theorem",
  "lexical_name": "fejer_kernel_le_linear",
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
  "slug": "fejer-kernel-le-linear--0f33dd7fd9915c43b0f53d39",
  "source": {
    "blob": "738b9a07216212d85fc41196714020e6eae78238",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 444,
    "line": 433,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/HardySigmaDelayedEq516414697ed2/Variant6969cbeecce0d8c12dc154df0beb3c03834863565c7a89ee431632ebdc79de1d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0f33dd7fd9915c43b0f53d39a5e0a0c34e012553cfb82f885a52abac64e45c69",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/HardySigmaDelayedEq516414697ed2/Variant6969cbeecce0d8c12dc154df0beb3c03834863565c7a89ee431632ebdc79de1d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:798b9dd3-d654-b391-24bc-0e12e484c8e3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 433–444.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem fejer_kernel_le_linear (n : ℕ) (t : ℝ) : fejer_kernel n t ≤ (n + 1 : ℝ) / 2 := by
  unfold fejer_kernel;
  -- By definition of $D_j(t)$, we know that $|D_j(t)| \leq j + 1/2$.
  have h_dirichlet_bound : ∀ j : ℕ, ∀ t : ℝ, |dirichlet_kernel j t| ≤ j + 1 / 2 := by
    unfold dirichlet_kernel;
    intro j t; refine' abs_le.mpr ⟨ _, _ ⟩ <;> linarith [ show ( ∑ k ∈ Finset.Icc 1 j, Real.cos ( k * t ) ) ≥ -↑j by exact le_trans ( by norm_num ) ( Finset.sum_le_sum fun i hi => Real.neg_one_le_cos _ ), show ( ∑ k ∈ Finset.Icc 1 j, Real.cos ( k * t ) ) ≤ ↑j by exact le_trans ( Finset.sum_le_sum fun i hi => Real.cos_le_one _ ) ( by norm_num ) ] ;
  rw [ div_mul_eq_mul_div, div_le_iff₀ ] <;> try linarith;
  exact le_trans ( mul_le_mul_of_nonneg_left ( Finset.sum_le_sum fun _ _ => le_of_abs_le ( h_dirichlet_bound _ _ ) ) zero_le_one ) ( by induction' n with n ih <;> norm_num [ Finset.sum_range_succ ] at * ; nlinarith )

/-
Property (c) part 2: The Fejér kernel is bounded by A/((n+1)t^2).
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/HardySigmaDelayedEq516414697ed2/Variant6969cbeecce0d8c12dc154df0beb3c03834863565c7a89ee431632ebdc79de1d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/HardySigmaDelayedEq516414697ed2/Variant6969cbeecce0d8c12dc154df0beb3c03834863565c7a89ee431632ebdc79de1d.lean#L433).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `738b9a07216212d85fc41196714020e6eae78238` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
