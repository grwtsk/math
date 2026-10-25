# causalStateEquivRingState

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d4323b9a46ee4cc6f74fe41f6c497ca78a15026f73ca94e0f57aef3f8dd4460a",
  "kind": "def",
  "lexical_name": "causalStateEquivRingState",
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
  "slug": "causalstateequivringstate--86f09d2e4d472507b46adb7a",
  "source": {
    "blob": "998ed102f7714038599787d85e0dec7ced239130",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 89,
    "line": 72,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/RingBuffer/Variantd7a7ee51176439c1a57c26d3ebba8516271a8f13a862812998da9d5e63bec448.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:86f09d2e4d472507b46adb7a81b212418f021f825e72c3677d7141011d31c5c0",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/RingBuffer/Variantd7a7ee51176439c1a57c26d3ebba8516271a8f13a862812998da9d5e63bec448.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d4323b9a46ee4cc6f74fe41f6c497ca78a15026f73ca94e0f57aef3f8dd4460a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 72–89.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def causalStateEquivRingState
    (hcapacity : 0 < capacity) :
    (ringSystem capacity hcapacity Entry).CausalState ≃
      RingState capacity Entry where
  toFun := Quotient.lift id (by
    intro x y h
    exact causalEquivalent_eq_of_fullObservation hcapacity h)
  invFun := (ringSystem capacity hcapacity Entry).toCausal
  left_inv := by
    intro causal
    refine Quotient.inductionOn causal ?_
    intro state
    rfl
  right_inv := fun _ => rfl

/-! ## A certified reduced observer -/

/-- Two observations: the complete ring, or only its latest entry. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/RingBuffer/Variantd7a7ee51176439c1a57c26d3ebba8516271a8f13a862812998da9d5e63bec448.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/RingBuffer/Variantd7a7ee51176439c1a57c26d3ebba8516271a8f13a862812998da9d5e63bec448.lean#L72).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `998ed102f7714038599787d85e0dec7ced239130` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
