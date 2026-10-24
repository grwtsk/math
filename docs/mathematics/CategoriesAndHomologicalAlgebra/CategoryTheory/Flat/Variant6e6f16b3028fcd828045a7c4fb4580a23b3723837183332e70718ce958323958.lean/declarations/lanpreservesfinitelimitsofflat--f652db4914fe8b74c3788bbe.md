# lanPreservesFiniteLimitsOfFlat

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4c3e002a248459057458ee0176e556f7fe55d153db487ac1e662aec707dc09b2",
  "kind": "instance",
  "lexical_name": "lanPreservesFiniteLimitsOfFlat",
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
  "slug": "lanpreservesfinitelimitsofflat--f652db4914fe8b74c3788bbe",
  "source": {
    "blob": "48dabd82aa7b3be221ea572cf6bd92847b339d5b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 366,
    "line": 355,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Flat/Variant6e6f16b3028fcd828045a7c4fb4580a23b3723837183332e70718ce958323958.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f652db4914fe8b74c3788bbe3e55747ded6a5252af58ac6b6448dacec39ca017",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Flat/Variant6e6f16b3028fcd828045a7c4fb4580a23b3723837183332e70718ce958323958.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4c3e002a248459057458ee0176e556f7fe55d153db487ac1e662aec707dc09b2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 355–366.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable instance lanPreservesFiniteLimitsOfFlat (F : C ⥤ D) [RepresentablyFlat F] :
    PreservesFiniteLimits (lan F.op : _ ⥤ Dᵒᵖ ⥤ E) := by
  apply preservesFiniteLimitsOfPreservesFiniteLimitsOfSize.{u₁}
  intro J _ _; skip
  apply preservesLimitsOfShapeOfEvaluation (lan F.op : (Cᵒᵖ ⥤ E) ⥤ Dᵒᵖ ⥤ E) J
  intro K
  haveI : IsFiltered (CostructuredArrow F.op K) :=
    IsFiltered.of_equivalence (structuredArrowOpEquivalence F (unop K))
  exact preservesLimitsOfShapeOfNatIso (lanEvaluationIsoColim _ _ _).symm
set_option linter.uppercaseLean3 false in
#align category_theory.Lan_preserves_finite_limits_of_flat CategoryTheory.lanPreservesFiniteLimitsOfFlat

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Flat/Variant6e6f16b3028fcd828045a7c4fb4580a23b3723837183332e70718ce958323958.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Flat/Variant6e6f16b3028fcd828045a7c4fb4580a23b3723837183332e70718ce958323958.lean#L355).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `48dabd82aa7b3be221ea572cf6bd92847b339d5b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
