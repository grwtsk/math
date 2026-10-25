# grounded_cycle_empty_after_ground_loss

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1f87b61d-2f33-9dcb-57c7-d46ee4bc0ab0",
  "kind": "theorem",
  "lexical_name": "grounded_cycle_empty_after_ground_loss",
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
  "slug": "grounded-cycle-empty-after-ground-loss--6ffba7c19a6ea4dd37edb8f8",
  "source": {
    "blob": "32e1ca278b5e3701c267c65bc4b51db53717039c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 151,
    "line": 138,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Inference/FiniteRuleExamples.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6ffba7c19a6ea4dd37edb8f8998da11ae4ad09e019374686588710d78a7829cc",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Inference/FiniteRuleExamples__SourceOccurrencedf834e6a34103f184932947c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1f87b61d-2f33-9dcb-57c7-d46ee4bc0ab0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 138–151.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem grounded_cycle_empty_after_ground_loss :
    supportedClaims (fun provider ↦ (groundedCycleProviders provider).route)
      (eligibleProviders groundedCycleProviders Finset.univ ∅ ∅ (fun _ ↦ 1)) = ∅ := by
  apply supportedClaims_empty_of_no_ground
  intro provider admitted
  have notGround : provider ≠ 0 := by
    intro equal
    subst provider
    simp [eligibleProviders, groundedCycleProviders, RevisionCertificate.Fresh,
      SnapshotAgreesOn] at admitted
  simp only [groundedCycleProviders, groundedCycleRoutes, notGround, ↓reduceIte]
  split_ifs <;> simp

/-- Independent routes can carry different reads for an actually source-dependent target. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Inference/FiniteRuleExamples__SourceOccurrencedf834e6a34103f184932947c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Inference/FiniteRuleExamples.lean#L138).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `32e1ca278b5e3701c267c65bc4b51db53717039c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
