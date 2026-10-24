# actualXiIntegerCriticalReadout_eq_primitive

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2a7cbe3f-279c-2a55-6b4c-b38ba0f20514",
  "kind": "theorem",
  "lexical_name": "actualXiIntegerCriticalReadout_eq_primitive",
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
  "slug": "actualxiintegercriticalreadout-eq-primitive--0751b34d3926d9b3742b4e56",
  "source": {
    "blob": "47de225bc9eb00b1de7ee96f86cd3e2ea39859b7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 239,
    "line": 228,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceActualXiWeightedIntegerMean/Variantac92764b17536f1a73f2759d3ecda6dec5c6acc9de4496761fe70ad04160feb3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0751b34d3926d9b3742b4e562e61b709a041999aa5ebd210e03b3c0b6bc2eec8",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceActualXiWeightedIntegerMean/Variantac92764b17536f1a73f2759d3ecda6dec5c6acc9de4496761fe70ad04160feb3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2a7cbe3f-279c-2a55-6b4c-b38ba0f20514`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 228–239.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualXiIntegerCriticalReadout_eq_primitive {N : ℕ} (hN : 7 ≤ N) :
    actualXiIntegerCriticalReadout N =
      actualAnchoredXiTailPrimitive (Real.log (N : ℝ)) := by
  have hnp : 0 < (N : ℝ) := by exact_mod_cast (show 0 < N by omega)
  have hl : Real.log 7 ≤ Real.log (N : ℝ) := by
    apply Real.log_le_log (by norm_num)
    exact_mod_cast hN
  have h := actualAnchoredXiTailPrimitive_eq_reciprocal_abel hl
  simp only [Real.exp_log hnp, Nat.floor_natCast] at h
  exact h.symm

/-- The whole mean is a weighted finite inventory of the actual signed arithmetic readout. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceActualXiWeightedIntegerMean/Variantac92764b17536f1a73f2759d3ecda6dec5c6acc9de4496761fe70ad04160feb3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceActualXiWeightedIntegerMean/Variantac92764b17536f1a73f2759d3ecda6dec5c6acc9de4496761fe70ad04160feb3.lean#L228).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `47de225bc9eb00b1de7ee96f86cd3e2ea39859b7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
