# degenerate_eq_iUnion_range_σ

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3ea15b88-9384-6594-9e67-9c66df809a5d",
  "kind": "lemma",
  "lexical_name": "degenerate_eq_iUnion_range_σ",
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
  "slug": "degenerate-eq-iunion-range--624c546911647c44635e7aae",
  "source": {
    "blob": "543ca2888da767b7d478d275ea063e7ef59e0147",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 122,
    "line": 106,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Degenerate/Variant52d12d078bc90d77cf25922fbbbf7a80746f1ded616d3fac9418eede29f13758.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:624c546911647c44635e7aae8038ee04b2beaaa8c0eb7b6e8ba8503f132d905a",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Degenerate/Variant52d12d078bc90d77cf25922fbbbf7a80746f1ded616d3fac9418eede29f13758.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3ea15b88-9384-6594-9e67-9c66df809a5d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 106–122.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma degenerate_eq_iUnion_range_σ :
    X.degenerate (n + 1) = ⋃ (i : Fin (n + 1)), Set.range (X.σ i) := by
  ext x
  constructor
  · intro hx
    rw [mem_degenerate_iff] at hx
    obtain ⟨m, hm, f, hf, y, rfl⟩ := hx
    obtain ⟨i, θ, rfl⟩ := SimplexCategory.eq_σ_comp_of_not_injective f (fun hf ↦ by
      rw [← SimplexCategory.mono_iff_injective] at hf
      have := SimplexCategory.le_of_mono f
      lia)
    aesop
  · intro hx
    simp only [Set.mem_iUnion, Set.mem_range] at hx
    obtain ⟨i, y, rfl⟩ := hx
    apply σ_mem_degenerate

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Degenerate/Variant52d12d078bc90d77cf25922fbbbf7a80746f1ded616d3fac9418eede29f13758.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Degenerate/Variant52d12d078bc90d77cf25922fbbbf7a80746f1ded616d3fac9418eede29f13758.lean#L106).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `543ca2888da767b7d478d275ea063e7ef59e0147` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
