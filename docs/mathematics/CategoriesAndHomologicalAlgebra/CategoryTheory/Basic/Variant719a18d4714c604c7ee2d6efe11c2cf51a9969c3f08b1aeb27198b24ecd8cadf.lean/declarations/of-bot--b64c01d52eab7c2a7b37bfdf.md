# of_bot'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b2f8ecf0-a528-6249-5721-f5f92a015f38",
  "kind": "theorem",
  "lexical_name": "of_bot'",
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
  "slug": "of-bot--b64c01d52eab7c2a7b37bfdf",
  "source": {
    "blob": "3d8afc54fa203c3bf7d6ee6ab5b22bf39a62aebf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 295,
    "line": 290,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant719a18d4714c604c7ee2d6efe11c2cf51a9969c3f08b1aeb27198b24ecd8cadf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b64c01d52eab7c2a7b37bfdff80441631169e2f5568467852b56810f93a7b69c",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant719a18d4714c604c7ee2d6efe11c2cf51a9969c3f08b1aeb27198b24ecd8cadf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b2f8ecf0-a528-6249-5721-f5f92a015f38`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 290–295.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem of_bot' {X₁₁ X₁₂ X₂₁ X₂₂ X₃₁ X₃₂ : C} {h₁₁ : X₁₁ ⟶ X₁₂} {h₂₁ : X₂₁ ⟶ X₂₂}
    {h₃₁ : X₃₁ ⟶ X₃₂} {v₃₁ : X₁₁ ⟶ X₃₁} {v₁₂ : X₁₂ ⟶ X₂₂} {v₂₁ : X₂₁ ⟶ X₃₁} {v₂₂ : X₂₂ ⟶ X₃₂}
    (s : IsPullback h₁₁ v₃₁ (v₁₂ ≫ v₂₂) h₃₁) (t : IsPullback h₂₁ v₂₁ v₂₂ h₃₁) :
    IsPullback h₁₁ (t.lift (h₁₁ ≫ v₁₂) v₃₁ (by rw [Category.assoc, s.w])) v₁₂ h₂₁ :=
  of_bot ((t.lift_snd _ _ _) ▸ s) (by simp only [lift_fst]) t

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant719a18d4714c604c7ee2d6efe11c2cf51a9969c3f08b1aeb27198b24ecd8cadf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant719a18d4714c604c7ee2d6efe11c2cf51a9969c3f08b1aeb27198b24ecd8cadf.lean#L290).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3d8afc54fa203c3bf7d6ee6ab5b22bf39a62aebf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
