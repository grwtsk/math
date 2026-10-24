# OperatorComposition

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d68914052543b43b7294885f0e482518552c3d80b75c8f2260e70f7b24b9d9e0",
  "kind": "structure",
  "lexical_name": "OperatorComposition",
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
  "slug": "operatorcomposition--bf813bc6ab287b6405ebb6ce",
  "source": {
    "blob": "06a03f661154dfb4ee99e6b77c1d3b63556a7a5d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 39,
    "line": 21,
    "path": "GRWTSK/Algebra/GroupTheory/BlockDecomposition/Variantea8ad273fe1d90b6cc031103ed304e4a7694ae3d8efb3c7f753aa424c9c8c985.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:bf813bc6ab287b6405ebb6ce14c5d8215f57bf3aeba792182b405a5da0223bfd",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/BlockDecomposition/Variantea8ad273fe1d90b6cc031103ed304e4a7694ae3d8efb3c7f753aa424c9c8c985.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d68914052543b43b7294885f0e482518552c3d80b75c8f2260e70f7b24b9d9e0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 21–39.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure OperatorComposition
    (model : OperatorModel) where
  compose :
    model.Operator → model.Operator → model.Operator
  adjoint :
    model.Operator → model.Operator
  compose_assoc :
    ∀ first second third,
      compose (compose first second) third =
        compose first (compose second third)
  identity_comp :
    ∀ operator,
      compose model.identity operator = operator
  comp_identity :
    ∀ operator,
      compose operator model.identity = operator
  adjoint_involutive :
    Function.Involutive adjoint

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/BlockDecomposition/Variantea8ad273fe1d90b6cc031103ed304e4a7694ae3d8efb3c7f753aa424c9c8c985.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/BlockDecomposition/Variantea8ad273fe1d90b6cc031103ed304e4a7694ae3d8efb3c7f753aa424c9c8c985.lean#L21).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `06a03f661154dfb4ee99e6b77c1d3b63556a7a5d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
