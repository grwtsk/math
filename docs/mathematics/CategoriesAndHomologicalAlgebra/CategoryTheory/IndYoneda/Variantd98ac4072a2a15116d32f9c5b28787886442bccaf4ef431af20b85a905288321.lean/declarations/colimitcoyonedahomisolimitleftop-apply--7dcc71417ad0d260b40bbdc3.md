# colimitCoyonedaHomIsoLimitLeftOp_π_apply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:41a2ca29-e442-5e84-9ef1-8a20a63397a8",
  "kind": "lemma",
  "lexical_name": "colimitCoyonedaHomIsoLimitLeftOp_π_apply",
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
  "slug": "colimitcoyonedahomisolimitleftop-apply--7dcc71417ad0d260b40bbdc3",
  "source": {
    "blob": "1614cd4888a75d667be231ac022ececed4f4ab5a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 203,
    "line": 185,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/IndYoneda/Variantd98ac4072a2a15116d32f9c5b28787886442bccaf4ef431af20b85a905288321.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7dcc71417ad0d260b40bbdc3781ec019108391fd70ffed652596ea801ef1f7e2",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/IndYoneda/Variantd98ac4072a2a15116d32f9c5b28787886442bccaf4ef431af20b85a905288321.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:41a2ca29-e442-5e84-9ef1-8a20a63397a8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 185–203.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma colimitCoyonedaHomIsoLimitLeftOp_π_apply (f : colimit (D ⋙ coyoneda) ⟶ F) (i : I) :
    limit.π (D.leftOp ⋙ F ⋙ uliftFunctor.{u₁}) (op i)
        ((colimitCoyonedaHomIsoLimitLeftOp D F).hom f) =
      ⟨f.app (D.obj i).unop ((colimit.ι (D ⋙ coyoneda) i).app (D.obj i).unop
          (𝟙 (D.obj i).unop))⟩ :=
  haveI : HasColimit (D.leftOp.rightOp ⋙ coyoneda) :=
    inferInstanceAs <| HasColimit (D ⋙ coyoneda)
  colimitCoyonedaHomIsoLimit_π_apply _ _ _ _

end ProCoyonedaContravariantLeftOp

section IndYonedaCovariant

variable (D : Iᵒᵖ ⥤ Cᵒᵖ) (F : Cᵒᵖ ⥤ Type u₂)
variable [HasColimit (D.unop ⋙ yoneda)] [HasLimitsOfShape Iᵒᵖ (Type (max u₁ u₂))]

/-- Ind-Yoneda lemma: morphisms from colimit of yoneda of diagram `D` to `F` is limit of `F`
evaluated at `D`. This version is for covariant diagrams, see `colimitYonedaHomIsoLimit'` for a
contravariant version. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/IndYoneda/Variantd98ac4072a2a15116d32f9c5b28787886442bccaf4ef431af20b85a905288321.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/IndYoneda/Variantd98ac4072a2a15116d32f9c5b28787886442bccaf4ef431af20b85a905288321.lean#L185).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1614cd4888a75d667be231ac022ececed4f4ab5a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
