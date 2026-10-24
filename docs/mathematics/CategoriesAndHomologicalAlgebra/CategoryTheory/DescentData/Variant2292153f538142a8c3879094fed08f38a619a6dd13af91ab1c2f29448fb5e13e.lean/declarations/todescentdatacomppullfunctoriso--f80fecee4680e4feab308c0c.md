# toDescentDataCompPullFunctorIso

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:016a8c4dd70816a1146229a5d21af881145c365a8c8b969dc8226784237af216",
  "kind": "def",
  "lexical_name": "toDescentDataCompPullFunctorIso",
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
  "slug": "todescentdatacomppullfunctoriso--f80fecee4680e4feab308c0c",
  "source": {
    "blob": "492163824a61b7e50e7acb6b3cd55dc55128a40f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 301,
    "line": 266,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/DescentData/Variant2292153f538142a8c3879094fed08f38a619a6dd13af91ab1c2f29448fb5e13e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f80fecee4680e4feab308c0cc0a0e0066571b4feca92ff0359679acfee3633e3",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/DescentData/Variant2292153f538142a8c3879094fed08f38a619a6dd13af91ab1c2f29448fb5e13e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:016a8c4dd70816a1146229a5d21af881145c365a8c8b969dc8226784237af216`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 266–301.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def toDescentDataCompPullFunctorIso :
    F.toDescentData f ⋙ pullFunctor F w ≅ (F.map p.op.toLoc).toFunctor ⋙ F.toDescentData f' :=
  NatIso.ofComponents
    (fun M ↦ isoMk (fun i ↦ (Cat.Hom.toNatIso
        (F.isoMapOfCommSq (CommSq.mk (w i)).op.toLoc)).symm.app M)
      (fun Y q i₁ i₂ f₁ f₂ hf₁ hf₂ ↦ by
        dsimp
        rw [F.isoMapOfCommSq_eq _ _ rfl, F.isoMapOfCommSq_eq _ _ rfl]
        dsimp
        simp only [Functor.map_comp, Category.assoc]
        rw [← F.mapComp'₀₂₃_inv_comp_mapComp'₀₁₃_hom_app_assoc p.op.toLoc
            (f' i₁).op.toLoc f₁.op.toLoc _ q.op.toLoc (p.op.toLoc ≫ q.op.toLoc) rfl
            (by grind) (by grind) M,
          pullFunctorObjHom_eq _ _ _ _ _ (q ≫ p) (f₁ ≫ p' i₁) (f₂ ≫ p' i₂),
          ← cancel_mono ((F.mapComp' (f' i₂).op.toLoc f₂.op.toLoc q.op.toLoc
            (by grind)).inv.toNatTrans.app _)]
        dsimp
        simp only [Category.assoc,
          ← F.mapComp'₀₂₃_inv_comp_mapComp'₀₁₃_hom_app p.op.toLoc
            (f' i₂).op.toLoc f₂.op.toLoc _ q.op.toLoc (p.op.toLoc ≫ q.op.toLoc) rfl
            (by grind) (by grind) M,
          ← F.mapComp'_inv_whiskerRight_mapComp'₀₂₃_inv_app_assoc (f (α i₁)).op.toLoc
            (p' i₁).op.toLoc f₁.op.toLoc (p.op.toLoc ≫ (f' i₁).op.toLoc) _
            (p.op.toLoc ≫ q.op.toLoc) (by grind) rfl (by grind) M,
          F.mapComp'_inv_whiskerRight_mapComp'₀₂₃_inv_app_assoc (f (α i₂)).op.toLoc
            (p' i₂).op.toLoc f₂.op.toLoc (p.op.toLoc ≫ (f' i₂).op.toLoc) _
            (p.op.toLoc ≫ q.op.toLoc) (by grind) rfl (by grind) M]
        simp))
    (fun f ↦ by
      ext i
      exact (F.isoMapOfCommSq (CommSq.mk (w i)).op.toLoc).inv.toNatTrans.naturality f)

/-- Up to a (unique) isomorphism, the functor
`pullFunctor : F.DescentData f ⥤ F.DescentData f'` does not depend
on the auxiliary data. -/
@[simps!]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/DescentData/Variant2292153f538142a8c3879094fed08f38a619a6dd13af91ab1c2f29448fb5e13e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/DescentData/Variant2292153f538142a8c3879094fed08f38a619a6dd13af91ab1c2f29448fb5e13e.lean#L266).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `492163824a61b7e50e7acb6b3cd55dc55128a40f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
