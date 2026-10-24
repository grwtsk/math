# isPushout_map_codiagonal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e78560e3ecbb14be88da63a0aa7fe3ee5dbc02c7",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 574,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/5e/5e910d3e7340d68c193d678f5ad45622ff45eeac0fe2f02f89393fac2b5b49d9.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8c56b5ae-2963-8b94-d275-1c18088028b4",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1605849f-94c0-9aab-a8b4-b9258f8b08ba",
  "kind": "theorem",
  "lexical_name": "isPushout_map_codiagonal",
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
  "slug": "ispushout-map-codiagonal--cb458e89b89814a77fd47579",
  "source": {
    "blob": "e78560e3ecbb14be88da63a0aa7fe3ee5dbc02c7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 588,
    "line": 574,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Diagonal/Variant5e910d3e7340d68c193d678f5ad45622ff45eeac0fe2f02f89393fac2b5b49d9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cb458e89b89814a77fd475799016c55d4bc067249649b6717e0253e0a851c92d",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Diagonal/Variant5e910d3e7340d68c193d678f5ad45622ff45eeac0fe2f02f89393fac2b5b49d9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1605849f-94c0-9aab-a8b4-b9258f8b08ba`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 574–588.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isPushout_map_codiagonal {S T : C} (f : T ⟶ X) (g : T ⟶ Y) (i : S ⟶ T) :
    IsPushout
      (pushout.map i i (i ≫ f) (i ≫ g) f g (𝟙 _) (by simp) (by simp))
      (pushout.codiagonal i)
      (pushout.map (i ≫ f) (i ≫ g) f g (𝟙 _) (𝟙 _) i (by simp) (by simp))
      (f ≫ pushout.inl _ _) := by
  rw [← IsPullback.op_iff]
  simp only [op_pushoutMap, Quiver.Hom.unop_op, op_comp, unop_comp, op_id, pushout.op_codiagonal]
  exact .of_iso (pullback_map_diagonal_isPullback f.op g.op i.op)
    (pullbackIsoOpPushout _ _) (.refl _) (pullbackIsoOpPushout _ _) (pullbackIsoOpPushout _ _)
    (by simp [← Iso.inv_comp_eq]) (by simp) (by simp) (by simp)

end Codiagonal

end CategoryTheory.Limits
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Diagonal/Variant5e910d3e7340d68c193d678f5ad45622ff45eeac0fe2f02f89393fac2b5b49d9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Diagonal/Variant5e910d3e7340d68c193d678f5ad45622ff45eeac0fe2f02f89393fac2b5b49d9.lean#L574).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e78560e3ecbb14be88da63a0aa7fe3ee5dbc02c7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
