# measureReal_goldbachMajorArcSet_two_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:20a2d40d-473b-ed7e-6258-326799a43034",
  "kind": "theorem",
  "lexical_name": "measureReal_goldbachMajorArcSet_two_le",
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
  "slug": "measurereal-goldbachmajorarcset-two-le--a732d7e5230f080bada7f5bc",
  "source": {
    "blob": "6e86d3afbb8938da5ab60190be12ce61cbe8c672",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 68,
    "line": 47,
    "path": "GRWTSK/NumberTheory/Primes/GoldbachMinorEnergyBarrier.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a732d7e5230f080bada7f5bc8dae642c955e633c3915dac98be0751a38eeed91",
  "verification": {
    "reference": "docs/verification/NumberTheory/Primes/GoldbachMinorEnergyBarrier.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:20a2d40d-473b-ed7e-6258-326799a43034`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 47–68.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem measureReal_goldbachMajorArcSet_two_le (N : ℕ) :
    volume.real (goldbachRationalMajorArcSet 2 N) ≤ 18 / (N + 1 : ℝ) := by
  rw [goldbachMajorArcSet_two_eq_union]
  calc
    volume.real (goldbachClippedRationalArc 2 N (0, 1) ∪
        goldbachClippedRationalArc 2 N (1, 2)) ≤
        volume.real (goldbachClippedRationalArc 2 N (0, 1)) +
          volume.real (goldbachClippedRationalArc 2 N (1, 2)) := measureReal_union_le _ _
    _ ≤ 6 * goldbachRationalArcRadius 2 N 1 +
        6 * goldbachRationalArcRadius 2 N 2 :=
      add_le_add (measureReal_goldbachClippedRationalArc_le 2 N (0, 1))
        (measureReal_goldbachClippedRationalArc_le 2 N (1, 2))
    _ = 18 / (N + 1 : ℝ) := by
      unfold goldbachRationalArcRadius
      push_cast
      have hX : (N + 1 : ℝ) ≠ 0 := by positivity
      field_simp [hX]
      ring

/-- The absolute energy in the two major arcs has an elementary upper
bound. This is not the signed model-major comparison from the terminal
criterion. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Primes/GoldbachMinorEnergyBarrier.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Primes/GoldbachMinorEnergyBarrier.lean#L47).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6e86d3afbb8938da5ab60190be12ce61cbe8c672` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
