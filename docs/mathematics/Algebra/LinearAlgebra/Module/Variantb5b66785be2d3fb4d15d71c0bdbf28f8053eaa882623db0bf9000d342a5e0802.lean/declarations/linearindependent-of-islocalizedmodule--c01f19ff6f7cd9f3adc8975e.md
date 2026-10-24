# LinearIndependent.of_isLocalizedModule

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3f37be7d-8fcc-a5dd-6042-829000c295d6",
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
  "slug": "linearindependent-of-islocalizedmodule--c01f19ff6f7cd9f3adc8975e",
  "source": {
    "blob": "1a0cd504be2562185a9c53ee95916fc308be9926",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 77,
    "line": 60,
    "path": "GRWTSK/Algebra/LinearAlgebra/Module/Variantb5b66785be2d3fb4d15d71c0bdbf28f8053eaa882623db0bf9000d342a5e0802.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c01f19ff6f7cd9f3adc8975ec7b6aa2452ad1b2798c69bee34f42d63aa9f598b",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Module/Variantb5b66785be2d3fb4d15d71c0bdbf28f8053eaa882623db0bf9000d342a5e0802.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3f37be7d-8fcc-a5dd-6042-829000c295d6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 60–77.

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

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Module/Variantb5b66785be2d3fb4d15d71c0bdbf28f8053eaa882623db0bf9000d342a5e0802.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Module/Variantb5b66785be2d3fb4d15d71c0bdbf28f8053eaa882623db0bf9000d342a5e0802.lean#L60).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1a0cd504be2562185a9c53ee95916fc308be9926` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
