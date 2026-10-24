# IsPushout.of_forall_isPushout_app

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f3b026e0-faa9-8046-1e34-0496fc59e638",
  "kind": "lemma",
  "lexical_name": "IsPushout.of_forall_isPushout_app",
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
  "slug": "ispushout-of-forall-ispushout-app--850505760d9fa556cc7643c9",
  "source": {
    "blob": "3d8afc54fa203c3bf7d6ee6ab5b22bf39a62aebf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 942,
    "line": 933,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant719a18d4714c604c7ee2d6efe11c2cf51a9969c3f08b1aeb27198b24ecd8cadf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:850505760d9fa556cc7643c9cc6c94f896215222d7ba97796685b10f4719d44e",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant719a18d4714c604c7ee2d6efe11c2cf51a9969c3f08b1aeb27198b24ecd8cadf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f3b026e0-faa9-8046-1e34-0496fc59e638`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 933–942.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma IsPushout.of_forall_isPushout_app {F₁ F₂ F₃ F₄ : C ⥤ D}
    {f₁ : F₁ ⟶ F₂} {f₂ : F₁ ⟶ F₃} {f₃ : F₂ ⟶ F₄} {f₄ : F₃ ⟶ F₄}
    (h : ∀ (X : C), IsPushout (f₁.app X) (f₂.app X) (f₃.app X) (f₄.app X)) :
    IsPushout f₁ f₂ f₃ f₄ where
  w := by
    ext X
    simpa using (h X).w
  isColimit' := ⟨evaluationJointlyReflectsColimits _ fun X =>
    (PushoutCocone.isColimitMapCoconeEquiv _ _).symm (h X).isColimit⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant719a18d4714c604c7ee2d6efe11c2cf51a9969c3f08b1aeb27198b24ecd8cadf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant719a18d4714c604c7ee2d6efe11c2cf51a9969c3f08b1aeb27198b24ecd8cadf.lean#L933).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3d8afc54fa203c3bf7d6ee6ab5b22bf39a62aebf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
