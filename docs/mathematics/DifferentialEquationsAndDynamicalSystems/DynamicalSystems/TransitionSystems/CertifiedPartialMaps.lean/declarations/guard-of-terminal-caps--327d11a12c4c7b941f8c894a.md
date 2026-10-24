# guard_of_terminal_caps

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9e23fbeb-62fa-6c91-bbbd-4e03ba29c786",
  "kind": "theorem",
  "lexical_name": "guard_of_terminal_caps",
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
  "slug": "guard-of-terminal-caps--327d11a12c4c7b941f8c894a",
  "source": {
    "blob": "99c41b5af8896e9a135b867c0bf47ac14afd36a1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 83,
    "line": 57,
    "path": "GRWTSK/DynamicalSystems/TransitionSystems/CertifiedPartialMaps.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:327d11a12c4c7b941f8c894a05513efa467a5084828f0e89b0c716622b9322c2",
  "verification": {
    "reference": "docs/verification/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/TransitionSystems/CertifiedPartialMaps.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9e23fbeb-62fa-6c91-bbbd-4e03ba29c786`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 57–83.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem guard_of_terminal_caps (policy : Policy) (state : State) (proposal : Proposal)
    (caps : ∀ o ∈ proposal.discharged,
      TerminalCap state.source (policy.statement state.source o))
    (source_eq : proposal.source = state.source)
    (discharged_pending : proposal.discharged ⊆ state.pending)
    (effects_source : ∀ r ∈ proposal.effects, r.source = proposal.source)
    (effects_typed : ∀ r ∈ proposal.effects, policy.typed state.source r.effect)
    (operational_evidence : ∀ r ∈ proposal.effects,
      policy.authenticated r.grant ∧ policy.permits r.grant state.source r.effect)
    (rights_evidence : ∀ r ∈ proposal.effects,
      policy.rights state.source r.surface r.effect)
    (cost_positive : 0 < proposal.cost) (cost_available : proposal.cost ≤ state.remaining) :
    Guard policy state proposal where
  source_eq := source_eq
  discharged_pending := discharged_pending
  mathematical_evidence := mathematical_evidence_of_terminal_caps policy state proposal caps
  effects_source := effects_source
  effects_typed := effects_typed
  operational_evidence := operational_evidence
  rights_evidence := rights_evidence
  cost_positive := cost_positive
  cost_available := cost_available

variable [DecidableEq Obligation]

/-- Verified ledger membership yields a terminal cap for that exact source and
proposition. This extraction does not establish revision freshness. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/TransitionSystems/CertifiedPartialMaps.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/DynamicalSystems/TransitionSystems/CertifiedPartialMaps.lean#L57).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `99c41b5af8896e9a135b867c0bf47ac14afd36a1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
