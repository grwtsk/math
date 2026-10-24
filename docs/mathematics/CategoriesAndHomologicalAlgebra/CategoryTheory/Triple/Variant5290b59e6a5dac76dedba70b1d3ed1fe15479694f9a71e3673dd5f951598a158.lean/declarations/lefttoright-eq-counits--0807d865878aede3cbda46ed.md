# leftToRight_eq_counits

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "43a284d06fe2f0aef23dbb6c3b9d39a5dbc4a63a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 213,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/52/5290b59e6a5dac76dedba70b1d3ed1fe15479694f9a71e3673dd5f951598a158.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:fbf3a4f4-e015-9445-7af5-92e85a8b6ca3",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:018d2ce4-b018-9fa8-16c5-5c824ec7fac4",
  "kind": "lemma",
  "lexical_name": "leftToRight_eq_counits",
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
  "slug": "lefttoright-eq-counits--0807d865878aede3cbda46ed",
  "source": {
    "blob": "43a284d06fe2f0aef23dbb6c3b9d39a5dbc4a63a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 228,
    "line": 213,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Triple/Variant5290b59e6a5dac76dedba70b1d3ed1fe15479694f9a71e3673dd5f951598a158.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0807d865878aede3cbda46ed8abfdb27fbee7d6728022eef3ff2f174fd9b6375",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Triple/Variant5290b59e6a5dac76dedba70b1d3ed1fe15479694f9a71e3673dd5f951598a158.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:018d2ce4-b018-9fa8-16c5-5c824ec7fac4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 213–228.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma leftToRight_eq_counits :
    t.leftToRight = F.leftUnitor.inv ≫ inv (whiskerRight t.adj₂.counit F) ≫
    (Functor.associator _ _ _).hom ≫ whiskerLeft H t.adj₁.counit ≫ H.rightUnitor.hom := by
  ext X; dsimp [leftToRight]; simp only [Category.id_comp, Category.comp_id, NatIso.isIso_inv_app]
  rw [IsIso.comp_inv_eq, Category.assoc, IsIso.eq_inv_comp]
  refine Eq.trans ?_ (t.adj₁.counit_naturality <| (whiskerRight t.adj₁.unit H).app X)
  rw [whiskerRight_app _ H, (asIso (t.adj₂.counit.app (G.obj _))).eq_comp_inv.2
      (t.adj₂.counit_naturality (t.adj₁.unit.app X)),
    ← (asIso _).comp_hom_eq_id.1 <| t.adj₂.left_triangle_components (F.obj X)]
  simp

omit [H.Full] [H.Faithful] in
/-- For an adjoint triple `F ⊣ G ⊣ H` where `F` and `H` are fully faithful, the components of the
natural transformation `F ⟶ H` at `G` are precisely the components of the natural transformation
`G ⋙ F ⟶ G ⋙ H` obtained from the units and counits of the adjunctions. -/
@[simp, reassoc]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Triple/Variant5290b59e6a5dac76dedba70b1d3ed1fe15479694f9a71e3673dd5f951598a158.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Triple/Variant5290b59e6a5dac76dedba70b1d3ed1fe15479694f9a71e3673dd5f951598a158.lean#L213).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `43a284d06fe2f0aef23dbb6c3b9d39a5dbc4a63a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
