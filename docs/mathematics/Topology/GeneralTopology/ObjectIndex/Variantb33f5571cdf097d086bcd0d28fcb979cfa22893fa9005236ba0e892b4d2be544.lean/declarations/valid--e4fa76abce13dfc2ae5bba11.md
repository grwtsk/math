# Valid

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:234873a43e73d13d673e0a707a742dfc9fb9ebcd3ace5f7e3d0c9d1ad8374073",
  "kind": "structure",
  "lexical_name": "Valid",
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
  "slug": "valid--e4fa76abce13dfc2ae5bba11",
  "source": {
    "blob": "6faf658ea126e014552f853cc9fb1b64376e4728",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 240,
    "line": 218,
    "path": "GRWTSK/Topology/GeneralTopology/ObjectIndex/Variantb33f5571cdf097d086bcd0d28fcb979cfa22893fa9005236ba0e892b4d2be544.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e4fa76abce13dfc2ae5bba1186e3e1497c5d66b7185a6e518a3e3b05cb67cc6e",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ObjectIndex/Variantb33f5571cdf097d086bcd0d28fcb979cfa22893fa9005236ba0e892b4d2be544.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:234873a43e73d13d673e0a707a742dfc9fb9ebcd3ace5f7e3d0c9d1ad8374073`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 218–240.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure Valid (index : CanonicalMathematicalIndex) : Prop where
  declarations_resolve :
    ∀ record ∈ index.declarations.entries, index.HasObject record.objectId
  propositions_resolve :
    ∀ record ∈ index.propositions.entries, index.HasObject record.objectId
  authorities_resolve :
    ∀ record ∈ index.proofAuthorities.entries,
      index.HasProposition record.propositionId ∧
      index.HasDeclaration record.declarationId
  examples_resolve :
    ∀ record ∈ index.examples.entries, index.HasObject record.objectId
  counterexamples_resolve :
    ∀ record ∈ index.counterexamples.entries,
      index.HasObject record.objectId ∧
      index.HasProposition record.propositionId
  representations_resolve :
    ∀ record ∈ index.representations.entries,
      index.HasObject record.objectId
  refinements_resolve :
    ∀ record ∈ index.refinements.entries,
      index.HasObject record.specificationObject

/-- IDX-01: object stable keys are unique. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ObjectIndex/Variantb33f5571cdf097d086bcd0d28fcb979cfa22893fa9005236ba0e892b4d2be544.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ObjectIndex/Variantb33f5571cdf097d086bcd0d28fcb979cfa22893fa9005236ba0e892b4d2be544.lean#L218).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6faf658ea126e014552f853cc9fb1b64376e4728` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
