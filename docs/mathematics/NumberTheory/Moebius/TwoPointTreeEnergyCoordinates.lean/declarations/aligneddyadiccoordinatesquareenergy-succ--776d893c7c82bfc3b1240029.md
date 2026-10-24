# alignedDyadicCoordinateSquareEnergy_succ

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fc284a58-2d42-f82d-6ed0-7d35f05cbbdd",
  "kind": "theorem",
  "lexical_name": "alignedDyadicCoordinateSquareEnergy_succ",
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
  "slug": "aligneddyadiccoordinatesquareenergy-succ--776d893c7c82bfc3b1240029",
  "source": {
    "blob": "ae35ae8d80bc6bd3a27192077bbff2e2eb7a9027",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 139,
    "line": 100,
    "path": "GRWTSK/NumberTheory/Moebius/TwoPointTreeEnergyCoordinates.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:776d893c7c82bfc3b1240029ab3ed11ef62126cf3f21382eba011f8651db8ef3",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/TwoPointTreeEnergyCoordinates.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fc284a58-2d42-f82d-6ed0-7d35f05cbbdd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 100–139.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem alignedDyadicCoordinateSquareEnergy_succ
    (m : ℕ) (a : ℕ → ℝ) :
    alignedDyadicCoordinateSquareEnergy (m + 1) a =
      alignedDyadicBlockSum a (m + 1) 0 ^ 2 +
        alignedDyadicCoordinateSquareEnergy m a +
        alignedDyadicCoordinateSquareEnergy m
          (shiftedSequence a (2 ^ m)) := by
  let right : ℕ → ℝ := shiftedSequence a (2 ^ m)
  calc
    alignedDyadicCoordinateSquareEnergy (m + 1) a =
        (∑ r ∈ Finset.range (m + 1),
          alignedDyadicScaleSquareEnergy (m + 1) r a) +
          alignedDyadicScaleSquareEnergy (m + 1) (m + 1) a := by
      unfold alignedDyadicCoordinateSquareEnergy
      rw [Finset.sum_range_succ]
    _ = (∑ r ∈ Finset.range (m + 1),
          (alignedDyadicScaleSquareEnergy m r a +
            alignedDyadicScaleSquareEnergy m r right)) +
          alignedDyadicBlockSum a (m + 1) 0 ^ 2 := by
      congr 1
      · apply Finset.sum_congr rfl
        intro r hrange
        have hr : r ≤ m := Nat.le_of_lt_succ (Finset.mem_range.mp hrange)
        simpa [right] using
          alignedDyadicScaleSquareEnergy_succ m r a hr
      · simp
    _ = alignedDyadicBlockSum a (m + 1) 0 ^ 2 +
        alignedDyadicCoordinateSquareEnergy m a +
        alignedDyadicCoordinateSquareEnergy m right := by
      rw [Finset.sum_add_distrib]
      unfold alignedDyadicCoordinateSquareEnergy
      ring
    _ = alignedDyadicBlockSum a (m + 1) 0 ^ 2 +
        alignedDyadicCoordinateSquareEnergy m a +
        alignedDyadicCoordinateSquareEnergy m
          (shiftedSequence a (2 ^ m)) := by
      rfl

/-- The recursive tree energy is exactly the explicit double sum over aligned
scale and block coordinates. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/TwoPointTreeEnergyCoordinates.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/TwoPointTreeEnergyCoordinates.lean#L100).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ae35ae8d80bc6bd3a27192077bbff2e2eb7a9027` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
