# criticalWeight_zero_above

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4ab1da99-8b32-a94c-2abd-10ab11aa2a6b",
  "kind": "theorem",
  "lexical_name": "criticalWeight_zero_above",
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
  "slug": "criticalweight-zero-above--8264cf3ccfa26cbf3ef6d2f7",
  "source": {
    "blob": "ae5f1c467c7008fd7f7975f9922cae61ec8a37d6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 168,
    "line": 154,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Da293c45b9c3573e10d6SourceCriticalRelativeCompensation/Variante71a8d9d49a80fb76b882ffd94edc9d5288502bc7a8d9da0429ac5837f59c340.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8264cf3ccfa26cbf3ef6d2f719ad12ed93795eb09b39d8eb01adbdc756e578f5",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Da293c45b9c3573e10d6SourceCriticalRelativeCompensation/Variante71a8d9d49a80fb76b882ffd94edc9d5288502bc7a8d9da0429ac5837f59c340.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4ab1da99-8b32-a94c-2abd-10ab11aa2a6b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 154–168.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem criticalWeight_zero_above {A t : ℝ} (hA : 1 ≤ A) (ht : 2 * A < t) :
    criticalWeight A t = 0 := by
  have hp : 0 < A := by linarith
  have hz : sourceCorrelation explicitSecondDerivative A t = 0 :=
    sourceCorrelation_eq_zero_of_two_mul_le_abs A t hp (by linarith [le_abs_self t])
  have he : EqOn (sourceCorrelation explicitSecondDerivative A) (fun _ => (0 : ℝ))
      (Ioi (2 * A)) := by
    intro u hu
    exact sourceCorrelation_eq_zero_of_two_mul_le_abs A u hp
      ((mem_Ioi.mp hu).le.trans (le_abs_self u))
  have hd : deriv (sourceCorrelation explicitSecondDerivative A) t = 0 := by
    simpa using he.deriv isOpen_Ioi ht
  simp [criticalWeight, hz, hd]

/-- Exact source boundary contribution; the unit baseline is retained. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Da293c45b9c3573e10d6SourceCriticalRelativeCompensation/Variante71a8d9d49a80fb76b882ffd94edc9d5288502bc7a8d9da0429ac5837f59c340.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Da293c45b9c3573e10d6SourceCriticalRelativeCompensation/Variante71a8d9d49a80fb76b882ffd94edc9d5288502bc7a8d9da0429ac5837f59c340.lean#L154).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ae5f1c467c7008fd7f7975f9922cae61ec8a37d6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
