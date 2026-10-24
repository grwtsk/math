# no_finite_state_initial_recovery_from_unanchored_difference

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:058ee467-b0b7-5ee9-5b42-68285c94d876",
  "kind": "theorem",
  "lexical_name": "no_finite_state_initial_recovery_from_unanchored_difference",
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
  "slug": "no-finite-state-initial-recovery-from-unanchored-difference--2d1558f208c32d8af01385b5",
  "source": {
    "blob": "5881a2f2caf1aa0b1ec9267376cecb5895327afe",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 69,
    "line": 46,
    "path": "GRWTSK/NumberTheory/Farey/DynamicSoficSpectralCover.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2d1558f208c32d8af01385b570b9bb25bdbb415eabdfe6335532d5e66cab15f4",
  "verification": {
    "reference": "docs/verification/NumberTheory/Farey/DynamicSoficSpectralCover.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:058ee467-b0b7-5ee9-5b42-68285c94d876`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 46–69.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem no_finite_state_initial_recovery_from_unanchored_difference
    {State : Type uCell} [Fintype State]
    (state : (ℕ → ℤ) → State)
    (hstate :
      FactorsThrough
        GRWTSK.Logic.InformationLoss.DynamicPartitionRecovery.discreteDifference
        state)
    (hinitial : FactorsThrough state (fun f : ℕ → ℤ => f 0)) :
    False := by
  have hfactor :
      FactorsThrough
        GRWTSK.Logic.InformationLoss.DynamicPartitionRecovery.discreteDifference
        (fun f : ℕ → ℤ => f 0) :=
    factorsThrough_trans
      GRWTSK.Logic.InformationLoss.DynamicPartitionRecovery.discreteDifference
      state (fun f : ℕ → ℤ => f 0) hstate hinitial
  exact
    GRWTSK.Logic.InformationLoss.DynamicPartitionRecovery.initialValue_not_factorsThrough_difference
      hfactor

/-- Retaining the anchor repairs that exact information loss.  Because the
anchored difference stream has an explicit left inverse, every source readout
factors through it.  This is a reconstruction theorem, not a finite-code,
compression-rate, heat-flow, or zeta theorem. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Farey/DynamicSoficSpectralCover.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Farey/DynamicSoficSpectralCover.lean#L46).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5881a2f2caf1aa0b1ec9267376cecb5895327afe` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
