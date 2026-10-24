# surjective_π_app_zero_of_surjective_map

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b631b876-e319-da3e-9ad7-a0a13261ac17",
  "kind": "lemma",
  "lexical_name": "surjective_π_app_zero_of_surjective_map",
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
  "slug": "surjective-app-zero-of-surjective-map--7e7336d65f2c38849351ba37",
  "source": {
    "blob": "69c410916f085e56991cb4c4bba0d99448931472",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 128,
    "line": 107,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant9a71c5386a0dbfdfffd2e4fbae60d7fcc730f000fc073899d1896079b0bda6a2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7e7336d65f2c38849351ba3755dc8283e6e983c3f89eb7a81aae01cb78ee58ad",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant9a71c5386a0dbfdfffd2e4fbae60d7fcc730f000fc073899d1896079b0bda6a2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b631b876-e319-da3e-9ad7-a0a13261ac17`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 107–128.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma surjective_π_app_zero_of_surjective_map {C : Type u} [Category.{v} C] {FC : C → C → Type*}
    {CC : C → Type v} [∀ X Y, FunLike (FC X Y) (CC X) (CC Y)] [ConcreteCategory.{v} C FC]
    [PreservesLimitsOfShape ℕᵒᵖ (forget C)] {F : ℕᵒᵖ ⥤ C} {c : Cone F}
    (hc : IsLimit c) (hF : ∀ n, Function.Surjective (F.map (homOfLE (Nat.le_succ n)).op)) :
    Function.Surjective (c.π.app ⟨0⟩) :=
  Types.surjective_π_app_zero_of_surjective_map (isLimitOfPreserves (forget C) hc) hF

end Surjective

end Limits

section Colimits

section

variable {C : Type u} [Category.{v} C] {FC : C → C → Type*} {CC : C → Type t}
variable [∀ X Y, FunLike (FC X Y) (CC X) (CC Y)] [ConcreteCategory.{t} C FC]
variable {J : Type w} [Category.{r} J] (F : J ⥤ C)

section
variable [PreservesColimit F (forget C)]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant9a71c5386a0dbfdfffd2e4fbae60d7fcc730f000fc073899d1896079b0bda6a2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant9a71c5386a0dbfdfffd2e4fbae60d7fcc730f000fc073899d1896079b0bda6a2.lean#L107).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `69c410916f085e56991cb4c4bba0d99448931472` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
