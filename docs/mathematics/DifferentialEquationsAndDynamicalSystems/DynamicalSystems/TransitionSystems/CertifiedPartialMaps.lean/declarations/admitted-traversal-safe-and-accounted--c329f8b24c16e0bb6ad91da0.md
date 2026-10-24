# admitted_traversal_safe_and_accounted

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6a7343ec-f763-5d9e-891c-1c057c21b221",
  "kind": "theorem",
  "lexical_name": "admitted_traversal_safe_and_accounted",
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
  "slug": "admitted-traversal-safe-and-accounted--c329f8b24c16e0bb6ad91da0",
  "source": {
    "blob": "99c41b5af8896e9a135b867c0bf47ac14afd36a1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 108,
    "line": 92,
    "path": "GRWTSK/DynamicalSystems/TransitionSystems/CertifiedPartialMaps.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c329f8b24c16e0bb6ad91da0cd6ec8eeda74f4e1eb4888a3fccda34b3411a86e",
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

Occurrence: `result:6a7343ec-f763-5d9e-891c-1c057c21b221`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 92–108.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem admitted_traversal_safe_and_accounted (policy : Policy)
    (A B : FiberEndpoint.{u, v} Observer) (port : FramedPort A B) (input : A.Carrier)
    (state : State) (proposal : Proposal) (budget : ℕ)
    (hsafe : Safe policy state.source budget state)
    (admitted : AdmittedTraversal policy A B port input state proposal) :
    Safe policy A.identity budget (update state proposal) ∧
      ∀ i, B.observe i (port.map input) - A.observe i input = port.residual input i ∧
        |B.observe i (port.map input) - A.observe i input| ≤ port.errorBudget i := by
  have hsource : Safe policy A.identity budget state := by
    simpa only [admitted.source_eq] using hsafe
  refine ⟨guard_preserves_safe policy A.identity budget hsource admitted.guard, ?_⟩
  intro i
  exact ⟨(port.residual_eq_defect input admitted.input_mem_domain i).symm,
    port.defect_bound input admitted.input_mem_domain i⟩

/-- Every previously pending obligation remains pending or becomes verified
with an actual proof. The actual guard, not the traversal label, supplies evidence. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/TransitionSystems/CertifiedPartialMaps.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/DynamicalSystems/TransitionSystems/CertifiedPartialMaps.lean#L92).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `99c41b5af8896e9a135b867c0bf47ac14afd36a1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
