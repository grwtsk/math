# mem_sieves_of_hasEffectiveEpiFamily

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:dc17abd3-16a2-44e7-57f2-46abc0528824",
  "kind": "theorem",
  "lexical_name": "mem_sieves_of_hasEffectiveEpiFamily",
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
  "slug": "mem-sieves-of-haseffectiveepifamily--3b05330e2426ae0dd30c93d6",
  "source": {
    "blob": "d789bb3d36e6d439602feb8fcd92399dea8b9e66",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 122,
    "line": 107,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherent/Variantccc47a60610e64bbd0ea3ba374021e8e40f36d73867adf5e0380d04db76aa1f3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3b05330e2426ae0dd30c93d6b26f054f843bfae409c2b43d3410c1f599c1811f",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherent/Variantccc47a60610e64bbd0ea3ba374021e8e40f36d73867adf5e0380d04db76aa1f3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dc17abd3-16a2-44e7-57f2-46abc0528824`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 107–122.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mem_sieves_of_hasEffectiveEpiFamily (S : Sieve X) :
    (∃ (α : Type) (_ : Fintype α) (Y : α → C) (π : (a : α) → (Y a ⟶ X)),
        EffectiveEpiFamily Y π ∧ (∀ a : α, (S.arrows) (π a)) ) →
          (S ∈ GrothendieckTopology.sieves (coherentTopology C) X) := by
  rintro ⟨α, ⟨h, ⟨Y, ⟨π, hπ⟩⟩⟩⟩
  have h_le : Sieve.generate (Presieve.ofArrows _ π) ≤ S := by
    rw [Sieve.sets_iff_generate (Presieve.ofArrows _ π) S]
    apply Presieve.le_of_factorsThru_sieve (Presieve.ofArrows (fun i => Y i) π) S _
    intro W g f
    use W, 𝟙 W
    rcases f with ⟨i⟩
    exact ⟨π i, ⟨hπ.2 i,Category.id_comp (π i) ⟩⟩
  apply Coverage.saturate_of_superset (coherentCoverage C) h_le
  exact Coverage.saturate.of X _ ⟨α, inferInstance, Y, π, ⟨rfl, hπ.1⟩⟩

/-- Every Yoneda-presheaf is a sheaf for the coherent topology. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherent/Variantccc47a60610e64bbd0ea3ba374021e8e40f36d73867adf5e0380d04db76aa1f3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherent/Variantccc47a60610e64bbd0ea3ba374021e8e40f36d73867adf5e0380d04db76aa1f3.lean#L107).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d789bb3d36e6d439602feb8fcd92399dea8b9e66` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
