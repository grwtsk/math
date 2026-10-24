# mem_goldbachPeriodizedRationalArc_iff_offsetCircle

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fc47b644-2f85-a549-839c-6f0d3b2eabdf",
  "kind": "theorem",
  "lexical_name": "mem_goldbachPeriodizedRationalArc_iff_offsetCircle",
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
  "slug": "mem-goldbachperiodizedrationalarc-iff-offsetcircle--6f763c7c598ebc2d3b800176",
  "source": {
    "blob": "e5d105564d0c8c61fea6bff4880d9dc2750c56b8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 191,
    "line": 124,
    "path": "GRWTSK/NumberTheory/Primes/GoldbachCircleWindowGeometry.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6f763c7c598ebc2d3b8001766779d338145f7322ef5d0d4442e061fe3593469c",
  "verification": {
    "reference": "docs/verification/NumberTheory/Primes/GoldbachCircleWindowGeometry.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fc47b644-2f85-a549-839c-6f0d3b2eabdf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 124–191.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mem_goldbachPeriodizedRationalArc_iff_offsetCircle
    {Q N a q : ℕ} {x : ℝ}
    (hindex : (a, q) ∈ goldbachRationalArcIndices Q)
    (hxunit : x ∈ Set.Ioc (0 : ℝ) 1) :
    x ∈ goldbachPeriodizedRationalArc Q N a q ↔
      goldbachOffsetCircle a q x ∈
        goldbachCircleWindow Q N q := by
  let c := goldbachRationalArcCenter a q
  let r := goldbachRationalArcRadius Q N q
  let β := goldbachRationalArcOffset a q x
  have hround :=
    round_goldbachRationalArcOffset_cases hindex hxunit
  have hnorm :
      ‖goldbachOffsetCircle a q x‖ =
        |β - (round β : ℝ)| := by
    simpa [β] using norm_goldbachOffsetCircle a q x
  change
    x ∈
        Set.Icc (c - r) (c + r) ∪
          (Set.Icc (c + 1 - r) (c + 1 + r) ∪
            Set.Icc (c - 1 - r) (c - 1 + r)) ↔
      dist (goldbachOffsetCircle a q x) 0 ≤ r
  rw [dist_zero_right, hnorm]
  constructor
  · intro hx
    have hβ :
        |β - (round β : ℝ)| ≤ r := by
      rcases hx with hcentral | hrest
      · have hzero :
            |β - (0 : ℝ)| ≤ r := by
          rw [abs_le]
          dsimp [β, c, goldbachRationalArcOffset]
          constructor <;> linarith [hcentral.1, hcentral.2]
        exact (round_le β (0 : ℤ)).trans (by simpa only [Int.cast_zero] using hzero)
      · rcases hrest with hplus | hminus
        · have hone :
              |β - (1 : ℝ)| ≤ r := by
            rw [abs_le]
            dsimp [β, c, goldbachRationalArcOffset]
            constructor <;> linarith [hplus.1, hplus.2]
          exact (round_le β (1 : ℤ)).trans (by simpa only [Int.cast_one] using hone)
        · have hneg :
              |β - ((-1 : ℤ) : ℝ)| ≤ r := by
            rw [Int.cast_neg, Int.cast_one, abs_le]
            dsimp [β, c, goldbachRationalArcOffset]
            constructor <;> linarith [hminus.1, hminus.2]
          exact (round_le β (-1 : ℤ)).trans hneg
    exact hβ
  · intro hβ
    rcases hround with hneg | hzero | hone
    · rw [hneg, Int.cast_neg, Int.cast_one] at hβ
      have hb := abs_le.mp hβ
      refine Or.inr (Or.inr ?_)
      dsimp [β, c, goldbachRationalArcOffset] at hb
      constructor <;> linarith
    · rw [hzero, Int.cast_zero, sub_zero] at hβ
      have hb := abs_le.mp hβ
      refine Or.inl ?_
      dsimp [β, c, goldbachRationalArcOffset] at hb
      constructor <;> linarith
    · rw [hone, Int.cast_one] at hβ
      have hb := abs_le.mp hβ
      refine Or.inr (Or.inl ?_)
      dsimp [β, c, goldbachRationalArcOffset] at hb
      constructor <;> linarith

/-- The inherited clipped three-lift arc is exactly the clipped preimage of
one metric circle window. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Primes/GoldbachCircleWindowGeometry.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Primes/GoldbachCircleWindowGeometry.lean#L124).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e5d105564d0c8c61fea6bff4880d9dc2750c56b8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
