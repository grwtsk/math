# octaveRepresentative_sub_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:487fdea1-c7dc-86f8-da65-aa4a2dfed431",
  "kind": "theorem",
  "lexical_name": "octaveRepresentative_sub_one",
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
  "slug": "octaverepresentative-sub-one--c11accdf48c4dbbdc1690d91",
  "source": {
    "blob": "2f67ed54be863129d202285ddf6cda797d0cda29",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 51,
    "line": 15,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerCyclicTwoBoundary.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c11accdf48c4dbbdc1690d91d785e80d716b4146f7097bd8d179ac20215845d3",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerCyclicTwoBoundary.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:487fdea1-c7dc-86f8-da65-aa4a2dfed431`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 15–51.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem octaveRepresentative_sub_one
    {X : ℕ}
    (hX : 0 < X)
    (z : ZMod (fejerOctavePeriod X)) :
    octaveRepresentative X
        (z - (1 : ZMod (fejerOctavePeriod X))) =
      if octaveRepresentative X z = 1
      then fejerOctavePeriod X
      else octaveRepresentative X z - 1 := by
  have hzcast :=
    natCast_octaveRepresentative hX z
  by_cases hz1 : octaveRepresentative X z = 1
  · rw [if_pos hz1]
    have hz : z = (1 : ZMod (fejerOctavePeriod X)) := by
      rw [← hzcast, hz1]
    rw [hz]
    simp [octaveRepresentative, fejerOctavePeriod]
  · rw [if_neg hz1]
    have hmem := octaveRepresentative_mem hX z
    have hrep2 : 2 ≤ octaveRepresentative X z := by
      omega
    have hsubPos : 1 ≤ octaveRepresentative X z - 1 := by
      omega
    have hsubLe :
        octaveRepresentative X z - 1 ≤ fejerOctavePeriod X := by
      omega
    have hzsub :
        z - (1 : ZMod (fejerOctavePeriod X)) =
          ((octaveRepresentative X z - 1 : ℕ) :
            ZMod (fejerOctavePeriod X)) := by
      rw [← hzcast]
      rw [← Nat.cast_one, ← Nat.cast_sub hrep2.le]
    rw [hzsub]
    exact octaveRepresentative_natCast hX hsubPos hsubLe

/-- Every unit-shift change lies at one of the two cyclic interval boundaries:
the first point inside the interval or the first point after it. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerCyclicTwoBoundary.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerCyclicTwoBoundary.lean#L15).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2f67ed54be863129d202285ddf6cda797d0cda29` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
