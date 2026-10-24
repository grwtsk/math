# actualFullMovingCompensation_gap_lower

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9dfd0f90-b99b-d811-3285-7f440cb059e7",
  "kind": "theorem",
  "lexical_name": "actualFullMovingCompensation_gap_lower",
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
  "slug": "actualfullmovingcompensation-gap-lower--3e558a2fb71ee635058ae040",
  "source": {
    "blob": "3ae1c257e87f688624a0eddb77503b81fc5e4a7d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 92,
    "line": 79,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt03/Variant1bdd0cd4f2cc1c1e72a0536499637397390ce4a38773bd2480e3649528b38fa0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3e558a2fb71ee635058ae0406b601a5735cc48b61db4dd1838a9b0d442a1b09e",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt03/Variant1bdd0cd4f2cc1c1e72a0536499637397390ce4a38773bd2480e3649528b38fa0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9dfd0f90-b99b-d811-3285-7f440cb059e7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 79–92.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualFullMovingCompensation_gap_lower {A : ℝ} (hA : 91 ≤ A) :
    (200 / 3 : ℝ) * Real.exp (A - 1 / 2) / (A ^ 9 * sourceNormalization A) ≤
      actualPreEdgeMovingWork A + actualUpperEdgePrimeJumpCompensation A -
        actualMovingCriticalHead A - actualCriticalErrorCovariance A := by
  rw [actualCriticalCovariance_eq_full_edge_assembly hA]
  have hd := actualUpperEdgeContinuousDrift_upper hA
  have he : actualUpperEdgeContinuousDrift A ≤
      -((200 / 3 : ℝ) * Real.exp (A - 1 / 2) / (A ^ 9 * sourceNormalization A)) := by
    convert hd using 1
    ring
  linarith

/-- A lower estimate for the full covariance requires this signed actual compensation.
The entire preceding source interval remains present; no component is inferred divergent. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt03/Variant1bdd0cd4f2cc1c1e72a0536499637397390ce4a38773bd2480e3649528b38fa0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt03/Variant1bdd0cd4f2cc1c1e72a0536499637397390ce4a38773bd2480e3649528b38fa0.lean#L79).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3ae1c257e87f688624a0eddb77503b81fc5e4a7d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
