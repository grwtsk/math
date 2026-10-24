# pickupEnergySubexp_of_completedVerticalLineUniform

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4056a3c5-3f69-b1ca-f64f-90e88b6f69c8",
  "kind": "theorem",
  "lexical_name": "pickupEnergySubexp_of_completedVerticalLineUniform",
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
  "slug": "pickupenergysubexp-of-completedverticallineuniform--2f4314c967448d12c822a0c6",
  "source": {
    "blob": "3acfdb95ea3ca582b50458577db96e553be21fe4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 134,
    "line": 120,
    "path": "GRWTSK/NumberTheory/Moebius/VerticalLineCriterion.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2f4314c967448d12c822a0c655a71ef86295ff89527768849774b4b4b1baaa51",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/VerticalLineCriterion.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4056a3c5-3f69-b1ca-f64f-90e88b6f69c8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 120–134.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem pickupEnergySubexp_of_completedVerticalLineUniform
    (hV : CompletedVerticalLineUniform) : PickupEnergySubexp := by
  intro ε hε
  obtain ⟨C, hC, hbound⟩ := hV (ε / 2) (by linarith)
  refine ⟨C, hC, ?_⟩
  intro T hT
  calc
    pickupEnergy T ≤ Real.exp (2 * (ε / 2) * T) * verticalLineMass (ε / 2) T :=
      pickupEnergy_le_exp_mul_weightedWindow (by linarith) hT
    _ ≤ Real.exp (2 * (ε / 2) * T) * C :=
      mul_le_mul_of_nonneg_left (hbound T hT) (Real.exp_pos _).le
    _ = C * Real.exp (ε * T) := by ring_nf

/-- Uniform control of the completed vertical-line expression is exactly the
existing all-positive-damping energy criterion. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/VerticalLineCriterion.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/VerticalLineCriterion.lean#L120).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3acfdb95ea3ca582b50458577db96e553be21fe4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
