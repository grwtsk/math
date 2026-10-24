# preservesFinOfPreservesBinaryAndTerminal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0a1b1b8b-4bb0-e17d-c2d1-e26b1b7b487b",
  "kind": "lemma",
  "lexical_name": "preservesFinOfPreservesBinaryAndTerminal",
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
  "slug": "preservesfinofpreservesbinaryandterminal--34808128aa26947867951a3a",
  "source": {
    "blob": "953d5c2a5065c6bfaff019246da4178cad64372a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 162,
    "line": 134,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FiniteProductsOfBinaryProducts/Variantb5e3da9b286753babc38b542b53dd935ea230a53eed71a34cea5acfbeaa8983b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:34808128aa26947867951a3ad4114384c56f224ce597f9799d8ae98c1df0abc4",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/FiniteProductsOfBinaryProducts/Variantb5e3da9b286753babc38b542b53dd935ea230a53eed71a34cea5acfbeaa8983b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0a1b1b8b-4bb0-e17d-c2d1-e26b1b7b487b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 134–162.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma preservesFinOfPreservesBinaryAndTerminal :
    ∀ (n : ℕ) (f : Fin n → C), PreservesLimit (Discrete.functor f) F
  | 0 => fun f => by
    let : PreservesLimitsOfShape (Discrete (Fin 0)) F :=
      preservesLimitsOfShape_of_equiv.{0, 0} (Discrete.equivalence finZeroEquiv'.symm) _
    infer_instance
  | n + 1 => by
    have := preservesFinOfPreservesBinaryAndTerminal n
    intro f
    apply
      preservesLimit_of_preserves_limit_cone
        (extendFanIsLimit f (limit.isLimit _) (limit.isLimit _)) _
    apply (isLimitMapConeFanMkEquiv _ _ _).symm _
    let :=
      extendFanIsLimit (fun i => F.obj (f i)) (isLimitOfHasProductOfPreservesLimit F _)
        (isLimitOfHasBinaryProductOfPreservesLimit F _ _)
    refine IsLimit.ofIsoLimit this ?_
    apply Cone.ext _ _
    · apply Iso.refl _
    rintro ⟨j⟩
    refine Fin.inductionOn j ?_ ?_
    · apply (Category.id_comp _).symm
    · rintro i _
      dsimp [extendFan_π_app, Iso.refl_hom, Fan.mk_π_app]
      change F.map _ ≫ _ = 𝟙 _ ≫ _
      simp only [id_comp, ← F.map_comp]
      rfl

/-- If `F` preserves the terminal object and binary products then it preserves finite products. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/FiniteProductsOfBinaryProducts/Variantb5e3da9b286753babc38b542b53dd935ea230a53eed71a34cea5acfbeaa8983b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FiniteProductsOfBinaryProducts/Variantb5e3da9b286753babc38b542b53dd935ea230a53eed71a34cea5acfbeaa8983b.lean#L134).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `953d5c2a5065c6bfaff019246da4178cad64372a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
