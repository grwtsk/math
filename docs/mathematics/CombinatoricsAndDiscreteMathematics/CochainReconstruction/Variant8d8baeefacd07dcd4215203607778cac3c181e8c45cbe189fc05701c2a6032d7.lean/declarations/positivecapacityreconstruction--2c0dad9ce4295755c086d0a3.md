# PositiveCapacityReconstruction

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c99533c68824823c0a16351772416f59ff8ed9fe5095fd36af0d91df6b98429f",
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
  "slug": "positivecapacityreconstruction--2c0dad9ce4295755c086d0a3",
  "source": {
    "blob": "f355a720fd71d53e660bd42644cde83ea5834ba0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 83,
    "line": 51,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/CochainReconstruction/Variant8d8baeefacd07dcd4215203607778cac3c181e8c45cbe189fc05701c2a6032d7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2c0dad9ce4295755c086d0a3848858482ee8651634019acb69c796cdac5e3482",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/CochainReconstruction/Variant8d8baeefacd07dcd4215203607778cac3c181e8c45cbe189fc05701c2a6032d7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c99533c68824823c0a16351772416f59ff8ed9fe5095fd36af0d91df6b98429f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 51–83.

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

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/CochainReconstruction/Variant8d8baeefacd07dcd4215203607778cac3c181e8c45cbe189fc05701c2a6032d7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/CochainReconstruction/Variant8d8baeefacd07dcd4215203607778cac3c181e8c45cbe189fc05701c2a6032d7.lean#L51).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f355a720fd71d53e660bd42644cde83ea5834ba0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
