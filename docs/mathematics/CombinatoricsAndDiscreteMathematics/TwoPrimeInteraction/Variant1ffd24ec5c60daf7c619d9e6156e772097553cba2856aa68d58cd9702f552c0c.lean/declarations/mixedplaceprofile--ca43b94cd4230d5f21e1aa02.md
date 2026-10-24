# MixedPlaceProfile

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d456cfe4e84a30b7a71ac8f99727ff551e6e183eec50b5252eb8f867f90eb6dc",
  "kind": "structure",
  "lexical_name": "MixedPlaceProfile",
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
  "slug": "mixedplaceprofile--ca43b94cd4230d5f21e1aa02",
  "source": {
    "blob": "e9293f10e47af0bd7eb2cceddd9a82dda8df838e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 46,
    "line": 24,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TwoPrimeInteraction/Variant1ffd24ec5c60daf7c619d9e6156e772097553cba2856aa68d58cd9702f552c0c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ca43b94cd4230d5f21e1aa025c70dfb8358c737911bbd1835ff091e5a95b4149",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TwoPrimeInteraction/Variant1ffd24ec5c60daf7c619d9e6156e772097553cba2856aa68d58cd9702f552c0c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d456cfe4e84a30b7a71ac8f99727ff551e6e183eec50b5252eb8f867f90eb6dc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 24–46.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure MixedPlaceProfile
    {model : OperatorModel}
    {Prime : Type uPrime}
    [DecidableEq Prime]
    (capacity :
      PrimeCutDefectCapacity model Prime)
    (source : Finset Prime)
    (left right : Prime) where
  cochainCurvature : model.Operator
  cochainCurvature_eq :
    cochainCurvature =
      boundaryCurvature
        capacity source left right
  defectInteraction : model.Operator
  defectInteraction_eq :
    defectInteraction =
      placeInteraction
        capacity source left right
  transportHolonomy : model.Operator
  balanceGaugeCurvature : model.Operator
  holonomyFlat : Prop
  balanceFlat : Prop

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/TwoPrimeInteraction/Variant1ffd24ec5c60daf7c619d9e6156e772097553cba2856aa68d58cd9702f552c0c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TwoPrimeInteraction/Variant1ffd24ec5c60daf7c619d9e6156e772097553cba2856aa68d58cd9702f552c0c.lean#L24).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e9293f10e47af0bd7eb2cceddd9a82dda8df838e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
