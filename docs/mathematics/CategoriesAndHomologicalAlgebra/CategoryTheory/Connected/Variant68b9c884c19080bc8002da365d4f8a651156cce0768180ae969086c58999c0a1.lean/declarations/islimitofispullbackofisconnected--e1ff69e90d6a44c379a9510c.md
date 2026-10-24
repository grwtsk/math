# isLimitOfIsPullbackOfIsConnected

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f0e3f56f5f500d92e528faf376b137055ffa4b8d4190d5f6e2c54dc93b782e99",
  "kind": "def",
  "lexical_name": "isLimitOfIsPullbackOfIsConnected",
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
  "slug": "islimitofispullbackofisconnected--e1ff69e90d6a44c379a9510c",
  "source": {
    "blob": "be3e91d6113cbc90d71fa9020a92b5beb3d7de91",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 55,
    "line": 29,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Connected/Variant68b9c884c19080bc8002da365d4f8a651156cce0768180ae969086c58999c0a1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e1ff69e90d6a44c379a9510ceae6fedd37deb37cb8d1bc326c25dff88edf8e5c",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Connected/Variant68b9c884c19080bc8002da365d4f8a651156cce0768180ae969086c58999c0a1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f0e3f56f5f500d92e528faf376b137055ffa4b8d4190d5f6e2c54dc93b782e99`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 29–55.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def isLimitOfIsPullbackOfIsConnected
    {I C : Type*} [Category* I] [IsConnected I] [Category* C] {F G : I ⥤ C}
    (α : F ⟶ G) (cF : Cone F) (cG : Cone G)
    (f : (Cone.postcompose α).obj cF ⟶ cG)
    (hf : ∀ i, IsPullback (cF.π.app i) f.hom (α.app i) (cG.π.app i))
    (hcG : IsLimit cG) : IsLimit cF where
  lift s := (hf (Classical.arbitrary _)).lift
    (s.π.app (Classical.arbitrary _)) (hcG.lift ((Cone.postcompose α).obj s)) (by simp)
  fac s j := by
    let f (i : _) : s.pt ⟶ cF.pt :=
      (hf i).lift (s.π.app i) (hcG.lift ((Cone.postcompose α).obj s)) (by simp)
    have (i j : _) : f i = f j := by
      refine constant_of_preserves_morphisms f (fun j₁ j₂ g ↦ ?_) i j
      refine (hf j₂).hom_ext ?_ (by simp [f])
      rw [IsPullback.lift_fst, ← cF.w g, IsPullback.lift_fst_assoc, Cone.w]
    change f _ ≫ _ = _
    rw [this _ j]
    simp [f]
  uniq s g hg := (hf (Classical.arbitrary _)).hom_ext (by simp [hg])
    (hcG.hom_ext <| by simp [reassoc_of% hg])

/--
Let `F` and `G` be two diagrams indexed by a connected `I`, and `X` and `Y` be two cocones over
`F` and `G` respectively, with maps `α : F ⟶ G` and `f : X ⟶ Y` that commutes with the cocone maps.
Suppose `Y = X ⨿[F i] G i` for all `i` and `Y = colim G`, then `X = colim F`.
-/
noncomputable
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Connected/Variant68b9c884c19080bc8002da365d4f8a651156cce0768180ae969086c58999c0a1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Connected/Variant68b9c884c19080bc8002da365d4f8a651156cce0768180ae969086c58999c0a1.lean#L29).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `be3e91d6113cbc90d71fa9020a92b5beb3d7de91` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
