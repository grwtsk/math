# map_boundedFormula

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f98d552aa27155bc912aa8ac21693f627e596eef",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 72,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/67/67de0c36f3c3623363a2179ae53eba19c252bf974aa36e7c4ea1ca85b4e3ee33.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:cd2dd09a-5dec-7ae8-8d84-4be1a4e1474d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:cfc9f51d-4f84-e1df-ae46-850fe3e144ff",
  "kind": "theorem",
  "lexical_name": "map_boundedFormula",
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
  "slug": "map-boundedformula--c2975776d8a91d9010afa311",
  "source": {
    "blob": "f98d552aa27155bc912aa8ac21693f627e596eef",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 90,
    "line": 72,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/ElementaryMaps/Variant67de0c36f3c3623363a2179ae53eba19c252bf974aa36e7c4ea1ca85b4e3ee33.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c2975776d8a91d9010afa311a0f4c5fd6138e4d66a2e2b9c56e985c684d494ba",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/ModelTheory/ElementaryMaps/Variant67de0c36f3c3623363a2179ae53eba19c252bf974aa36e7c4ea1ca85b4e3ee33.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cfc9f51d-4f84-e1df-ae46-850fe3e144ff`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 72–90.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem map_boundedFormula (f : M ↪ₑ[L] N) {α : Type*} {n : ℕ} (φ : L.BoundedFormula α n)
    (v : α → M) (xs : Fin n → M) : φ.Realize (f ∘ v) (f ∘ xs) ↔ φ.Realize v xs := by
  classical
    rw [← BoundedFormula.realize_restrictFreeVar' Set.Subset.rfl, Set.inclusion_eq_id, iff_eq_eq]
    have h :=
      f.map_formula' ((φ.restrictFreeVar id).toFormula.relabel (Fintype.equivFin _))
        (Sum.elim (v ∘ (↑)) xs ∘ (Fintype.equivFin _).symm)
    simp only [Formula.realize_relabel, BoundedFormula.realize_toFormula, iff_eq_eq] at h
    rw [← Function.comp_assoc _ _ (Fintype.equivFin _).symm,
      Function.comp_assoc _ (Fintype.equivFin _).symm (Fintype.equivFin _),
      _root_.Equiv.symm_comp_self, Function.comp_id, Function.comp_assoc, Sum.elim_comp_inl,
      Function.comp_assoc _ _ Sum.inr, Sum.elim_comp_inr, ← Function.comp_assoc] at h
    refine h.trans ?_
    erw [Function.comp_assoc _ _ (Fintype.equivFin _), _root_.Equiv.symm_comp_self,
      Function.comp_id, Sum.elim_comp_inl, Sum.elim_comp_inr (v ∘ Subtype.val) xs,
      ← Set.inclusion_eq_id (s := (BoundedFormula.freeVarFinset φ : Set α)) Set.Subset.rfl,
      BoundedFormula.realize_restrictFreeVar' Set.Subset.rfl]

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/ModelTheory/ElementaryMaps/Variant67de0c36f3c3623363a2179ae53eba19c252bf974aa36e7c4ea1ca85b4e3ee33.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/ElementaryMaps/Variant67de0c36f3c3623363a2179ae53eba19c252bf974aa36e7c4ea1ca85b4e3ee33.lean#L72).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f98d552aa27155bc912aa8ac21693f627e596eef` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
