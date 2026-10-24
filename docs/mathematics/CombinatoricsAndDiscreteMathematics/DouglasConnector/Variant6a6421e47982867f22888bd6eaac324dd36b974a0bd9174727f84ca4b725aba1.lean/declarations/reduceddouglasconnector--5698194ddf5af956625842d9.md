# ReducedDouglasConnector

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c9e1cb404b35a2a216d15fa7bc423e304ec1ab229555316edede73f6d6324492",
  "kind": "structure",
  "lexical_name": "ReducedDouglasConnector",
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
  "slug": "reduceddouglasconnector--5698194ddf5af956625842d9",
  "source": {
    "blob": "536aac049844c357a9f8ae2a529f53b6deb4f0d3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 50,
    "line": 22,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/DouglasConnector/Variant6a6421e47982867f22888bd6eaac324dd36b974a0bd9174727f84ca4b725aba1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5698194ddf5af956625842d9d9dc1290d28ed1eb73753846211b35c71dd8daab",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/DouglasConnector/Variant6a6421e47982867f22888bd6eaac324dd36b974a0bd9174727f84ca4b725aba1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c9e1cb404b35a2a216d15fa7bc423e304ec1ab229555316edede73f6d6324492`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 22–50.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure ReducedDouglasConnector
    {model : OperatorModel}
    {Prime : Type uPrime}
    [DecidableEq Prime]
    {capacity :
      PrimeCutDefectCapacity model Prime}
    (canonical :
      CanonicalTransmission capacity)
    (operations :
      OperatorComposition model)
    (cut : Finset Prime)
    (prime : Prime) where
  connector : model.Operator
  contraction : Prop
  contractionProof : contraction
  factorization :
    canonical.transmission (insert prime cut) =
      operations.compose
        connector
        (canonical.transmission cut)
  minimalNorm : Prop
  minimalNormProof : minimalNorm
  rangeSupported : Prop
  rangeSupportedProof : rangeSupported
  incrementFactorization : Prop
  incrementFactorizationProof :
    incrementFactorization

end Mathematics.SemiLocalDefect.Hardy
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/DouglasConnector/Variant6a6421e47982867f22888bd6eaac324dd36b974a0bd9174727f84ca4b725aba1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/DouglasConnector/Variant6a6421e47982867f22888bd6eaac324dd36b974a0bd9174727f84ca4b725aba1.lean#L22).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `536aac049844c357a9f8ae2a529f53b6deb4f0d3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
