# LinearIndependent.of_isLocalizedModule

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d96ec1c8d02cc20984a4ec35fc67887a45d16fbd",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 56,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ef/efb99ed946a9d3f8199a0e50df86471b876d6b619118b26d63cbd361068fd8b5.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:913c5e38-d311-66d1-bf9f-37717f659d71",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8c0ce2c1-3c45-65d4-65d8-ac8967876e11",
  "kind": "theorem",
  "lexical_name": "LinearIndependent.of_isLocalizedModule",
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
  "slug": "linearindependent-of-islocalizedmodule--a3f745fc19391be8a46b089d",
  "source": {
    "blob": "d96ec1c8d02cc20984a4ec35fc67887a45d16fbd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 73,
    "line": 56,
    "path": "GRWTSK/Algebra/LinearAlgebra/Module/Variantefb99ed946a9d3f8199a0e50df86471b876d6b619118b26d63cbd361068fd8b5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a3f745fc19391be8a46b089db8052c5fe07ae5f02ef1a166d1fca570fc337770",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Module/Variantefb99ed946a9d3f8199a0e50df86471b876d6b619118b26d63cbd361068fd8b5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8c0ce2c1-3c45-65d4-65d8-ac8967876e11`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 56–73.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem LinearIndependent.of_isLocalizedModule {ι : Type*} {v : ι → M}
    (hv : LinearIndependent R v) : LinearIndependent Rₛ (f ∘ v) := by
  rw [linearIndependent_iff'ₛ] at hv ⊢
  intro t g₁ g₂ eq i hi
  choose! a fg hfg using IsLocalization.exist_integer_multiples S (t.disjSum t) (Sum.elim g₁ g₂)
  simp_rw [Sum.forall, Finset.inl_mem_disjSum, Sum.elim_inl, Finset.inr_mem_disjSum, Sum.elim_inr,
    Subtype.forall'] at hfg
  apply_fun ((a : R) • ·) at eq
  simp_rw [← t.sum_coe_sort, Finset.smul_sum, ← smul_assoc, ← hfg,
    algebraMap_smul, Function.comp_def, ← map_smul, ← map_sum,
    t.sum_coe_sort (f := fun x ↦ fg (Sum.inl x) • v x),
    t.sum_coe_sort (f := fun x ↦ fg (Sum.inr x) • v x)] at eq
  have ⟨s, eq⟩ := IsLocalizedModule.exists_of_eq (S := S) eq
  simp_rw [Finset.smul_sum, Submonoid.smul_def, smul_smul] at eq
  have := congr(algebraMap R Rₛ $(hv t _ _ eq i hi))
  simpa only [map_mul, (IsLocalization.map_units Rₛ s).mul_right_inj, hfg.1 ⟨i, hi⟩, hfg.2 ⟨i, hi⟩,
    Algebra.smul_def, (IsLocalization.map_units Rₛ a).mul_right_inj] using this

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Module/Variantefb99ed946a9d3f8199a0e50df86471b876d6b619118b26d63cbd361068fd8b5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Module/Variantefb99ed946a9d3f8199a0e50df86471b876d6b619118b26d63cbd361068fd8b5.lean#L56).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d96ec1c8d02cc20984a4ec35fc67887a45d16fbd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
