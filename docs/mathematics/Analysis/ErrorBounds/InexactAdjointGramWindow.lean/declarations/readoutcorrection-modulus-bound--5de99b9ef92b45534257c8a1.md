# readoutCorrection_modulus_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:50397df1-a836-6855-3b69-f7053cd004bb",
  "kind": "theorem",
  "lexical_name": "readoutCorrection_modulus_bound",
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
  "slug": "readoutcorrection-modulus-bound--5de99b9ef92b45534257c8a1",
  "source": {
    "blob": "badf04b0b2e1f3649a636b5616a0ab5b0a802aee",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 144,
    "line": 117,
    "path": "GRWTSK/Analysis/ErrorBounds/InexactAdjointGramWindow.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5de99b9ef92b45534257c8a125bd0c604d3f067c555824970d87d25dd437a1d1",
  "verification": {
    "reference": "docs/verification/Analysis/ErrorBounds/InexactAdjointGramWindow.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:50397df1-a836-6855-3b69-f7053cd004bb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 117–144.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem readoutCorrection_modulus_bound (weight : ι → ℝ) (test defect : ι → ℂ)
    (H : ι × ι → ℂ) (eta : ℝ)
    (weightsNonnegative : ∀ i, 0 ≤ weight i) (etaNonnegative : 0 ≤ eta)
    (testBound : ∀ i, ‖test i‖ ≤ weight i)
    (defectBound : ∀ i, ‖defect i‖ ≤ eta * weight i) :
    ‖readoutCorrection test defect H‖ ≤
      (2 * eta + eta * eta) * modulusMass (pairWeight weight) H := by
  have unitBound : ∀ i, ‖test i‖ ≤ (1 : ℝ) * weight i := by
    simpa only [one_mul] using testBound
  have left := mixed_readout_modulus_bound weight test defect H 1 eta
    weightsNonnegative (by norm_num) etaNonnegative unitBound defectBound
  have right := mixed_readout_modulus_bound weight defect test H eta 1
    weightsNonnegative etaNonnegative (by norm_num) defectBound unitBound
  have square : ‖complexReadout defect H‖ ≤
      (eta * eta) * modulusMass (pairWeight weight) H :=
    mixed_readout_modulus_bound weight defect defect H eta eta
      weightsNonnegative etaNonnegative etaNonnegative defectBound defectBound
  calc
    _ ≤ ‖mixedReadout test defect H + mixedReadout defect test H‖ +
        ‖complexReadout defect H‖ := norm_add_le _ _
    _ ≤ (‖mixedReadout test defect H‖ + ‖mixedReadout defect test H‖) +
        ‖complexReadout defect H‖ := add_le_add_left (norm_add_le _ _) _
    _ ≤ ((1 * eta) * modulusMass (pairWeight weight) H +
        (eta * 1) * modulusMass (pairWeight weight) H) +
        (eta * eta) * modulusMass (pairWeight weight) H := add_le_add (add_le_add left right) square
    _ = _ := by ring

/-- A separately certified residual bound turns pullback accuracy into a one-sided correction cost. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/ErrorBounds/InexactAdjointGramWindow.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ErrorBounds/InexactAdjointGramWindow.lean#L117).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `badf04b0b2e1f3649a636b5616a0ab5b0a802aee` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
