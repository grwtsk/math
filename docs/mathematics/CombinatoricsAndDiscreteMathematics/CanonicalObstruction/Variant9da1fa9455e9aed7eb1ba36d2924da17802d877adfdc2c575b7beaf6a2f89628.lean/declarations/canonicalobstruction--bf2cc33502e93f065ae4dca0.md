# CanonicalObstruction

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:89054773183b3b7884a914efdc6abbb9841b14a63af26fc8254ef7b43fb63668",
  "kind": "structure",
  "lexical_name": "CanonicalObstruction",
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
  "slug": "canonicalobstruction--bf2cc33502e93f065ae4dca0",
  "source": {
    "blob": "320bcdba66d121682c998f4ba3542958354010ba",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 84,
    "line": 30,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/CanonicalObstruction/Variant9da1fa9455e9aed7eb1ba36d2924da17802d877adfdc2c575b7beaf6a2f89628.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:bf2cc33502e93f065ae4dca089cfcf85d81d7dec43ed7b97375efc75235fb5e2",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/CanonicalObstruction/Variant9da1fa9455e9aed7eb1ba36d2924da17802d877adfdc2c575b7beaf6a2f89628.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:89054773183b3b7884a914efdc6abbb9841b14a63af26fc8254ef7b43fb63668`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 30–84.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure CanonicalObstruction
    {Node : Type uNode}
    [Fintype Node]
    [DecidableEq Node]
    {width : Nat}
    (tree :
      BinaryRefinementTree Node width)
    {Full : Type uFull}
    {Constraint : Type uConstraint}
    [DecidableEq Constraint]
    (semantics :
      Semantics
        (PartialBitfield width)
        Full Constraint)
    (registry constraints : Finset Constraint)
    (node : Node)
    (GroupCarrier : Type uGroup)
    [Group GroupCarrier]
    [Fintype GroupCarrier]
    [DecidableEq GroupCarrier]
    [MulAction GroupCarrier
      (PartialBitfield width)]
    [MulAction GroupCarrier Full]
    [MulAction GroupCarrier Constraint]
    [LinearOrder
      (RawObstruction
        (PartialBitfield width) Constraint)] where
  completionEquivariance :
    CompletionEquivariance
      semantics GroupCarrier
  boundary :
    FirstInfeasibleBoundary
      tree semantics constraints node
  primitive :
    PrimitiveCore
      semantics registry (tree.state node)
  primitiveWithinBoundary :
    primitive.constraints ⊆ constraints
  rawRecord :
    RawObstruction
      (PartialBitfield width) Constraint
  rawRecord_correct :
    rawRecord.state = tree.state node ∧
      rawRecord.core = primitive.constraints
  canonicalRecord :
    RawObstruction
      (PartialBitfield width) Constraint
  canonical_correct :
    canonicalRecord =
      canon
        GroupCarrier
        (RawObstruction
          (PartialBitfield width) Constraint)
        rawRecord

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/CanonicalObstruction/Variant9da1fa9455e9aed7eb1ba36d2924da17802d877adfdc2c575b7beaf6a2f89628.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/CanonicalObstruction/Variant9da1fa9455e9aed7eb1ba36d2924da17802d877adfdc2c575b7beaf6a2f89628.lean#L30).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `320bcdba66d121682c998f4ba3542958354010ba` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
