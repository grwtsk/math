# PositiveCapacityReconstruction

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3b98246af00748b4334d8b602e8909362d213197c67043fc2ed6e12bc3419546",
  "kind": "structure",
  "lexical_name": "PositiveCapacityReconstruction",
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
  "slug": "positivecapacityreconstruction--591c271c70e0308295a65ef9",
  "source": {
    "blob": "f8e9d45ce1cce3d09a467342bda88b3af88731a8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 75,
    "line": 43,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/CochainReconstruction/Variantfccdced7a0d75c553500b7f50f73d283e3473143a282134e45ef1c41e27ce622.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:591c271c70e0308295a65ef9cf07010534fb1a6a836275981e118c76f98afca8",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/CochainReconstruction/Variantfccdced7a0d75c553500b7f50f73d283e3473143a282134e45ef1c41e27ce622.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3b98246af00748b4334d8b602e8909362d213197c67043fc2ed6e12bc3419546`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 43–75.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure PositiveCapacityReconstruction
    {model : OperatorModel}
    {Prime : Type uPrime}
    [DecidableEq Prime]
    {measured :
      MeasuredDefectCochain model Prime}
    (projection :
      DefectCochainProjection measured) where
  selfAdjoint :
    ∀ cut,
      model.SelfAdjoint (projection.potential cut)
  nonnegative :
    ∀ cut,
      model.Nonnegative (projection.potential cut)
  boundedByIdentity :
    ∀ cut,
      OperatorLE model
        (projection.potential cut)
        model.identity
  monotone :
    ∀ {source target},
      source ⊆ target →
      OperatorLE model
        (projection.potential source)
        (projection.potential target)
  positivityResidual :
    Finset Prime → model.Operator
  positivityResidual_nonnegative :
    ∀ cut,
      model.Nonnegative
        (positivityResidual cut)

end Mathematics.SemiLocalDefect
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/CochainReconstruction/Variantfccdced7a0d75c553500b7f50f73d283e3473143a282134e45ef1c41e27ce622.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/CochainReconstruction/Variantfccdced7a0d75c553500b7f50f73d283e3473143a282134e45ef1c41e27ce622.lean#L43).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f8e9d45ce1cce3d09a467342bda88b3af88731a8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
