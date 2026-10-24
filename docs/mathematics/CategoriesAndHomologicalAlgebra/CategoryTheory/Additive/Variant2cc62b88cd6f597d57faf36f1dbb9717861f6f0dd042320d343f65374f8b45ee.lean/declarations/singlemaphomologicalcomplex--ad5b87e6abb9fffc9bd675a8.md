# singleMapHomologicalComplex

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ee5df0fbb6a1863d4608244c88fd32ca2021e9728ec3984c3ab82e51fc17267b",
  "kind": "def",
  "lexical_name": "singleMapHomologicalComplex",
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
  "slug": "singlemaphomologicalcomplex--ad5b87e6abb9fffc9bd675a8",
  "source": {
    "blob": "4313636324d0a2fab5311e3b923471507f6cbfc8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 275,
    "line": 248,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Additive/Variant2cc62b88cd6f597d57faf36f1dbb9717861f6f0dd042320d343f65374f8b45ee.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ad5b87e6abb9fffc9bd675a850a59ed33f673a5f81893453160bff0e47e7a6a4",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Additive/Variant2cc62b88cd6f597d57faf36f1dbb9717861f6f0dd042320d343f65374f8b45ee.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ee5df0fbb6a1863d4608244c88fd32ca2021e9728ec3984c3ab82e51fc17267b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 248–275.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def singleMapHomologicalComplex (j : ι) :
    single W₁ c j ⋙ F.mapHomologicalComplex _ ≅ F ⋙ single W₂ c j :=
  NatIso.ofComponents
    (fun X =>
      { hom := { f := fun i => if h : i = j then eqToHom (by simp [h]) else 0 }
        inv := { f := fun i => if h : i = j then eqToHom (by simp [h]) else 0 }
        hom_inv_id := by
          ext i
          dsimp
          split_ifs with h
          · simp [h]
          · rw [zero_comp, ← F.map_id,
              (isZero_single_obj_X c j X _ h).eq_of_src (𝟙 _) 0, F.map_zero]
        inv_hom_id := by
          ext i
          dsimp
          split_ifs with h
          · simp [h]
          · apply (isZero_single_obj_X c j _ _ h).eq_of_src })
    fun f => by
      ext i
      dsimp
      split_ifs with h
      · subst h
        simp [single_map_f_self, singleObjXSelf, singleObjXIsoOfEq, eqToHom_map]
      · apply (isZero_single_obj_X c j _ _ h).eq_of_tgt

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Additive/Variant2cc62b88cd6f597d57faf36f1dbb9717861f6f0dd042320d343f65374f8b45ee.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Additive/Variant2cc62b88cd6f597d57faf36f1dbb9717861f6f0dd042320d343f65374f8b45ee.lean#L248).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4313636324d0a2fab5311e3b923471507f6cbfc8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
