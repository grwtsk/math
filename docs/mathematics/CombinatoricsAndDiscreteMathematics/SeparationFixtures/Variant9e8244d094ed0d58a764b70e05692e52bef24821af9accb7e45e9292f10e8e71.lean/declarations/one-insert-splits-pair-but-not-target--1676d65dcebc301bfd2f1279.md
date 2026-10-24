# one_insert_splits_pair_but_not_target

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:68ff7bc3-3042-dbf7-bae0-cbb9d22689a7",
  "kind": "theorem",
  "lexical_name": "one_insert_splits_pair_but_not_target",
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
  "slug": "one-insert-splits-pair-but-not-target--1676d65dcebc301bfd2f1279",
  "source": {
    "blob": "4abb93d19a679f666f87c8522036b6ba5e5b61c2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 100,
    "line": 78,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/SeparationFixtures/Variant9e8244d094ed0d58a764b70e05692e52bef24821af9accb7e45e9292f10e8e71.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1676d65dcebc301bfd2f1279d921a23df15ff1c1a639a8c4244f4e01d139c87f",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/SeparationFixtures/Variant9e8244d094ed0d58a764b70e05692e52bef24821af9accb7e45e9292f10e8e71.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:68ff7bc3-3042-dbf7-bae0-cbb9d22689a7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 78–100.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem one_insert_splits_pair_but_not_target :
    observationCarrier coordinateObservation ∅ (false, false) =
        observationCarrier coordinateObservation ∅ (true, false) ∧
      observationCarrier coordinateObservation (insert false ∅) (false, false) ≠
        observationCarrier coordinateObservation (insert false ∅) (true, false) ∧
      observationCarrier coordinateObservation (insert false ∅) (false, false) =
        observationCarrier coordinateObservation (insert false ∅) (false, true) ∧
      ¬SeparatesTarget coordinateObservation (insert false ∅)
        (id : BooleanPair → BooleanPair) := by
  have oldEqual : observationCarrier coordinateObservation ∅ (false, false) =
      observationCarrier coordinateObservation ∅ (true, false) := by
    apply (observationCarrier_eq_iff coordinateObservation ∅ _ _).mpr
    simp
  refine ⟨oldEqual, (observationCarrier_insert_ne_iff coordinateObservation ∅ false
    (false, false) (true, false) oldEqual).mpr (by decide), ?_, ?_⟩
  · apply (observationCarrier_eq_iff coordinateObservation (insert false ∅) _ _).mpr
    intro test member
    have equal : test = false := by simpa using member
    subst test
    rfl
  · simpa using first_test_loses_identity

/-- A constant target needs no tests even when the objects have two independent coordinates. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/SeparationFixtures/Variant9e8244d094ed0d58a764b70e05692e52bef24821af9accb7e45e9292f10e8e71.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/SeparationFixtures/Variant9e8244d094ed0d58a764b70e05692e52bef24821af9accb7e45e9292f10e8e71.lean#L78).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4abb93d19a679f666f87c8522036b6ba5e5b61c2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
