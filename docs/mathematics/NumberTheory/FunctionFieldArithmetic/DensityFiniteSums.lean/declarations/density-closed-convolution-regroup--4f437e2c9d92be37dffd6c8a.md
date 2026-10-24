# density_closed_convolution_regroup

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f427be41-2ba0-e77c-df39-0d3f3d3784bb",
  "kind": "theorem",
  "lexical_name": "density_closed_convolution_regroup",
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
  "slug": "density-closed-convolution-regroup--4f437e2c9d92be37dffd6c8a",
  "source": {
    "blob": "4e087ca9fe6e4fa128cab3f64f976a6a15cef25b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 117,
    "line": 74,
    "path": "GRWTSK/NumberTheory/FunctionFieldArithmetic/DensityFiniteSums.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4f437e2c9d92be37dffd6c8a3cc2e364a053c782df03e79a145bb37eed0ec7d1",
  "verification": {
    "reference": "docs/verification/NumberTheory/FunctionFieldArithmetic/DensityFiniteSums.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f427be41-2ba0-e77c-df39-0d3f3d3784bb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 74–117.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem density_closed_convolution_regroup (F : ℕ → ℕ → ℝ) (u : ℝ) :
    (∑ q ∈ densityClosedInventory u, ∑ k ∈ q.divisors, F k (q / k)) =
      ∑ k ∈ densityClosedInventory u, ∑ n ∈ densityClosedInventory (u - Real.log k),
        F k n := by
  classical
  have hbij :
      (∑ q ∈ densityClosedInventory u, ∑ v ∈ q.divisorsAntidiagonal, F v.2 v.1) =
      ∑ k ∈ densityClosedInventory u, ∑ n ∈ densityClosedInventory (u - Real.log k),
        F k n := by
    rw [Finset.sum_sigma', Finset.sum_sigma']
    symm
    apply Finset.sum_bij (fun v _ => ⟨v.1 * v.2, (v.2, v.1)⟩)
    · intro v hv
      obtain ⟨hk, hn⟩ := Finset.mem_sigma.mp hv
      have hkpos : 0 < v.1 := (Finset.mem_Icc.mp hk).1
      have hprod := (density_closed_inventory_mul_iff hkpos).mpr hn
      exact Finset.mem_sigma.mpr ⟨hprod, Nat.mem_divisorsAntidiagonal.mpr
        ⟨Nat.mul_comm _ _, (Nat.mul_pos hkpos (Finset.mem_Icc.mp hn).1).ne'⟩⟩
    · intro a _ b _ hab
      have hk := congrArg (fun v : Σ _ : ℕ, ℕ × ℕ => v.2.2) hab
      have hn := congrArg (fun v : Σ _ : ℕ, ℕ × ℕ => v.2.1) hab
      exact Sigma.ext hk (heq_of_eq hn)
    · intro v hv
      obtain ⟨hq, hpair⟩ := Finset.mem_sigma.mp hv
      obtain ⟨heq, hq0⟩ := Nat.mem_divisorsAntidiagonal.mp hpair
      have hp := Nat.ne_zero_of_mem_divisorsAntidiagonal hpair
      have hkpos : 0 < v.2.2 := Nat.pos_of_ne_zero hp.2
      have hk : v.2.2 ∈ densityClosedInventory u := Finset.mem_Icc.mpr
        ⟨hkpos, (Nat.le_of_dvd (Nat.pos_of_ne_zero hq0)
          ⟨v.2.1, by simpa [Nat.mul_comm] using heq.symm⟩).trans (Finset.mem_Icc.mp hq).2⟩
      have hn : v.2.1 ∈ densityClosedInventory (u - Real.log v.2.2) := by
        apply (density_closed_inventory_mul_iff hkpos).mp
        simpa [Nat.mul_comm, heq] using hq
      refine ⟨⟨v.2.2, v.2.1⟩, Finset.mem_sigma.mpr ⟨hk, hn⟩, ?_⟩
      exact Sigma.ext ((Nat.mul_comm _ _).trans heq) HEq.rfl
    · intro v _
      rfl
  rw [← hbij]
  apply Finset.sum_congr rfl
  intro q _
  exact (Nat.sum_divisorsAntidiagonal' (fun n k => F k n)).symm


end GRWTSK.NumberTheory.ArithmeticFunctions
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/FunctionFieldArithmetic/DensityFiniteSums.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/FunctionFieldArithmetic/DensityFiniteSums.lean#L74).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4e087ca9fe6e4fa128cab3f64f976a6a15cef25b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
