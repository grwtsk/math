# weightedMertensDyadicTriangularCorrelation_eq_kernel

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3c1e4abe-747c-f650-a4b0-2bcb9839b507",
  "kind": "theorem",
  "lexical_name": "weightedMertensDyadicTriangularCorrelation_eq_kernel",
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
  "slug": "weightedmertensdyadictriangularcorrelation-eq-kernel--96953928204ac2f10cc3d1a8",
  "source": {
    "blob": "29207a118760feb5bf47b46b80ce9bdcd0702d94",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 248,
    "line": 190,
    "path": "GRWTSK/NumberTheory/Moebius/DyadicTriangularKernel.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:96953928204ac2f10cc3d1a8f0e833fe4bf32c7aaf125c9c899ad05dbdf90717",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/DyadicTriangularKernel.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3c1e4abe-747c-f650-a4b0-2bcb9839b507`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 190–248.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem weightedMertensDyadicTriangularCorrelation_eq_kernel (j : ℕ) :
    weightedMertensDyadicTriangularCorrelation j =
      weightedMertensDyadicTriangularKernel j := by
  let X : ℕ := 2 ^ j
  have hX : 1 ≤ X := Nat.one_le_pow j 2 (by norm_num)
  rw [weightedMertensDyadicTriangularCorrelation_eq_range]
  have habel := finite_tail_abel
    mertensPrefixTriangularCorrelation
    (fun n : ℕ => ((n : ℝ))⁻¹) hX X
  have hcell :
      (∑ k ∈ Finset.range X,
        mertensPrefixTriangularCorrelation (X + k) *
          (((X + k : ℕ) : ℝ) ^ (-(1 : ℝ)) *
            ((X + k + 1 : ℕ) : ℝ) ^ (-(1 : ℝ)))) =
      ∑ k ∈ Finset.range X,
        mertensPrefixTriangularCorrelation (X + k) *
          ((((X + k : ℕ) : ℝ))⁻¹ -
            (((X + k + 1 : ℕ) : ℝ))⁻¹) := by
    apply Finset.sum_congr rfl
    intro k hk
    rw [dyadic_reciprocal_cell (show 1 ≤ X + k by omega)]
  rw [show 2 ^ j = X by rfl, hcell, habel]
  have hinc :
      (∑ k ∈ Finset.range X,
        (mertensPrefixTriangularCorrelation (X + k) -
          mertensPrefixTriangularCorrelation (X + k - 1)) *
            (((X + k : ℕ) : ℝ))⁻¹) =
      2 * ∑ k ∈ Finset.range X,
        mertensTriangularAtom (X + k) *
          (((X + k : ℕ) : ℝ))⁻¹ := by
    calc
      _ = ∑ k ∈ Finset.range X,
          (2 * mertensTriangularAtom (X + k)) *
            (((X + k : ℕ) : ℝ))⁻¹ := by
        apply Finset.sum_congr rfl
        intro k hk
        rw [mertensPrefixTriangularCorrelation_sub_pred
          (show 1 ≤ X + k by omega)]
      _ = _ := by rw [Finset.mul_sum]; ring
  rw [hinc]
  unfold weightedMertensDyadicTriangularKernel
    weightedMertensDyadicTriangularBoundary
  rw [weightedMertensDyadicTriangularLocal_eq_range]
  have hsum := two_mul_sum_atom_range_eq_triangular_sub hX X
  have hinv := dyadic_left_inv_eq_two_mul_right_inv j
  have hlocal := two_mul_sum_mul_sub_const
    (fun k : ℕ => mertensTriangularAtom (X + k))
    (fun k : ℕ => (((X + k : ℕ) : ℝ))⁻¹)
    (((2 ^ (j + 1) : ℕ) : ℝ))⁻¹ X
  rw [hlocal]
  dsimp [X] at hsum hinv ⊢
  rw [hinv, hsum]
  have hright : 2 ^ j + 2 ^ j = 2 ^ (j + 1) := by
    rw [Nat.pow_succ]
    omega
  rw [hright]
  ring

/-- The boundary retains the exact coefficient-square subtraction. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/DyadicTriangularKernel.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/DyadicTriangularKernel.lean#L190).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `29207a118760feb5bf47b46b80ce9bdcd0702d94` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
