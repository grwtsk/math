# isLimit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2fbdfa453b360cd7b32a956b4f6811600828778cec66556fb39cc859bd0f8964",
  "kind": "def",
  "lexical_name": "isLimit",
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
  "slug": "islimit--5c33848a37a43d6fc27c1bae",
  "source": {
    "blob": "e0e16753bf57a122ae3ff0bc0f78addaea765d16",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 136,
    "line": 123,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/KernelCokernelComp/Variantebaef3b3d8eeb55f50de90c05c2adff8107df157528d3ea1ceff07cfac9f5601.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5c33848a37a43d6fc27c1baec1216eff03b687929af5314e8e1585163b78bb51",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/KernelCokernelComp/Variantebaef3b3d8eeb55f50de90c05c2adff8107df157528d3ea1ceff07cfac9f5601.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2fbdfa453b360cd7b32a956b4f6811600828778cec66556fb39cc859bd0f8964`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 123–136.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def isLimit : IsLimit (KernelFork.ofι _ (ι_φ f g)) :=
  KernelFork.IsLimit.ofι' _ _ (fun {A} k hk ↦ by
    refine ⟨kernel.lift _ (k ≫ biprod.fst) ?_, ?_⟩
    all_goals
      obtain ⟨k₁, k₂, rfl⟩ := biprod.decomp_hom_to k
      simp only [biprod.ext_to_iff, add_comp, assoc, inl_φ, BinaryBicone.inl_fst,
        comp_id, inr_φ_fst, comp_neg, zero_comp, BinaryBicone.inl_snd, comp_zero, φ_snd,
        BinaryBicone.inr_snd_assoc, zero_add, add_neg_eq_zero] at hk
      obtain ⟨rfl, hk⟩ := hk
      aesop)

/-- If `f : X ⟶ Y` and `g : Y ⟶ Z` are composable morphisms,
then the cokernel of `φ f g : X ⊞ Y ⟶ Y ⊞ Z` identifies
to `cokernel (f ≫ g)`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/KernelCokernelComp/Variantebaef3b3d8eeb55f50de90c05c2adff8107df157528d3ea1ceff07cfac9f5601.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/KernelCokernelComp/Variantebaef3b3d8eeb55f50de90c05c2adff8107df157528d3ea1ceff07cfac9f5601.lean#L123).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e0e16753bf57a122ae3ff0bc0f78addaea765d16` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
