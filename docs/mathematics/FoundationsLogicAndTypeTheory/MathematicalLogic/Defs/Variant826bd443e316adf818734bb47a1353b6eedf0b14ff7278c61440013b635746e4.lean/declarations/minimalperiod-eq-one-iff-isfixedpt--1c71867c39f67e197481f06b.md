# minimalPeriod_eq_one_iff_isFixedPt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b13c026e181e32b56f3830e702caf85c1548fa82",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 329,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/82/826bd443e316adf818734bb47a1353b6eedf0b14ff7278c61440013b635746e4.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d6720df7-6a78-049d-959b-a184154163cb",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4bb47d6a-b3a5-27ba-03bb-f88d61e10c47",
  "kind": "theorem",
  "lexical_name": "minimalPeriod_eq_one_iff_isFixedPt",
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
  "slug": "minimalperiod-eq-one-iff-isfixedpt--1c71867c39f67e197481f06b",
  "source": {
    "blob": "b13c026e181e32b56f3830e702caf85c1548fa82",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 339,
    "line": 329,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant826bd443e316adf818734bb47a1353b6eedf0b14ff7278c61440013b635746e4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1c71867c39f67e197481f06b3a4fd6c91742155fddcd7235701ee78bef8b2a04",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant826bd443e316adf818734bb47a1353b6eedf0b14ff7278c61440013b635746e4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4bb47d6a-b3a5-27ba-03bb-f88d61e10c47`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 329–339.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem minimalPeriod_eq_one_iff_isFixedPt : minimalPeriod f x = 1 ↔ IsFixedPt f x := by
  refine ⟨fun h => ?_, fun h => ?_⟩
  · rw [← iterate_one f]
    refine Function.IsPeriodicPt.isFixedPt ?_
    rw [← h]
    exact isPeriodicPt_minimalPeriod f x
  · exact
      ((h.isPeriodicPt 1).minimalPeriod_le Nat.one_pos).antisymm
        (Nat.succ_le_of_lt ((h.isPeriodicPt 1).minimalPeriod_pos Nat.one_pos))

@[nontriviality]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant826bd443e316adf818734bb47a1353b6eedf0b14ff7278c61440013b635746e4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant826bd443e316adf818734bb47a1353b6eedf0b14ff7278c61440013b635746e4.lean#L329).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b13c026e181e32b56f3830e702caf85c1548fa82` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
