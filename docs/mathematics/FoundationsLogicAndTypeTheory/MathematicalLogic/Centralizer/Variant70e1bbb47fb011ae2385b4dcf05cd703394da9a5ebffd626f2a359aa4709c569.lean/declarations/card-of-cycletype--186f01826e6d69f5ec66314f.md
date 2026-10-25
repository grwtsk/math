# card_of_cycleType

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6d04ff8a-4d14-bd8f-0ab6-6e57ba8dd1ef",
  "kind": "theorem",
  "lexical_name": "card_of_cycleType",
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
  "slug": "card-of-cycletype--186f01826e6d69f5ec66314f",
  "source": {
    "blob": "b0bae72d4d25e97799ab4945862011a0074e9aed",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 131,
    "line": 109,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Centralizer/Variant70e1bbb47fb011ae2385b4dcf05cd703394da9a5ebffd626f2a359aa4709c569.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:186f01826e6d69f5ec66314f5615b6cfc71fc6cefceee062fcd79b8bee2233e3",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Centralizer/Variant70e1bbb47fb011ae2385b4dcf05cd703394da9a5ebffd626f2a359aa4709c569.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6d04ff8a-4d14-bd8f-0ab6-6e57ba8dd1ef`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 109–131.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem card_of_cycleType (m : Multiset ℕ) :
    #{g : alternatingGroup α | (g : Equiv.Perm α).cycleType = m} =
      if (m.sum ≤ Fintype.card α ∧ ∀ a ∈ m, 2 ≤ a) ∧ Even (m.sum + Multiset.card m) then
        (Fintype.card α)! /
          ((Fintype.card α - m.sum)! *
            (m.prod * (∏ n ∈ m.toFinset, (m.count n)!)))
      else 0 := by
  split_ifs with hm
  · -- m is an even cycle_type
    rw [← Finset.card_map, map_subtype_of_cycleType, ite_eq_left hm.2,
      Equiv.Perm.card_of_cycleType α m, ite_eq_left hm.1, mul_assoc]
  · -- m does not correspond to a permutation, or to an odd one,
    rw [← Finset.card_map, map_subtype_of_cycleType]
    rw [apply_ite Finset.card, Finset.card_empty]
    split_ifs with hm'
    · rw [Equiv.Perm.card_of_cycleType, ite_eq_right]
      obtain hm | hm := not_and_or.mp hm
      · exact hm
      · contradiction
    · rfl

open Fintype in
/-- The number of cycles of given length -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Centralizer/Variant70e1bbb47fb011ae2385b4dcf05cd703394da9a5ebffd626f2a359aa4709c569.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Centralizer/Variant70e1bbb47fb011ae2385b4dcf05cd703394da9a5ebffd626f2a359aa4709c569.lean#L109).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b0bae72d4d25e97799ab4945862011a0074e9aed` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
