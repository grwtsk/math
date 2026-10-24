# coreNonboundarySignedTerminalContribution_eq_selector

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:17b32529-470d-a2d4-c962-cbb9719e8dca",
  "kind": "theorem",
  "lexical_name": "coreNonboundarySignedTerminalContribution_eq_selector",
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
  "slug": "corenonboundarysignedterminalcontribution-eq-selector--b3f8b914d7a1057c874980fd",
  "source": {
    "blob": "719c8e2193cfc30c1e421772402732a666c0a8ad",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 123,
    "line": 83,
    "path": "GRWTSK/NumberTheory/Moebius/CoreNonboundarySignedLengthTranspose.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b3f8b914d7a1057c874980fd52f4e29f8083315935e3f92b69d83aa24eb169f1",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/CoreNonboundarySignedLengthTranspose.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:17b32529-470d-a2d4-c962-cbb9719e8dca`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 83–123.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem coreNonboundarySignedTerminalContribution_eq_selector
    {j t : ℕ}
    (hcore : t ∈ coreLongDeepDepths j) :
    coreNonboundarySignedTerminalContribution j t =
      ∑ n ∈ Finset.Ico (logarithmicShiftThreshold j) (2 ^ j),
        cumulativeHarmonicShiftCorrelation j t n *
          coreTerminalLengthCoefficient j t n := by
  have hN :
      logarithmicShiftThreshold j ≤ harmonicShiftCount j t := by
    simpa [coreLongDeepDepths] using
      (Finset.mem_filter.mp hcore).2
  have hNle : harmonicShiftCount j t ≤ 2 ^ j :=
    harmonicShiftCount_le_leftScale j t
  have hHpos : 0 < logarithmicShiftThreshold j := by
    unfold logarithmicShiftThreshold
    omega
  have hNpos : 0 < harmonicShiftCount j t :=
    lt_of_lt_of_le hHpos hN
  unfold coreNonboundarySignedTerminalContribution
  by_cases hboundary : harmonicShiftCount j t = 2 ^ j
  · rw [if_pos hboundary]
    apply Finset.sum_eq_zero
    intro n hn
    simp only [Finset.mem_Ico] at hn
    unfold coreTerminalLengthCoefficient
    simp [hboundary, hn.2.ne]
  · rw [if_neg hboundary]
    unfold harmonicTerminalCumulativeContribution
    rw [if_neg (Nat.ne_of_gt hNpos)]
    classical
    rw [Finset.sum_eq_single (harmonicShiftCount j t)]
    · unfold coreTerminalLengthCoefficient
      simp [hNpos]
    · intro n hn hne
      unfold coreTerminalLengthCoefficient
      simp [hne]
    · simp only [Finset.mem_Ico]
      exact ⟨hN, lt_of_le_of_ne hNle hboundary⟩

/-- Exact retained-length selector identity for the signed long-interior term
at one genuine core depth. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/CoreNonboundarySignedLengthTranspose.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/CoreNonboundarySignedLengthTranspose.lean#L83).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `719c8e2193cfc30c1e421772402732a666c0a8ad` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
