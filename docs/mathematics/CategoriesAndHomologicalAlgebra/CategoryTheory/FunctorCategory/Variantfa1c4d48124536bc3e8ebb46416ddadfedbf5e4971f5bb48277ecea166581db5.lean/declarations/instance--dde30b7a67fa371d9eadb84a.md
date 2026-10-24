# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:03b76d112a4bc4af938d9df059a9cf316c91441d645e27e4f54a2b9a6555ecc3",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--dde30b7a67fa371d9eadb84a",
  "source": {
    "blob": "b9eac73a12a83ca76aec8a96677b5a40a8f86846",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 291,
    "line": 277,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variantfa1c4d48124536bc3e8ebb46416ddadfedbf5e4971f5bb48277ecea166581db5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:dde30b7a67fa371d9eadb84ad07ded84c5311e08eb56262810f31400f3a27499",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variantfa1c4d48124536bc3e8ebb46416ddadfedbf5e4971f5bb48277ecea166581db5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:03b76d112a4bc4af938d9df059a9cf316c91441d645e27e4f54a2b9a6555ecc3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 277–291.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable instance : PreservesColimitsOfShape J (lim : (K ⥤ D ⥤ C) ⥤ _) :=
  preservesColimitsOfShape_of_evaluation _ _ (fun d =>
    let i : (lim : (K ⥤ D ⥤ C) ⥤ _) ⋙ (evaluation D C).obj d ≅
        limit ((whiskeringRight K (D ⥤ C) C).obj ((evaluation D C).obj d)).flip :=
      NatIso.ofComponents (fun X => (limitObjIsoLimitCompEvaluation _ _) ≪≫
          (by exact HasLimit.isoOfNatIso (Iso.refl _)) ≪≫
          (limitObjIsoLimitCompEvaluation _ _).symm)
        (fun {F G} η => limit_obj_ext (fun j => by simp [← NatTrans.comp_app]))
    preservesColimitsOfShape_of_natIso (i ≪≫ limitFlipIsoCompLim _).symm)

end

end

end CategoryTheory
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variantfa1c4d48124536bc3e8ebb46416ddadfedbf5e4971f5bb48277ecea166581db5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variantfa1c4d48124536bc3e8ebb46416ddadfedbf5e4971f5bb48277ecea166581db5.lean#L277).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b9eac73a12a83ca76aec8a96677b5a40a8f86846` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
