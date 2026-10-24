# sheafCoyonedaHom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:565701dc4be6885de638b1d1faea45b6b9ad862d60f1fe351e9f934f85b9a0f4",
  "kind": "def",
  "lexical_name": "sheafCoyonedaHom",
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
  "slug": "sheafcoyonedahom--79ddbbd88b6ed32759d13e1e",
  "source": {
    "blob": "ced1ba6d6f0a95c7992a7d0489e0b2eac6d37151",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 347,
    "line": 322,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantda4aff72ba8c1f4ee643bce52a7d93b18fefa4453bda51d197a038e4f9fb3c71.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:79ddbbd88b6ed32759d13e1e5e4ea3e46057294ab64754abe58b201d35aa7261",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantda4aff72ba8c1f4ee643bce52a7d93b18fefa4453bda51d197a038e4f9fb3c71.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:565701dc4be6885de638b1d1faea45b6b9ad862d60f1fe351e9f934f85b9a0f4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 322–347.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def sheafCoyonedaHom (α : G.op ⋙ ℱ ⟶ G.op ⋙ ℱ'.obj) :
    coyoneda ⋙ (whiskeringLeft Dᵒᵖ A (Type _)).obj ℱ ⟶
      coyoneda ⋙ (whiskeringLeft Dᵒᵖ A (Type _)).obj ℱ'.obj where
  app X := presheafHom (homOver α (unop X))
  naturality X Y f := by
    ext U x
    change
      appHom (homOver α (unop Y)) (unop U) (f.unop ≫ x) =
        f.unop ≫ appHom (homOver α (unop X)) (unop U) x
    symm
    apply sheaf_eq_amalgamation
    · apply G.is_cover_of_isCoverDense
    -- Porting note: the following line closes a goal which didn't exist before reenableeta
    · exact pushforwardFamily_compatible (homOver α Y.unop) (f.unop ≫ x)
    intro Y' f' hf'
    dsimp
    simp only [Category.assoc]
    congr 1
    conv_lhs => rw [← hf'.some.fac]
    simp only [← Category.assoc, op_comp, Functor.map_comp]
    congr 1
    exact (appHom_restrict (homOver α (unop X)) hf'.some.map.op x).trans (by simp)

/--
(Implementation). `sheafCoyonedaHom` but the order of the arguments of the functor are swapped.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantda4aff72ba8c1f4ee643bce52a7d93b18fefa4453bda51d197a038e4f9fb3c71.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantda4aff72ba8c1f4ee643bce52a7d93b18fefa4453bda51d197a038e4f9fb3c71.lean#L322).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ced1ba6d6f0a95c7992a7d0489e0b2eac6d37151` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
