# rightUnitor'_inv_comm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:00968875-8d13-6251-0097-8e911a9a669d",
  "kind": "lemma",
  "lexical_name": "rightUnitor'_inv_comm",
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
  "slug": "rightunitor-inv-comm--4cf7d2440d15149da293b063",
  "source": {
    "blob": "780651401ba216256596f2c6ed62987be1d7ad13",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 270,
    "line": 258,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant3a017f76da5bd4a89b7c94c482b9c47666abd0d931458baa1d714cc5097653b0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4cf7d2440d15149da293b0635d0749cc5aff28169aaceb97d900b8d3569f16d4",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant3a017f76da5bd4a89b7c94c482b9c47666abd0d931458baa1d714cc5097653b0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:00968875-8d13-6251-0097-8e911a9a669d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 258–270.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma rightUnitor'_inv_comm (i j : I) :
    (rightUnitor' K).inv i ≫ (tensorObj K (tensorUnit C c)).d i j =
      K.d i j ≫ (rightUnitor' K).inv j := by
  by_cases hij : c.Rel i j
  · simp only [rightUnitor'_inv, assoc, mapBifunctor.d_eq,
      Preadditive.comp_add, mapBifunctor.ι_D₁, mapBifunctor.ι_D₂,
      tensor_unit_d₂, comp_zero, add_zero]
    rw [mapBifunctor.d₁_eq _ _ _ _ hij _ _ (by simp)]
    dsimp
    simp only [one_smul, whisker_exchange_assoc, whiskerRight_id, assoc, Iso.inv_hom_id_assoc]
  · simp only [shape _ _ _ hij, comp_zero, zero_comp]

/-- The right unitor for the tensor product of homological complexes. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant3a017f76da5bd4a89b7c94c482b9c47666abd0d931458baa1d714cc5097653b0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant3a017f76da5bd4a89b7c94c482b9c47666abd0d931458baa1d714cc5097653b0.lean#L258).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `780651401ba216256596f2c6ed62987be1d7ad13` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
