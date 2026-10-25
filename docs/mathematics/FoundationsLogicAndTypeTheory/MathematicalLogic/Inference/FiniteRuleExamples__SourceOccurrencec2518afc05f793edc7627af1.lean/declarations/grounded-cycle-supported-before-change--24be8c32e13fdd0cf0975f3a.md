# grounded_cycle_supported_before_change

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fe390d5a-3769-18bd-0e5e-7209313cfa3b",
  "kind": "theorem",
  "lexical_name": "grounded_cycle_supported_before_change",
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
  "slug": "grounded-cycle-supported-before-change--24be8c32e13fdd0cf0975f3a",
  "source": {
    "blob": "e3a166e2ff2533cb5d9973d26a61fd54c320872a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 137,
    "line": 120,
    "path": "GRWTSK/Logic/Inference/FiniteRuleExamples.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:24be8c32e13fdd0cf0975f3af779428508ff9cad606e1e1c68a6b0463d62577b",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Inference/FiniteRuleExamples__SourceOccurrencec2518afc05f793edc7627af1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fe390d5a-3769-18bd-0e5e-7209313cfa3b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 120–137.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem grounded_cycle_supported_before_change :
    true ∈ supportedClaims (fun provider ↦ (groundedCycleProviders provider).route)
      (eligibleProviders groundedCycleProviders Finset.univ ∅ ∅ (fun _ ↦ 0)) := by
  apply (mem_supportedClaims_iff _ _ true).mpr
  have ground : GroundedSupport (fun provider ↦ (groundedCycleProviders provider).route)
      (eligibleProviders groundedCycleProviders Finset.univ ∅ ∅ (fun _ ↦ 0)) false := by
    apply GroundedSupport.via 0
    · simp [eligibleProviders, groundedCycleProviders, RevisionCertificate.Fresh, SnapshotAgreesOn]
    · intro prerequisite member
      simp [groundedCycleProviders, groundedCycleRoutes] at member
  apply GroundedSupport.via 1
  · simp [eligibleProviders, groundedCycleProviders, RevisionCertificate.Fresh, SnapshotAgreesOn]
  · intro prerequisite member
    have equal : prerequisite = false := by
      simpa [groundedCycleProviders, groundedCycleRoutes] using member
    simpa only [equal] using ground

/-- When the sole grounding route becomes stale, fresh cyclic rules do not rescue it. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Inference/FiniteRuleExamples__SourceOccurrencec2518afc05f793edc7627af1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Logic/Inference/FiniteRuleExamples.lean#L120).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e3a166e2ff2533cb5d9973d26a61fd54c320872a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
