# admissibleK_eq_innerInventory

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6277df29-bdd6-9640-01f9-49ce49126b17",
  "kind": "theorem",
  "lexical_name": "admissibleK_eq_innerInventory",
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
  "slug": "admissiblek-eq-innerinventory--26bcdad46989fd688e370c28",
  "source": {
    "blob": "21bde7bc9f1ca4cef171802c818159631272181f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 86,
    "line": 50,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Outer/Variant15ffd6dca455c9a10e78bfe1ae7bd40a06c6f203d42ca90c688f1606d59e6eb6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:26bcdad46989fd688e370c2892d106295c22fd0d775f139de7a5075543a7b91c",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Outer/Variant15ffd6dca455c9a10e78bfe1ae7bd40a06c6f203d42ca90c688f1606d59e6eb6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6277df29-bdd6-9640-01f9-49ce49126b17`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 50–86.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem admissibleK_eq_innerInventory (A : ℝ) {d : ℕ} (hd : 1 ≤ d) :
    admissibleK A d = Finset.Icc 1 ⌊innerCutoff A d⌋₊ := by
  have hd0 : (0 : ℝ) < d := by exact_mod_cast (by omega : 0 < d)
  have hY0 : 0 ≤ innerCutoff A d := by
    unfold innerCutoff
    positivity
  ext k
  rw [admissibleK, Finset.mem_filter, Finset.mem_Icc, Finset.mem_Icc]
  constructor
  · rintro ⟨⟨hk1, _hkN⟩, hprod⟩
    refine ⟨hk1, ?_⟩
    have hprodR : (d : ℝ) * k ≤ Real.exp (2 * A) := by
      have hr : ((d * k : ℕ) : ℝ) ≤ Real.exp (2 * A) := by
        apply (Nat.le_floor_iff (Real.exp_pos (2 * A)).le).mp
        simpa only [sourceKernelCutoff, sourceUpper] using hprod
      exact_mod_cast hr
    apply Nat.le_floor
    change (k : ℝ) ≤ Real.exp (2 * A) / d
    exact (le_div_iff₀ hd0).2 (by simpa only [mul_comm] using hprodR)
  · rintro ⟨hk1, hkY⟩
    have hkR : (k : ℝ) ≤ innerCutoff A d :=
      (by exact_mod_cast hkY : (k : ℝ) ≤ (⌊innerCutoff A d⌋₊ : ℝ)).trans
        (Nat.floor_le hY0)
    have hprodR : (d : ℝ) * k ≤ Real.exp (2 * A) := by
      have hr := (le_div_iff₀ hd0).mp hkR
      simpa only [mul_comm] using hr
    have hprod : d * k ≤ sourceKernelCutoff A := by
      change d * k ≤ ⌊Real.exp (2 * A)⌋₊
      apply (Nat.le_floor_iff (Real.exp_pos (2 * A)).le).mpr
      exact_mod_cast hprodR
    have hkN : k ≤ sourceKernelCutoff A := by
      have hkprod : k ≤ d * k := by
        simpa only [one_mul] using Nat.mul_le_mul_right k hd
      exact hkprod.trans hprod
    exact ⟨⟨hk1, hkN⟩, hprod⟩

/-- A fixed positive sample is the actual h_A(d*m) logarithmic weight. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Outer/Variant15ffd6dca455c9a10e78bfe1ae7bd40a06c6f203d42ca90c688f1606d59e6eb6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Outer/Variant15ffd6dca455c9a10e78bfe1ae7bd40a06c6f203d42ca90c688f1606d59e6eb6.lean#L50).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `21bde7bc9f1ca4cef171802c818159631272181f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
