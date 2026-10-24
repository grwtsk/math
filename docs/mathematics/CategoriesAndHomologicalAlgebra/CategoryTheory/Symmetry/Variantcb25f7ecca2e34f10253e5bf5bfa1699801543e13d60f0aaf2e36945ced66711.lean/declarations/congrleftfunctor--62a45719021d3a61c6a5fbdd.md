# congrLeftFunctor

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9434afa1d5f0eb78255134ebbac7ae9920e215873302000c168c0c26867fcd20",
  "kind": "def",
  "lexical_name": "congrLeftFunctor",
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
  "slug": "congrleftfunctor--62a45719021d3a61c6a5fbdd",
  "source": {
    "blob": "f1aa6e8321e2b5901e515ae7ee015e8e0b894d70",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 122,
    "line": 110,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Symmetry/Variantcb25f7ecca2e34f10253e5bf5bfa1699801543e13d60f0aaf2e36945ced66711.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:62a45719021d3a61c6a5fbdde9bb1994c1b10a91015e4d814f0d2dcd406d0223",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Symmetry/Variantcb25f7ecca2e34f10253e5bf5bfa1699801543e13d60f0aaf2e36945ced66711.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9434afa1d5f0eb78255134ebbac7ae9920e215873302000c168c0c26867fcd20`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 110–122.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def congrLeftFunctor (E : Type*) [Category* E] : (C ≌ D) ⥤ ((C ⥤ E) ≌ (D ⥤ E))ᵒᵖ :=
  Functor.rightOp
    { obj f := f.unop.congrLeft
      map {e f} α := mkHom <| (whiskeringLeft _ _ _).map <|
        conjugateEquiv e.unop.toAdjunction f.unop.toAdjunction <| asNatTrans <|
          Quiver.Hom.unop α
      map_comp _ _ := by
        ext
        simp [← map_comp] }

end Equivalence

end CategoryTheory
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Symmetry/Variantcb25f7ecca2e34f10253e5bf5bfa1699801543e13d60f0aaf2e36945ced66711.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Symmetry/Variantcb25f7ecca2e34f10253e5bf5bfa1699801543e13d60f0aaf2e36945ced66711.lean#L110).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f1aa6e8321e2b5901e515ae7ee015e8e0b894d70` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
