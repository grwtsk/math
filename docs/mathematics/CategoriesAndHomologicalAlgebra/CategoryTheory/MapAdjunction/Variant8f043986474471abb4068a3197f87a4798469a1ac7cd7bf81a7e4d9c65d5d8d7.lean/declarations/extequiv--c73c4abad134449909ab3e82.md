# extEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:bc0b97ec6d57b19b77c82aaa97403684c3db7f2ff06edc019bb87c6e3c5fe05a",
  "kind": "def",
  "lexical_name": "extEquiv",
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
  "slug": "extequiv--c73c4abad134449909ab3e82",
  "source": {
    "blob": "570b41c44a1931dc8d9425c6635274c44bbda5bb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 61,
    "line": 41,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/MapAdjunction/Variant8f043986474471abb4068a3197f87a4798469a1ac7cd7bf81a7e4d9c65d5d8d7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c73c4abad134449909ab3e82274764905c4b07074c5223da426330971e3f4adc",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/MapAdjunction/Variant8f043986474471abb4068a3197f87a4798469a1ac7cd7bf81a7e4d9c65d5d8d7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:bc0b97ec6d57b19b77c82aaa97403684c3db7f2ff06edc019bb87c6e3c5fe05a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 41–61.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def extEquiv (adj : F ⊣ G) {X : C} {Y : D} {n : ℕ} :
    Ext (F.obj X) Y n ≃+ Ext X (G.obj Y) n where
  toFun e := (Ext.mk₀ (adj.unit.app X)).comp (e.mapExactFunctor G) (zero_add n)
  invFun e := (e.mapExactFunctor F).comp (Ext.mk₀ (adj.counit.app Y)) (add_zero n)
  left_inv e := by
    dsimp
    rw [Ext.mapExactFunctor_comp, Ext.comp_assoc _ _ _ _ (add_zero n) (by lia),
      ← Ext.comp_mapExactFunctor, Ext.mapExactFunctor_comp_mk₀_natTransApp,
      Ext.id_mapExactFunctor, Ext.mapExactFunctor_mk₀,
      ← Ext.comp_assoc _ _ _ (zero_add 0) (by lia) (by lia),
      Ext.mk₀_comp_mk₀, adj.left_triangle_components, Ext.mk₀_id_comp]
  right_inv e := by
    dsimp
    rw [Ext.mapExactFunctor_comp, ← Ext.comp_assoc _ _ _ (zero_add n) (by lia) (by lia),
      ← Ext.comp_mapExactFunctor, ← Ext.mapExactFunctor_comp_mk₀_natTransApp,
      Ext.id_mapExactFunctor, Ext.comp_assoc _ _ _ _ (add_zero 0) (by lia),
      Ext.mapExactFunctor_mk₀, Ext.mk₀_comp_mk₀, adj.right_triangle_components]
    simp
  map_add' := by simp

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/MapAdjunction/Variant8f043986474471abb4068a3197f87a4798469a1ac7cd7bf81a7e4d9c65d5d8d7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/MapAdjunction/Variant8f043986474471abb4068a3197f87a4798469a1ac7cd7bf81a7e4d9c65d5d8d7.lean#L41).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `570b41c44a1931dc8d9425c6635274c44bbda5bb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
