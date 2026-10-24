# prodLift₁

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:391dcee411532f37b10d523e2e16fe93aed01f9ec4feb77654e87374ece7eaa3",
  "kind": "def",
  "lexical_name": "prodLift₁",
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
  "slug": "prodlift--176ec2bdff1c2772afcaf122",
  "source": {
    "blob": "adb58aa11fea4c5f420ef4c3364fb71db99d61df",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 64,
    "line": 55,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Prod/Variant39d11893fdae31c65c1e9181de05a918353e91f26d57410a26f5a30057fe7c2e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:176ec2bdff1c2772afcaf12208b2d158479a165ec473c07285d3feb0be888cd4",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Prod/Variant39d11893fdae31c65c1e9181de05a918353e91f26d57410a26f5a30057fe7c2e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:391dcee411532f37b10d523e2e16fe93aed01f9ec4feb77654e87374ece7eaa3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 55–64.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def prodLift₁ [W₂.ContainsIdentities]
    (hF : (W₁.prod W₂).IsInvertedBy F) :
    W₁.Localization ⥤ C₂ ⥤ E :=
  Construction.lift (curry.obj F) (fun _ _ f₁ hf₁ => by
    haveI : ∀ (X₂ : C₂), IsIso (((curry.obj F).map f₁).app X₂) :=
      fun X₂ => hF _ ⟨hf₁, MorphismProperty.id_mem _ _⟩
    apply NatIso.isIso_of_isIso_app)

variable (hF : (W₁.prod W₂).IsInvertedBy F)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Prod/Variant39d11893fdae31c65c1e9181de05a918353e91f26d57410a26f5a30057fe7c2e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Prod/Variant39d11893fdae31c65c1e9181de05a918353e91f26d57410a26f5a30057fe7c2e.lean#L55).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `adb58aa11fea4c5f420ef4c3364fb71db99d61df` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
