# exists_comp_eq_id_of_projective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "76bf92470cd3a6d237df1feb072c1289d9793cf0",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 26,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/57/57f1ea6e844b307c18b7e17e5cadd5ca528ce98fe01f7387d6a7011ac1516300.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:370580b7-c61e-6135-d7ee-2fc66cd9b9da",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6bbd0135-e349-0221-a239-30336d3ac84f",
  "kind": "theorem",
  "lexical_name": "exists_comp_eq_id_of_projective",
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
  "slug": "exists-comp-eq-id-of-projective--86587e5d53efc6bfa2fba748",
  "source": {
    "blob": "76bf92470cd3a6d237df1feb072c1289d9793cf0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 35,
    "line": 26,
    "path": "GRWTSK/Algebra/LinearAlgebra/Projective/Variant57f1ea6e844b307c18b7e17e5cadd5ca528ce98fe01f7387d6a7011ac1516300.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:86587e5d53efc6bfa2fba7486bb302839fff83394b259866f0da687a05017382",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Projective/Variant57f1ea6e844b307c18b7e17e5cadd5ca528ce98fe01f7387d6a7011ac1516300.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6bbd0135-e349-0221-a239-30336d3ac84f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 26–35.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_comp_eq_id_of_projective [Module.Finite R M] [Projective R M] :
    ∃ (n : ℕ) (f : (Fin n → R) →ₗ[R] M) (g : M →ₗ[R] Fin n → R),
      Function.Surjective f ∧ Function.Injective g ∧ f ∘ₗ g = .id :=
  have ⟨n, f, surj⟩ := exists_fin' R M
  have ⟨g, hfg⟩ := Module.projective_lifting_property f .id surj
  ⟨n, f, g, surj, LinearMap.injective_of_comp_eq_id _ _ hfg, hfg⟩

end Finite

end Module
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Projective/Variant57f1ea6e844b307c18b7e17e5cadd5ca528ce98fe01f7387d6a7011ac1516300.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Projective/Variant57f1ea6e844b307c18b7e17e5cadd5ca528ce98fe01f7387d6a7011ac1516300.lean#L26).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `76bf92470cd3a6d237df1feb072c1289d9793cf0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
