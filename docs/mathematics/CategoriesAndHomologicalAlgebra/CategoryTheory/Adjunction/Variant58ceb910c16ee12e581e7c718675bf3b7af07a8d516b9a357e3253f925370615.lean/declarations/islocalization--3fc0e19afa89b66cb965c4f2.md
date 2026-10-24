# isLocalization

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:01bcfa0b-31ea-4d9d-671b-fa4394849874",
  "kind": "lemma",
  "lexical_name": "isLocalization",
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
  "slug": "islocalization--3fc0e19afa89b66cb965c4f2",
  "source": {
    "blob": "723c5a92599e2021e85103aa752e4ad73745c718",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 158,
    "line": 139,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variant58ceb910c16ee12e581e7c718675bf3b7af07a8d516b9a357e3253f925370615.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3fc0e19afa89b66cb965c4f2c2e0f421c4a884ae455b421751cb26612609c1f2",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variant58ceb910c16ee12e581e7c718675bf3b7af07a8d516b9a357e3253f925370615.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:01bcfa0b-31ea-4d9d-671b-fa4394849874`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 139–158.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isLocalization [F.Full] [F.Faithful] :
    G.IsLocalization ((MorphismProperty.isomorphisms C₂).inverseImage G) := by
  let W := ((MorphismProperty.isomorphisms C₂).inverseImage G)
  have hG : W.IsInvertedBy G := fun _ _ _ hf => hf
  have : ∀ (X : C₁), IsIso ((whiskerRight adj.unit W.Q).app X) := fun X =>
    Localization.inverts W.Q W _ (by
      change IsIso _
      infer_instance)
  have : IsIso (whiskerRight adj.unit W.Q) := NatIso.isIso_of_isIso_app _
  let e : W.Localization ≌ C₂ := Equivalence.mk (Localization.lift G hG W.Q) (F ⋙ W.Q)
    (liftNatIso W.Q W W.Q (G ⋙ F ⋙ W.Q) _ _
    (W.Q.leftUnitor.symm ≪≫ asIso (whiskerRight adj.unit W.Q)))
    (Functor.associator _ _ _ ≪≫ isoWhiskerLeft _ (Localization.fac G hG W.Q) ≪≫
      asIso adj.counit)
  apply Functor.IsLocalization.of_equivalence_target W.Q W G e
    (Localization.fac G hG W.Q)

end Adjunction

end CategoryTheory
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variant58ceb910c16ee12e581e7c718675bf3b7af07a8d516b9a357e3253f925370615.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variant58ceb910c16ee12e581e7c718675bf3b7af07a8d516b9a357e3253f925370615.lean#L139).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `723c5a92599e2021e85103aa752e4ad73745c718` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
