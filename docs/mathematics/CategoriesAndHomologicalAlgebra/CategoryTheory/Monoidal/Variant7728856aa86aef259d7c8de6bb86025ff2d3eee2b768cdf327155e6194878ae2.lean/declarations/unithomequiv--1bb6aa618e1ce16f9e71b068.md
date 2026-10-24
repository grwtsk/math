# unitHomEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5190925aa675300f72d680b09db1fdf7f7abe1689d5a8979821d181cd32d37b1",
  "kind": "def",
  "lexical_name": "unitHomEquiv",
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
  "slug": "unithomequiv--1bb6aa618e1ce16f9e71b068",
  "source": {
    "blob": "8d4347cb63825b7c527b95dbebc175edbec9c988",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 97,
    "line": 81,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant7728856aa86aef259d7c8de6bb86025ff2d3eee2b768cdf327155e6194878ae2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1bb6aa618e1ce16f9e71b0684ee86559f4304691e8c78069f5f88a1a7c77eda1",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant7728856aa86aef259d7c8de6bb86025ff2d3eee2b768cdf327155e6194878ae2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5190925aa675300f72d680b09db1fdf7f7abe1689d5a8979821d181cd32d37b1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 81–97.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def unitHomEquiv (K : SSet.{u}) : (𝟙_ _ ⟶ K) ≃ K _⦋0⦌ where
  toFun φ := φ.app _ PUnit.unit
  invFun x :=
    { app := fun Δ _ => K.map (SimplexCategory.const Δ.unop ⦋0⦌ 0).op x
      naturality := fun Δ Δ' f => by
        ext ⟨⟩
        dsimp
        rw [← FunctorToTypes.map_comp_apply]
        rfl }
  left_inv φ := by
    ext Δ ⟨⟩
    dsimp
    rw [← FunctorToTypes.naturality]
    rfl
  right_inv x := by simp

end SSet
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant7728856aa86aef259d7c8de6bb86025ff2d3eee2b768cdf327155e6194878ae2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant7728856aa86aef259d7c8de6bb86025ff2d3eee2b768cdf327155e6194878ae2.lean#L81).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8d4347cb63825b7c527b95dbebc175edbec9c988` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
