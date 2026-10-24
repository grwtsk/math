# extremePoints_doublyStochastic

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7949393b-2879-1e0f-9822-aadac40d66dd",
  "kind": "theorem",
  "lexical_name": "extremePoints_doublyStochastic",
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
  "slug": "extremepoints-doublystochastic--acc759667d2b3fcbe574b0c1",
  "source": {
    "blob": "bda35c04023356ee90bf1c0b0457515a966b519c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 206,
    "line": 185,
    "path": "GRWTSK/Analysis/Birkhoff/Variant08759583f927bda05876756ae89aa95ba1c2e16d54d2f5ad2f54eb9690d17fa4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:acc759667d2b3fcbe574b0c1cd932de83e98c692d9aa50103139c5db930a391c",
  "verification": {
    "reference": "docs/verification/Analysis/Birkhoff/Variant08759583f927bda05876756ae89aa95ba1c2e16d54d2f5ad2f54eb9690d17fa4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7949393b-2879-1e0f-9822-aadac40d66dd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 185–206.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem extremePoints_doublyStochastic :
    Set.extremePoints R (doublyStochastic R n) = {σ.permMatrix R | σ : Equiv.Perm n} := by
  refine subset_antisymm ?_ ?_
  · rw [doublyStochastic_eq_convexHull_permMatrix]
    exact extremePoints_convexHull_subset
  rintro _ ⟨σ, rfl⟩
  refine ⟨permMatrix_mem_doublyStochastic, fun x₁ hx₁ x₂ hx₂ hσ ↦ ?_⟩
  suffices ∀ i j : n, x₁ i j = x₂ i j by
    obtain rfl : x₁ = x₂ := by simpa [← Matrix.ext_iff]
    simp_all
  intro i j
  have h₁ : σ.permMatrix R i j ∈ openSegment R (x₁ i j) (x₂ i j) :=
    image_openSegment _ (entryLinearMap R R i j).toAffineMap x₁ x₂ ▸ ⟨_, hσ, rfl⟩
  by_contra! h
  have h₂ : openSegment R (x₁ i j) (x₂ i j) ⊆ Set.Ioo 0 1 := by
    rw [openSegment_eq_Ioo' h]
    apply Set.Ioo_subset_Ioo <;>
    simp_all [nonneg_of_mem_doublyStochastic, le_one_of_mem_doublyStochastic]
  specialize h₂ h₁
  aesop

end LinearOrderedField
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/Birkhoff/Variant08759583f927bda05876756ae89aa95ba1c2e16d54d2f5ad2f54eb9690d17fa4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Birkhoff/Variant08759583f927bda05876756ae89aa95ba1c2e16d54d2f5ad2f54eb9690d17fa4.lean#L185).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bda35c04023356ee90bf1c0b0457515a966b519c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
