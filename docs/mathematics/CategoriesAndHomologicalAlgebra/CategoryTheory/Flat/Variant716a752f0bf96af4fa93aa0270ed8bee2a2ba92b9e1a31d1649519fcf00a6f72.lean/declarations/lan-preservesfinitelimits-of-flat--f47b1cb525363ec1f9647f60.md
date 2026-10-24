# lan_preservesFiniteLimits_of_flat

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e385b566a88c6c70c3ab7d727fc6e61398e05e91bc931695cfabe2895d84a52b",
  "kind": "instance",
  "lexical_name": "lan_preservesFiniteLimits_of_flat",
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
  "slug": "lan-preservesfinitelimits-of-flat--f47b1cb525363ec1f9647f60",
  "source": {
    "blob": "a88d1f4b8f7f4078045f3de3421ee85e8c03c964",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 344,
    "line": 335,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Flat/Variant716a752f0bf96af4fa93aa0270ed8bee2a2ba92b9e1a31d1649519fcf00a6f72.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f47b1cb525363ec1f9647f60995d66095756801c8bdb5f2ca595d28d1ad6df71",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Flat/Variant716a752f0bf96af4fa93aa0270ed8bee2a2ba92b9e1a31d1649519fcf00a6f72.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e385b566a88c6c70c3ab7d727fc6e61398e05e91bc931695cfabe2895d84a52b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 335–344.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable instance lan_preservesFiniteLimits_of_flat (F : C ⥤ D) [RepresentablyFlat F] :
    PreservesFiniteLimits (F.op.lan : _ ⥤ Dᵒᵖ ⥤ E) := by
  apply preservesFiniteLimits_of_preservesFiniteLimitsOfSize.{u₁}
  intro J _ _
  apply preservesLimitsOfShape_of_evaluation (F.op.lan : (Cᵒᵖ ⥤ E) ⥤ Dᵒᵖ ⥤ E) J
  intro K
  have : IsFiltered (CostructuredArrow F.op K) :=
    IsFiltered.of_equivalence (structuredArrowOpEquivalence F (unop K))
  exact preservesLimitsOfShape_of_natIso (lanEvaluationIsoColim _ _ _).symm

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Flat/Variant716a752f0bf96af4fa93aa0270ed8bee2a2ba92b9e1a31d1649519fcf00a6f72.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Flat/Variant716a752f0bf96af4fa93aa0270ed8bee2a2ba92b9e1a31d1649519fcf00a6f72.lean#L335).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a88d1f4b8f7f4078045f3de3421ee85e8c03c964` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
