# preservesLimitsOfShape_presheafToSheaf

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:14b6f9591b85b2aca22fddae4b654191a4e680015832a4aaa22f151282505640",
  "kind": "instance",
  "lexical_name": "preservesLimitsOfShape_presheafToSheaf",
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
  "slug": "preserveslimitsofshape-presheaftosheaf--68164bc606330cc1a0cabf45",
  "source": {
    "blob": "f65f4e819e8b04036ce102c785361dd52cf28daf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 264,
    "line": 246,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftExact/Variant82625eab55fa12ff3ccc2a15e4b523efca7ac8ad30bb7f7f59c8cc680fdac8c2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:68164bc606330cc1a0cabf4596631ad0e512face69490eaac8ee4993e2bceec0",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftExact/Variant82625eab55fa12ff3ccc2a15e4b523efca7ac8ad30bb7f7f59c8cc680fdac8c2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:14b6f9591b85b2aca22fddae4b654191a4e680015832a4aaa22f151282505640`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 246–264.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance preservesLimitsOfShape_presheafToSheaf :
    PreservesLimitsOfShape K (plusPlusSheaf J D) := by
  let e := (FinCategory.equivAsType K).symm.trans (AsSmall.equiv.{0, 0, max v u})
  haveI : HasLimitsOfShape (AsSmall.{max v u} (FinCategory.AsType K)) D :=
    Limits.hasLimitsOfShape_of_equivalence e
  haveI : FinCategory (AsSmall.{max v u} (FinCategory.AsType K)) := by
    constructor
    · show Fintype (ULift _)
      infer_instance
    · intro j j'
      show Fintype (ULift _)
      infer_instance
  refine @preservesLimitsOfShape_of_equiv _ _ _ _ _ _ _ _ e.symm _ (show _ from ?_)
  constructor; intro F; constructor; intro S hS; constructor
  apply isLimitOfReflects (sheafToPresheaf J D)
  have : ReflectsLimitsOfShape (AsSmall.{max v u} (FinCategory.AsType K)) (forget D) :=
    reflectsLimitsOfShape_of_reflectsIsomorphisms
  apply isLimitOfPreserves (J.sheafification D) hS

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftExact/Variant82625eab55fa12ff3ccc2a15e4b523efca7ac8ad30bb7f7f59c8cc680fdac8c2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftExact/Variant82625eab55fa12ff3ccc2a15e4b523efca7ac8ad30bb7f7f59c8cc680fdac8c2.lean#L246).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f65f4e819e8b04036ce102c785361dd52cf28daf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
