# isColimit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:696f582132932c67443a0b3d9a11d136f638af5a580ebf4c879627448c1b6029",
  "kind": "def",
  "lexical_name": "isColimit",
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
  "slug": "iscolimit--49c737ba68097f01e0e58f9c",
  "source": {
    "blob": "6f9c4aebd7705bafd0969e9008759044a64f793a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 147,
    "line": 133,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/KernelCokernelComp/Variant718ce65b462121703efe67f9fb5c65389d39e3641c28eade3c0f23e6f3a12e4c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:49c737ba68097f01e0e58f9cec6657cee132517aa639f8d486d793facd41717e",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/KernelCokernelComp/Variant718ce65b462121703efe67f9fb5c65389d39e3641c28eade3c0f23e6f3a12e4c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:696f582132932c67443a0b3d9a11d136f638af5a580ebf4c879627448c1b6029`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 133–147.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def isColimit : IsColimit (CokernelCofork.ofπ _ (φ_π f g)) :=
  CokernelCofork.IsColimit.ofπ' _ _ (fun {A} k hk ↦ by
    refine ⟨cokernel.desc _ (biprod.inr ≫ k) ?_, ?_⟩
    all_goals
      obtain ⟨k₁, k₂, rfl⟩ := biprod.decomp_hom_from k
      simp only [comp_add, φ_snd_assoc, biprod.ext_from_iff, inl_φ_assoc,
        BinaryBicone.inl_fst_assoc, BinaryBicone.inl_snd_assoc, zero_comp, add_zero, comp_zero,
        inr_φ_fst_assoc, neg_comp, id_comp, BinaryBicone.inr_snd_assoc, neg_add_eq_zero] at hk
      obtain ⟨hk, rfl⟩ := hk
      aesop)

/-- The "snake input" which gives the exact sequence
`0 ⟶ ker f ⟶ ker (f ≫ g) ⟶ ker g ⟶ coker f ⟶ coker (f ≫ g) ⟶ coker g ⟶ 0`,
see `kernelCokernelCompSequence_exact`. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/KernelCokernelComp/Variant718ce65b462121703efe67f9fb5c65389d39e3641c28eade3c0f23e6f3a12e4c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/KernelCokernelComp/Variant718ce65b462121703efe67f9fb5c65389d39e3641c28eade3c0f23e6f3a12e4c.lean#L133).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6f9c4aebd7705bafd0969e9008759044a64f793a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
