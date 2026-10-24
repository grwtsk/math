# nonAliasingFejerMobiusLogSquarefreeGCDAggregate_eq_low_add_high

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7501e8b1-4410-df77-d986-f7d1ea3349bb",
  "kind": "theorem",
  "lexical_name": "nonAliasingFejerMobiusLogSquarefreeGCDAggregate_eq_low_add_high",
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
  "slug": "nonaliasingfejermobiuslogsquarefreegcdaggregate-eq-low-add-high--1eb178f2d4b7e087496f6ddf",
  "source": {
    "blob": "3850d5ace477943031d8c81a97a8628652b60096",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 426,
    "line": 411,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerMobiusLogTypeITypeIIBarrier.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1eb178f2d4b7e087496f6ddfe887a43c59d383cf6901eed52e76426bd4851c51",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerMobiusLogTypeITypeIIBarrier.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7501e8b1-4410-df77-d986-f7d1ea3349bb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 411–426.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem nonAliasingFejerMobiusLogSquarefreeGCDAggregate_eq_low_add_high
    (X N m Y : ℕ) :
    nonAliasingFejerMobiusLogSquarefreeGCDAggregate X N m =
      nonAliasingFejerMobiusLogLowGCDAggregate X N m Y +
        nonAliasingFejerMobiusLogHighGCDAggregate X N m Y := by
  unfold nonAliasingFejerMobiusLogSquarefreeGCDAggregate
    nonAliasingFejerMobiusLogLowGCDAggregate
    nonAliasingFejerMobiusLogHighGCDAggregate
  rw [← Finset.sum_add_distrib]
  apply Finset.sum_congr rfl
  intro h hh
  exact
    nonAliasingFejerMobiusLogSquarefreeGCDShiftCorrelation_eq_low_add_high
      X N m h Y

/-- Signed high-g aggregate is bounded by the absolute Type II aggregate. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerMobiusLogTypeITypeIIBarrier.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerMobiusLogTypeITypeIIBarrier.lean#L411).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3850d5ace477943031d8c81a97a8628652b60096` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
