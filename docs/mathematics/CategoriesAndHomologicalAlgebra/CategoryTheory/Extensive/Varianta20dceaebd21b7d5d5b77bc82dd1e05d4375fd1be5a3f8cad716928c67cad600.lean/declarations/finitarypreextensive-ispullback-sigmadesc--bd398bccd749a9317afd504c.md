# FinitaryPreExtensive.isPullback_sigmaDesc

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a705d5bb-e87d-1827-8d6f-b688a788def7",
  "kind": "lemma",
  "lexical_name": "FinitaryPreExtensive.isPullback_sigmaDesc",
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
  "slug": "finitarypreextensive-ispullback-sigmadesc--bd398bccd749a9317afd504c",
  "source": {
    "blob": "400fb56da10be156e6cd5ef700f13a535fe5b96e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 623,
    "line": 599,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Extensive/Varianta20dceaebd21b7d5d5b77bc82dd1e05d4375fd1be5a3f8cad716928c67cad600.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bd398bccd749a9317afd504c9b386ebddbe931c49c44e2901ed2777e2de639ec",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Extensive/Varianta20dceaebd21b7d5d5b77bc82dd1e05d4375fd1be5a3f8cad716928c67cad600.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a705d5bb-e87d-1827-8d6f-b688a788def7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 599–623.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma FinitaryPreExtensive.isPullback_sigmaDesc [HasPullbacks C] [FinitaryPreExtensive C]
    {ι ι' : Type*} [Finite ι] [Finite ι'] {S : C} {X : ι → C} {Y : ι' → C}
    (f : ∀ i, X i ⟶ S) (g : ∀ i, Y i ⟶ S) :
    IsPullback
      (Limits.Sigma.desc fun (p : ι × ι') ↦ pullback.fst (f p.1) (g p.2) ≫ Sigma.ι X p.1)
      (Limits.Sigma.desc fun (p : ι × ι') ↦ pullback.snd (f p.1) (g p.2) ≫ Sigma.ι Y p.2)
      (Limits.Sigma.desc f) (Limits.Sigma.desc g) := by
  convert!
    IsUniversalColimit.isPullback_prod_of_isColimit (d :=
      Cofan.mk _ (Sigma.ι fun (p : ι × ι') ↦ pullback (f p.1) (g p.2))) (hd :=
      coproductIsCoproduct (fun (p : ι × ι') ↦ pullback (f p.1) (g p.2))) (a :=
      Cofan.mk _ <| fun i ↦ Sigma.ι _ i) (b := Cofan.mk _ <| fun i ↦ Sigma.ι _ i) ?_ ?_ f g
      (Sigma.desc f) (Sigma.desc g) (fun i j ↦ IsPullback.of_hasPullback (f i) (g j))
  · ext
    simp [Cofan.IsColimit.desc, Sigma.ι, coproductIsCoproduct]
  · ext
    simp [Cofan.IsColimit.desc, Sigma.ι, coproductIsCoproduct]
  · exact FinitaryPreExtensive.isUniversal_finiteCoproducts (coproductIsCoproduct X)
  · exact FinitaryPreExtensive.isUniversal_finiteCoproducts (coproductIsCoproduct Y)

end FiniteCoproducts

end Extensive

end CategoryTheory
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Extensive/Varianta20dceaebd21b7d5d5b77bc82dd1e05d4375fd1be5a3f8cad716928c67cad600.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Extensive/Varianta20dceaebd21b7d5d5b77bc82dd1e05d4375fd1be5a3f8cad716928c67cad600.lean#L599).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `400fb56da10be156e6cd5ef700f13a535fe5b96e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
