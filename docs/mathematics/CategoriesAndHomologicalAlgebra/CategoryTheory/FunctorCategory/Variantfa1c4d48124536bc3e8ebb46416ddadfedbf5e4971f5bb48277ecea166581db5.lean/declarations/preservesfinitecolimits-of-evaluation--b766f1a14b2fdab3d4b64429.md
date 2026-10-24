# preservesFiniteColimits_of_evaluation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:32b522ab-a90d-49b5-8bb7-a3dd6457f217",
  "kind": "lemma",
  "lexical_name": "preservesFiniteColimits_of_evaluation",
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
  "slug": "preservesfinitecolimits-of-evaluation--b766f1a14b2fdab3d4b64429",
  "source": {
    "blob": "b9eac73a12a83ca76aec8a96677b5a40a8f86846",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 259,
    "line": 241,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variantfa1c4d48124536bc3e8ebb46416ddadfedbf5e4971f5bb48277ecea166581db5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b766f1a14b2fdab3d4b64429a9528f5e7e5da1622c11b75a3abe914cef947049",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variantfa1c4d48124536bc3e8ebb46416ddadfedbf5e4971f5bb48277ecea166581db5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:32b522ab-a90d-49b5-8bb7-a3dd6457f217`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 241–259.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma preservesFiniteColimits_of_evaluation {D : Type*} [Category* D] {E : Type*} [Category* E]
    (F : C ⥤ D ⥤ E) (h : ∀ d : D, PreservesFiniteColimits (F ⋙ (evaluation D E).obj d)) :
    PreservesFiniteColimits F :=
  ⟨fun J _ _ => preservesColimitsOfShape_of_evaluation F J fun k => (h k).preservesFiniteColimits _⟩

end

section

variable {C : Type u} [Category.{v} C]
variable {J : Type u₁} [Category.{v₁} J]
variable {K : Type u₂} [Category.{v₂} K]
variable {D : Type u₃} [Category.{v₃} D]

section

variable [HasLimitsOfShape J C] [HasColimitsOfShape K C]
variable [PreservesLimitsOfShape J (colim : (K ⥤ C) ⥤ _)]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variantfa1c4d48124536bc3e8ebb46416ddadfedbf5e4971f5bb48277ecea166581db5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variantfa1c4d48124536bc3e8ebb46416ddadfedbf5e4971f5bb48277ecea166581db5.lean#L241).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b9eac73a12a83ca76aec8a96677b5a40a8f86846` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
