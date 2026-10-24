# isLimitOfIsPullbackOfIsConnected

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e2d40174a956c7a23dbef49574fec5f513d954948480c4f08f3767f2816bf058",
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
  "slug": "islimitofispullbackofisconnected--a9a18a30b2a36ebccf8dd37c",
  "source": {
    "blob": "91ca70fad035e239ba683d2449e4c2b5afaadeab",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 63,
    "line": 37,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Connected/Variantbbd4f5fcf1d14ee9990f95e69890885e8b2fc68b143ce1df1a029035ecd1a147.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a9a18a30b2a36ebccf8dd37c6b2fb5815682f81913a677d6f1628f8772b913a1",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Connected/Variantbbd4f5fcf1d14ee9990f95e69890885e8b2fc68b143ce1df1a029035ecd1a147.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e2d40174a956c7a23dbef49574fec5f513d954948480c4f08f3767f2816bf058`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 37–63.

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

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Connected/Variantbbd4f5fcf1d14ee9990f95e69890885e8b2fc68b143ce1df1a029035ecd1a147.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Connected/Variantbbd4f5fcf1d14ee9990f95e69890885e8b2fc68b143ce1df1a029035ecd1a147.lean#L37).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `91ca70fad035e239ba683d2449e4c2b5afaadeab` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
