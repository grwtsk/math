# retainedStateObserverReducer

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:13369281c6fa8a0a6fb9d3736e585d2da8a70c871502e3f60e28879072009842",
  "kind": "def",
  "lexical_name": "retainedStateObserverReducer",
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
  "slug": "retainedstateobserverreducer--a2800567d971df0b223a5db2",
  "source": {
    "blob": "f3a9190154982a84997e9e54e5c9dd30ce326b0f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 177,
    "line": 160,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/RingBuffer/Variantd6b2c0fed27b3c498d3d412797c9eb9cb3b8574037dadf7b769845c3f82b16ef.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a2800567d971df0b223a5db2fc8fcebc31ffa6733007a00de9783d7c31f5cab7",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/RingBuffer/Variantd6b2c0fed27b3c498d3d412797c9eb9cb3b8574037dadf7b769845c3f82b16ef.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:13369281c6fa8a0a6fb9d3736e585d2da8a70c871502e3f60e28879072009842`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 160–177.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def retainedStateObserverReducer
    (capacity : Nat)
    (hcapacity : 0 < capacity)
    (Entry : Type u)
    (Observation : Type*)
    (observe : RingState capacity Entry → Observation) :
    ObserverReducer
      (customObservedRingSystem capacity hcapacity Entry Observation observe)
      PUnit.unit where
  Local := RingState capacity Entry
  reduce := id
  localStep entry state := state.push hcapacity entry
  localObserve := observe
  reduce_surjective := Function.surjective_id
  step_commute := by intros; rfl
  observe_commute := by intros; rfl

/-- The last `window` positions, newest first; unavailable positions are `none`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/RingBuffer/Variantd6b2c0fed27b3c498d3d412797c9eb9cb3b8574037dadf7b769845c3f82b16ef.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/RingBuffer/Variantd6b2c0fed27b3c498d3d412797c9eb9cb3b8574037dadf7b769845c3f82b16ef.lean#L160).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f3a9190154982a84997e9e54e5c9dd30ce326b0f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
