# logarithmicLongDepthRemainder_eq_terminal_add_signedInterior

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d113761b-6156-a075-bc5a-ed83129763de",
  "kind": "theorem",
  "lexical_name": "logarithmicLongDepthRemainder_eq_terminal_add_signedInterior",
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
  "slug": "logarithmiclongdepthremainder-eq-terminal-add-signedinterior--0aea133f0f716f79d9ef68c1",
  "source": {
    "blob": "3eeb984404cfdf422b21d0f0d93855e1ab312327",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 114,
    "line": 97,
    "path": "GRWTSK/NumberTheory/Moebius/CoreGrowingShiftFirstDifference.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0aea133f0f716f79d9ef68c14b1b266fc3f9dee33d3b53cbab31090f7aa5f6f0",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/CoreGrowingShiftFirstDifference.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d113761b-6156-a075-bc5a-ed83129763de`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 97–114.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem logarithmicLongDepthRemainder_eq_terminal_add_signedInterior
    (j t : ℕ) :
    logarithmicLongDepthRemainder j t =
      2 * (harmonicTerminalCumulativeContribution j t +
        harmonicSignedLongInteriorContribution j t) := by
  rw [logarithmicLongDepthRemainder_eq_terminal_add_longInterior]
  unfold harmonicSignedLongInteriorContribution
    harmonicCumulativeLongContribution
  let YR : ℝ := ((2 ^ (j + 1) : ℕ) : ℝ)
  have hYR : 0 < YR := by
    dsimp [YR]
    positivity
  field_simp [ne_of_gt hYR]
  ring

/-- At one genuine core depth, the terminal cumulative coefficient and the
second-difference interior telescope exactly to the logarithmic anchor plus the
explicit growing-shift first-difference tail. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/CoreGrowingShiftFirstDifference.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/CoreGrowingShiftFirstDifference.lean#L97).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3eeb984404cfdf422b21d0f0d93855e1ab312327` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
