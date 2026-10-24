# Limits.IsColimit.underPost

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9af67c79e7a2801e25e731b2fa9bc231402853d8cc9c8b9d46ba466fa4e27071",
  "kind": "def",
  "lexical_name": "Limits.IsColimit.underPost",
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
  "slug": "limits-iscolimit-underpost--44bc2fb6e54df3e75d3abe41",
  "source": {
    "blob": "74a11bcbbb7a57c65121d2298588da40b6e9e79e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1257,
    "line": 1244,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Final/Variant67ed9e8e812ee863d88f5cfc54b375ef00787644aa30128c04fb9cd62c161023.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:44bc2fb6e54df3e75d3abe417fc168cfdf85432162d460c5eb11ed4b38303deb",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Final/Variant67ed9e8e812ee863d88f5cfc54b375ef00787644aa30128c04fb9cd62c161023.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9af67c79e7a2801e25e731b2fa9bc231402853d8cc9c8b9d46ba466fa4e27071`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1244–1257.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def Limits.IsColimit.underPost {c : Cocone D} (hc : IsColimit c) (j : J)
    [(CategoryTheory.Under.forget j).Final] : IsColimit (c.underPost j) := by
  haveI : Nonempty (Under j) := ⟨CategoryTheory.Under.mk (𝟙 j)⟩
  letI c'' := Under.liftCocone (CategoryTheory.Under.forget j ⋙ D) (X := D.obj j)
    ((Functor.constComp _ _ _).inv ≫ Functor.whiskerRight ((Under.forgetCone j).π) D)
    (c.whisker (CategoryTheory.Under.forget j)) (c.ι.app j) (by cat_disch)
  letI hc'' : IsColimit c'' :=
    Under.isColimitLiftCocone _ _ _ _ _ <| (Functor.Final.isColimitWhiskerEquiv _ _).symm hc
  refine IsColimit.equivOfNatIsoOfIso ?_ _ _ ?_ hc''
  · exact NatIso.ofComponents (fun k ↦ CategoryTheory.Under.isoMk (Iso.refl _))
  · exact Cocone.ext (Iso.refl _)

end Restriction

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Final/Variant67ed9e8e812ee863d88f5cfc54b375ef00787644aa30128c04fb9cd62c161023.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Final/Variant67ed9e8e812ee863d88f5cfc54b375ef00787644aa30128c04fb9cd62c161023.lean#L1244).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `74a11bcbbb7a57c65121d2298588da40b6e9e79e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
