# entry_norm_bound_of_unitary

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:16f60798-fe47-851d-c099-e853e570f4e2",
  "kind": "theorem",
  "lexical_name": "entry_norm_bound_of_unitary",
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
  "slug": "entry-norm-bound-of-unitary--2eec5cd67b78bf6a24bddf87",
  "source": {
    "blob": "2c692ba3cc3a8758ebbf11587d09b59cb9af40ed",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 71,
    "line": 38,
    "path": "GRWTSK/Algebra/LinearAlgebra/Matrix/Variant54303c45eb2eeab30f702cc8ec0ee9d65180779867c87bda2fd526c4fb28a109.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2eec5cd67b78bf6a24bddf871e35f2362c3ca4b82d10b6f2a2e4c50c0ed05f0a",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/MatrixTheory/Variant54303c45eb2eeab30f702cc8ec0ee9d65180779867c87bda2fd526c4fb28a109.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:16f60798-fe47-851d-c099-e853e570f4e2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 38–71.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem entry_norm_bound_of_unitary {U : Matrix n n 𝕜} (hU : U ∈ Matrix.unitaryGroup n 𝕜)
    (i j : n) : ‖U i j‖ ≤ 1 := by
  -- The norm squared of an entry is at most the L2 norm of its row.
  have norm_sum : ‖U i j‖ ^ 2 ≤ ∑ x, ‖U i x‖ ^ 2 := by
    apply Multiset.single_le_sum
    · intro x h_x
      rw [Multiset.mem_map] at h_x
      cases' h_x with a h_a
      rw [← h_a.2]
      apply sq_nonneg
    · rw [Multiset.mem_map]
      use j
      simp only [eq_self_iff_true, Finset.mem_univ_val, and_self_iff, sq_eq_sq]
  -- The L2 norm of a row is a diagonal entry of U * Uᴴ
  have diag_eq_norm_sum : (U * Uᴴ) i i = ∑ x : n, ‖U i x‖ ^ 2 := by
    simp only [Matrix.mul_apply, Matrix.conjTranspose_apply, ← starRingEnd_apply, IsROrC.mul_conj,
      IsROrC.normSq_eq_def', IsROrC.ofReal_pow]; norm_cast
  -- The L2 norm of a row is a diagonal entry of U * Uᴴ, real part
  have re_diag_eq_norm_sum : IsROrC.re ((U * Uᴴ) i i) = ∑ x : n, ‖U i x‖ ^ 2 := by
    rw [IsROrC.ext_iff] at diag_eq_norm_sum
    rw [diag_eq_norm_sum.1]
    norm_cast
  -- Since U is unitary, the diagonal entries of U * Uᴴ are all 1
  have mul_eq_one : U * Uᴴ = 1 := unitary.mul_star_self_of_mem hU
  have diag_eq_one : IsROrC.re ((U * Uᴴ) i i) = 1 := by
    simp only [mul_eq_one, eq_self_iff_true, Matrix.one_apply_eq, IsROrC.one_re]
  -- Putting it all together
  rw [← sq_le_one_iff (norm_nonneg (U i j)), ← diag_eq_one, re_diag_eq_norm_sum]
  exact norm_sum
#align entry_norm_bound_of_unitary entry_norm_bound_of_unitary

attribute [local instance] Matrix.normedAddCommGroup

/-- The entrywise sup norm of a unitary matrix is at most 1. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/MatrixTheory/Variant54303c45eb2eeab30f702cc8ec0ee9d65180779867c87bda2fd526c4fb28a109.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Matrix/Variant54303c45eb2eeab30f702cc8ec0ee9d65180779867c87bda2fd526c4fb28a109.lean#L38).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2c692ba3cc3a8758ebbf11587d09b59cb9af40ed` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
