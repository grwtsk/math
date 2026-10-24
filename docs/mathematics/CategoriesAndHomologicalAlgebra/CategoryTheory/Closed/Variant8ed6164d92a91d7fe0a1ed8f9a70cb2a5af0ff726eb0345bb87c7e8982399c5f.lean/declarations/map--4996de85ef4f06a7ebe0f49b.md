# map

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b300ed5284bb0467551f0567f9947a54de8e0ca7409695d9564250247806e8b4",
  "kind": "def",
  "lexical_name": "map",
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
  "slug": "map--4996de85ef4f06a7ebe0f49b",
  "source": {
    "blob": "e53d5f616b9fea9b05cd15695d5346cdf3e4d928",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 134,
    "line": 102,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Closed/Variant8ed6164d92a91d7fe0a1ed8f9a70cb2a5af0ff726eb0345bb87c7e8982399c5f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4996de85ef4f06a7ebe0f49b5c8e38e44b95fce37bcaefc73e1216a0bf2aa9fe",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Closed/Variant8ed6164d92a91d7fe0a1ed8f9a70cb2a5af0ff726eb0345bb87c7e8982399c5f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b300ed5284bb0467551f0567f9947a54de8e0ca7409695d9564250247806e8b4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 102–134.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def map (ℌ : DayConvolutionInternalHom F G H) {G' : C ⥤ V} {H' : C ⥤ V}
    (f : G ⟶ G') (ℌ' : DayConvolutionInternalHom F G' H') :
    H ⟶ H' where
  app c := Wedge.IsLimit.lift (ℌ'.isLimitWedge c)
    (fun j ↦ (ℌ.π c j) ≫
      (dayConvolutionInternalHomDiagramFunctor
        F |>.map f |>.app c |>.app (op j) |>.app j))
    (fun ⦃j j'⦄ φ ↦ by
      have := congrArg (fun t ↦ t.app j') <|
        dayConvolutionInternalHomDiagramFunctor
          F |>.map f |>.app c |>.naturality φ.op
      dsimp at this ⊢
      rw [Category.assoc, ← (ihom (F.obj j)).map_comp, ← f.naturality,
        Functor.map_comp, reassoc_of% ℌ.hπ]
      simp)
  naturality {c c'} f := by
    apply Wedge.IsLimit.hom_ext (ℌ'.isLimitWedge c')
    intro j
    dsimp
    simp only [Category.assoc, map_comp_π]
    rw [← Wedge.mk_ι
        (F := dayConvolutionInternalHomDiagramFunctor F |>.obj _ |>.obj c')
        (H'.obj c') (ℌ'.π c') (ℌ'.hπ c'),
      ← Wedge.mk_ι
        (F := dayConvolutionInternalHomDiagramFunctor F |>.obj _ |>.obj c)
        (H'.obj c) (ℌ'.π c) (ℌ'.hπ c),
      Wedge.IsLimit.lift_ι (ℌ'.isLimitWedge c'),
      Wedge.IsLimit.lift_ι_assoc (ℌ'.isLimitWedge c)]
    simp [← Functor.map_comp]

set_option backward.defeqAttrib.useBackward true in
set_option backward.isDefEq.respectTransparency false in
@[reassoc (attr := simp)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Closed/Variant8ed6164d92a91d7fe0a1ed8f9a70cb2a5af0ff726eb0345bb87c7e8982399c5f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Closed/Variant8ed6164d92a91d7fe0a1ed8f9a70cb2a5af0ff726eb0345bb87c7e8982399c5f.lean#L102).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e53d5f616b9fea9b05cd15695d5346cdf3e4d928` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
