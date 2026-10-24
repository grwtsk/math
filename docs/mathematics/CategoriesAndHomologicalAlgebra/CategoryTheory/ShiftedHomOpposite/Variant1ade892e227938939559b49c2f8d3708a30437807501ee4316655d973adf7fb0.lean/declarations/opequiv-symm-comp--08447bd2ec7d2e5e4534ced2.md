# opEquiv_symm_comp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ff47ffce2aecfee4d2b2de0763f2729fd1504c73",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 59,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/1a/1ade892e227938939559b49c2f8d3708a30437807501ee4316655d973adf7fb0.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e1aeefd5-17d4-a4a0-56ec-d3fad9ea5967",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a2cbf837-9eb9-11d1-1840-9c1f454fb222",
  "kind": "lemma",
  "lexical_name": "opEquiv_symm_comp",
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
  "slug": "opequiv-symm-comp--08447bd2ec7d2e5e4534ced2",
  "source": {
    "blob": "ff47ffce2aecfee4d2b2de0763f2729fd1504c73",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 82,
    "line": 59,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ShiftedHomOpposite/Variant1ade892e227938939559b49c2f8d3708a30437807501ee4316655d973adf7fb0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:08447bd2ec7d2e5e4534ced21037f4a63ae751d624b542344c09aaab58e31dc3",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/ShiftedHomOpposite/Variant1ade892e227938939559b49c2f8d3708a30437807501ee4316655d973adf7fb0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a2cbf837-9eb9-11d1-1840-9c1f454fb222`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 59–82.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma opEquiv_symm_comp {a b : ℤ}
    (f : ShiftedHom (Opposite.op Z) (Opposite.op Y) a)
    (g : ShiftedHom (Opposite.op Y) (Opposite.op X) b)
    {c : ℤ} (h : b + a = c) :
    (opEquiv _).symm (f.comp g h) =
      ((opEquiv _).symm g).comp ((opEquiv _).symm f) (by lia) := by
  rw [opEquiv_symm_apply, opEquiv_symm_apply,
    opShiftFunctorEquivalence_add_unitIso_inv_app_eq _ _ _ _ (show a + b = c by lia), comp, comp]
  dsimp
  rw [assoc, assoc, assoc, assoc, ← Functor.map_comp, ← unop_comp_assoc,
    Iso.inv_hom_id_app]
  dsimp
  rw [assoc, id_comp, Functor.map_comp, ← NatTrans.naturality_assoc,
    ← NatTrans.naturality, opEquiv_symm_apply]
  dsimp
  rw [← Functor.map_comp_assoc, ← Functor.map_comp_assoc,
    ← Functor.map_comp_assoc]
  rw [← unop_comp_assoc]
  erw [← NatTrans.naturality]
  rfl

/-- The bijection `ShiftedHom X Y a' ≃ (Opposite.op (Y⟦a⟧) ⟶ (Opposite.op X)⟦n⟧)`
when integers `n`, `a` and `a'` satisfy `n + a = a'`, and `X` and `Y` are objects
of a category equipped with a shift by `ℤ`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/ShiftedHomOpposite/Variant1ade892e227938939559b49c2f8d3708a30437807501ee4316655d973adf7fb0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ShiftedHomOpposite/Variant1ade892e227938939559b49c2f8d3708a30437807501ee4316655d973adf7fb0.lean#L59).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ff47ffce2aecfee4d2b2de0763f2729fd1504c73` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
