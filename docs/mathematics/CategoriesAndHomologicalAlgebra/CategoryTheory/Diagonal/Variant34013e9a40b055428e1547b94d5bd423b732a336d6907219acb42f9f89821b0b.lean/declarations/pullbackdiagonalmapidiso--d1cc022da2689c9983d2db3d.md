# pullbackDiagonalMapIdIso

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:35866ff85c6f2ed71d5a2b345929a249207a4a10f5b50120a8fffbd53d25beb4",
  "kind": "def",
  "lexical_name": "pullbackDiagonalMapIdIso",
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
  "slug": "pullbackdiagonalmapidiso--d1cc022da2689c9983d2db3d",
  "source": {
    "blob": "8003fbd15489cd5aa93c9dc48e864453a98e0d65",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 253,
    "line": 235,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Diagonal/Variant34013e9a40b055428e1547b94d5bd423b732a336d6907219acb42f9f89821b0b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d1cc022da2689c9983d2db3da6de08a6a5f0d3661fae80a2b0f43bad38dc3b71",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Diagonal/Variant34013e9a40b055428e1547b94d5bd423b732a336d6907219acb42f9f89821b0b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:35866ff85c6f2ed71d5a2b345929a249207a4a10f5b50120a8fffbd53d25beb4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 235–253.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def pullbackDiagonalMapIdIso :
    pullback (diagonal i)
        (pullback.map (f ≫ i) (g ≫ i) i i f g (𝟙 _) (Category.comp_id _) (Category.comp_id _)) ≅
      pullback f g := by
  refine ?_ ≪≫
    pullbackDiagonalMapIso i (𝟙 _) (f ≫ inv (pullback.fst _ _)) (g ≫ inv (pullback.fst _ _)) ≪≫ ?_
  · refine @asIso _ _ _ _ (pullback.map _ _ _ _ (𝟙 T) ((pullback.congrHom ?_ ?_).hom) (𝟙 _) ?_ ?_)
      ?_
    · rw [← Category.comp_id (pullback.snd ..), ← condition, Category.assoc, IsIso.inv_hom_id_assoc]
    · rw [← Category.comp_id (pullback.snd ..), ← condition, Category.assoc, IsIso.inv_hom_id_assoc]
    · rw [Category.comp_id, Category.id_comp]
    · ext <;> simp
    · infer_instance
  · refine @asIso _ _ _ _ (pullback.map _ _ _ _ (𝟙 _) (𝟙 _) (pullback.fst _ _) ?_ ?_) ?_
    · rw [Category.assoc, IsIso.inv_hom_id, Category.comp_id, Category.id_comp]
    · rw [Category.assoc, IsIso.inv_hom_id, Category.comp_id, Category.id_comp]
    · infer_instance

@[reassoc (attr := simp)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Diagonal/Variant34013e9a40b055428e1547b94d5bd423b732a336d6907219acb42f9f89821b0b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Diagonal/Variant34013e9a40b055428e1547b94d5bd423b732a336d6907219acb42f9f89821b0b.lean#L235).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8003fbd15489cd5aa93c9dc48e864453a98e0d65` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
