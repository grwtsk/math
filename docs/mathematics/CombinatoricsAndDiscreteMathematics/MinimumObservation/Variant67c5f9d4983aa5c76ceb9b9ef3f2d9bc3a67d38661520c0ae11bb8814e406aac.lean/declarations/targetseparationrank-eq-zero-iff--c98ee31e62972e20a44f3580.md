# targetSeparationRank_eq_zero_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0636bf84-091d-e06f-a16f-67c21e1e0dad",
  "kind": "theorem",
  "lexical_name": "targetSeparationRank_eq_zero_iff",
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
  "slug": "targetseparationrank-eq-zero-iff--c98ee31e62972e20a44f3580",
  "source": {
    "blob": "04af1a5916d6095463ee9aeb7ba81d14ef632ce6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 210,
    "line": 189,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/MinimumObservation/Variant67c5f9d4983aa5c76ceb9b9ef3f2d9bc3a67d38661520c0ae11bb8814e406aac.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c98ee31e62972e20a44f35808dc5ae6443e8723b5a49ad41b765c4262f00b9df",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/MinimumObservation/Variant67c5f9d4983aa5c76ceb9b9ef3f2d9bc3a67d38661520c0ae11bb8814e406aac.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0636bf84-091d-e06f-a16f-67c21e1e0dad`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 189–210.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem targetSeparationRank_eq_zero_iff (obs : Test → Object → Value)
    (admitted : Finset Test) (target : Object → Result) :
    TargetSeparationRank obs admitted target = 0 ↔ ∀ x y, target x = target y := by
  constructor
  · intro zero
    obtain ⟨selected, _, separates, cardinality⟩ := targetSeparationRank_attained zero
    have empty : selected = ∅ := Finset.card_eq_zero.mp cardinality
    rw [empty] at separates
    exact (separates_empty_iff obs target).mp separates
  · intro constant
    have zeroMember : 0 ∈
        (sufficientObservationFamilies obs admitted target).image Finset.card :=
      Finset.mem_image.mpr ⟨∅,
        (mem_sufficientObservationFamilies obs admitted ∅ target).mpr
          ⟨Finset.empty_subset admitted, (separates_empty_iff obs target).mpr constant⟩,
        Finset.card_empty⟩
    obtain ⟨size, minimum⟩ := Finset.min_of_mem zeroMember
    have zeroSize : size = 0 :=
      Nat.eq_zero_of_le_zero (Finset.min_le_of_eq zeroMember minimum)
    simpa only [TargetSeparationRank, zeroSize, WithTop.coe_zero] using minimum

/-- A larger admitted language cannot increase the minimum sufficient observation size. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/MinimumObservation/Variant67c5f9d4983aa5c76ceb9b9ef3f2d9bc3a67d38661520c0ae11bb8814e406aac.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/MinimumObservation/Variant67c5f9d4983aa5c76ceb9b9ef3f2d9bc3a67d38661520c0ae11bb8814e406aac.lean#L189).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `04af1a5916d6095463ee9aeb7ba81d14ef632ce6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
