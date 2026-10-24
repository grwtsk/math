# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a691f60337c68cffca45e8a07df0d8268f073988d0ed2fa3cf61510265bb9b7a",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--6b1dc6b773c5e5a528c86d56",
  "source": {
    "blob": "9271a28a5193daff0619366a7df4e4b9f878d1f5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 414,
    "line": 392,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CardinalDirectedPoset/Variantda393bb21b789f6120603aa57edca15bf554cf5a48c3cbf33e498bf027fccd35.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6b1dc6b773c5e5a528c86d563955a92f2d585306031701f53895a0c0d0819cb1",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/CardinalDirectedPoset/Variantda393bb21b789f6120603aa57edca15bf554cf5a48c3cbf33e498bf027fccd35.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a691f60337c68cffca45e8a07df0d8268f073988d0ed2fa3cf61510265bb9b7a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 392–414.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance : IsCardinalFiltered (Subtype J.PropSet) κ :=
  isCardinalFiltered_preorder _ _ (fun K α hK ↦ by
    rw [← hasCardinalLT_iff_cardinal_mk_lt] at hK
    let t (k : K) : (α k).val := ⊤_ _
    let m := IsCardinalFiltered.max (fun k ↦ (t k).val) hK
    let S : Set J.obj := (⋃ (k : K), α k) ∪ {m}
    let : OrderTop S :=
      { top := ⟨m, by simp [S]⟩
        le_top := by
          rintro ⟨s, hs⟩
          simp only [Set.union_singleton, Set.mem_insert_iff, Set.mem_iUnion, S] at hs
          obtain rfl | ⟨k, hs⟩ := hs
          · simp
          · simp only [Subtype.mk_le_mk]
            exact leOfHom ((by exact terminal.from (C := (α k).val) ⟨_, hs⟩) ≫
              IsCardinalFiltered.toMax _ hK k) }
    refine ⟨⟨S, ?_, isTerminalTop.hasTerminal⟩, fun k ↦ ?_⟩
    · have hκ : Cardinal.aleph0 ≤ κ :=  Cardinal.IsRegular.aleph0_le Fact.out
      exact hasCardinalLT_union hκ (hasCardinalLT_iUnion _ hK (fun k ↦ (α k).2.1))
        (hasCardinalLT_of_finite _ _ hκ)
    · simp only [← Subtype.coe_le_coe]
      exact subset_trans (Set.subset_iUnion_of_subset k (subset_refl _)) Set.subset_union_left )

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/CardinalDirectedPoset/Variantda393bb21b789f6120603aa57edca15bf554cf5a48c3cbf33e498bf027fccd35.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CardinalDirectedPoset/Variantda393bb21b789f6120603aa57edca15bf554cf5a48c3cbf33e498bf027fccd35.lean#L392).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9271a28a5193daff0619366a7df4e4b9f878d1f5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
