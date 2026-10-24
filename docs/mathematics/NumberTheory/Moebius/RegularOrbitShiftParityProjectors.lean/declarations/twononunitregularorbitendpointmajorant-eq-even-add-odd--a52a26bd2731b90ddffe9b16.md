# twoNonunitRegularOrbitEndpointMajorant_eq_even_add_odd

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:76a473ef-1c10-99e5-cc15-5ef4a63e5eeb",
  "kind": "theorem",
  "lexical_name": "twoNonunitRegularOrbitEndpointMajorant_eq_even_add_odd",
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
  "slug": "twononunitregularorbitendpointmajorant-eq-even-add-odd--a52a26bd2731b90ddffe9b16",
  "source": {
    "blob": "c704448768339770aa5b21459dfdc2b9fd291867",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 296,
    "line": 271,
    "path": "GRWTSK/NumberTheory/Moebius/RegularOrbitShiftParityProjectors.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a52a26bd2731b90ddffe9b16998d7109859a889b46b74a7674886367727223ad",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/RegularOrbitShiftParityProjectors.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:76a473ef-1c10-99e5-cc15-5ef4a63e5eeb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 271–296.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem twoNonunitRegularOrbitEndpointMajorant_eq_even_add_odd
    (b : ℕ) :
    twoNonunitRegularOrbitEndpointMajorant b =
      twoNonunitEvenShiftEndpointMajorant b +
        twoNonunitOddShiftEndpointMajorant b := by
  unfold twoNonunitRegularOrbitEndpointMajorant
    twoNonunitEvenShiftEndpointMajorant
    twoNonunitOddShiftEndpointMajorant
  rw [← Finset.sum_add_distrib]
  apply Finset.sum_congr rfl
  intro d hd
  have hdpos :
      0 < d := (Finset.mem_Ico.mp (Finset.mem_filter.mp hd).1).1
  simp only [dif_pos hdpos]
  letI : NeZero d := ⟨ne_of_gt hdpos⟩
  by_cases hNonunit : TwoNonunitSquareModulusParameter d
  · simp only [hNonunit, dif_pos]
    rw [← mul_add, ← Finset.sum_add_distrib]
    apply congrArg
    apply Finset.sum_congr rfl
    intro k _hk
    exact twoNonunitRegularOrbitMajorant_eq_even_add_odd
      b d hNonunit k
  · simp [hNonunit]

/-- Natural-scale supplier for the even-shift regular-orbit family. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/RegularOrbitShiftParityProjectors.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/RegularOrbitShiftParityProjectors.lean#L271).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c704448768339770aa5b21459dfdc2b9fd291867` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
