# exists_extension_norm_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c66d614d34c63918738c6c80c779bb74d6b5c401",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 42,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f4/f4e14ac0356b0dcfa9981364fe21934a0b659674108ef4286d134ff2a707d2b4.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a465f4a8-6d90-5b1d-5da7-d36b09e37321",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2250b364-e049-49d7-e96a-bd152422f268",
  "kind": "theorem",
  "lexical_name": "exists_extension_norm_eq",
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
  "slug": "exists-extension-norm-eq--97993fe8591503eef361c6c1",
  "source": {
    "blob": "c66d614d34c63918738c6c80c779bb74d6b5c401",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 68,
    "line": 42,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/Extension/Variantf4e14ac0356b0dcfa9981364fe21934a0b659674108ef4286d134ff2a707d2b4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:97993fe8591503eef361c6c1cf5ad10c5dca4fa0e8b9ec3f5f42d3369ada8009",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/Extension/Variantf4e14ac0356b0dcfa9981364fe21934a0b659674108ef4286d134ff2a707d2b4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2250b364-e049-49d7-e96a-bd152422f268`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 42–68.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_extension_norm_eq (p : Subspace ℝ E) (f : p →L[ℝ] ℝ) :
    ∃ g : E →L[ℝ] ℝ, (∀ x : p, g x = f x) ∧ ‖g‖ = ‖f‖ := by
  rcases exists_extension_of_le_sublinear ⟨p, f⟩ (fun x => ‖f‖ * ‖x‖)
      (fun c hc x => by simp only [norm_smul c x, Real.norm_eq_abs, abs_of_pos hc, mul_left_comm])
      (fun x y => by -- Porting note: placeholder filled here
        rw [← left_distrib]
        exact mul_le_mul_of_nonneg_left (norm_add_le x y) (@norm_nonneg _ _ f))
      fun x => le_trans (le_abs_self _) (f.le_op_norm _) with ⟨g, g_eq, g_le⟩
  set g' :=
    g.mkContinuous ‖f‖ fun x => abs_le.2 ⟨neg_le.1 <| g.map_neg x ▸ norm_neg x ▸ g_le (-x), g_le x⟩
  · refine' ⟨g', g_eq, _⟩
    · apply le_antisymm (g.mkContinuous_norm_le (norm_nonneg f) _)
      refine' f.op_norm_le_bound (norm_nonneg _) fun x => _
      dsimp at g_eq
      rw [← g_eq]
      apply g'.le_op_norm
#align real.exists_extension_norm_eq Real.exists_extension_norm_eq

end Real

section IsROrC

open IsROrC

variable {𝕜 : Type*} [IsROrC 𝕜] {F : Type*} [SeminormedAddCommGroup F] [NormedSpace 𝕜 F]

/-- Hahn-Banach theorem for continuous linear functions over `𝕜` satisfying `IsROrC 𝕜`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/Extension/Variantf4e14ac0356b0dcfa9981364fe21934a0b659674108ef4286d134ff2a707d2b4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/Extension/Variantf4e14ac0356b0dcfa9981364fe21934a0b659674108ef4286d134ff2a707d2b4.lean#L42).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c66d614d34c63918738c6c80c779bb74d6b5c401` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
