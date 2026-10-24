# Allows

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1eba794136d6424fc0d5f7796f35bc404988c1390af90871458c0cb0c98d23dd",
  "kind": "structure",
  "lexical_name": "Allows",
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
  "slug": "allows--ef2f28e1e2f83699bf0cd540",
  "source": {
    "blob": "ac8303c8432767d7c218771199fbe2775a0c1592",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 42,
    "line": 24,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Execution/Variante5fb611eb0b3712a04187634afbdfd695afe63c02c4e7b48d7836be95cf2bd75.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ef2f28e1e2f83699bf0cd5405bb5e1990acff6b94d264379e9a982abd4d1a1b4",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Execution/Variante5fb611eb0b3712a04187634afbdfd695afe63c02c4e7b48d7836be95cf2bd75.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1eba794136d6424fc0d5f7796f35bc404988c1390af90871458c0cb0c98d23dd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 24–42.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure Allows
    (lease : Lease)
    (revocations : List Revocation)
    (time : Nat)
    (request : OperationRequest) : Prop where
  valid : lease.ValidAt revocations time
  holder_bound :
    lease.grant.holder = request.principal
  device_bound :
    lease.capability.device = request.device
  element_bound :
    request.element ∈ lease.capability.elements
  purpose_bound :
    lease.capability.purpose = request.purpose
  snapshot_bound :
    lease.capability.snapshot = request.snapshot
  effect_bound :
    request.effect ∈ lease.capability.effects.admits

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Execution/Variante5fb611eb0b3712a04187634afbdfd695afe63c02c4e7b48d7836be95cf2bd75.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Execution/Variante5fb611eb0b3712a04187634afbdfd695afe63c02c4e7b48d7836be95cf2bd75.lean#L24).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ac8303c8432767d7c218771199fbe2775a0c1592` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
