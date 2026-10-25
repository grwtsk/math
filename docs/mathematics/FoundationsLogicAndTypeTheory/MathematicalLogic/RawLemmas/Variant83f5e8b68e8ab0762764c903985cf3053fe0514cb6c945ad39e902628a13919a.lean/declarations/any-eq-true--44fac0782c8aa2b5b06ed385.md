# any_eq_true

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "08770e3fc86bdd2d8c54065158d2f1039fe085a7",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1516,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/83/83f5e8b68e8ab0762764c903985cf3053fe0514cb6c945ad39e902628a13919a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f487c575-bdb7-4c08-4235-318278e6628d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3eebbcf3-8bd4-c82e-8777-7127a60e2a58",
  "kind": "theorem",
  "lexical_name": "any_eq_true",
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
  "slug": "any-eq-true--44fac0782c8aa2b5b06ed385",
  "source": {
    "blob": "08770e3fc86bdd2d8c54065158d2f1039fe085a7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1539,
    "line": 1516,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/RawLemmas/Variant83f5e8b68e8ab0762764c903985cf3053fe0514cb6c945ad39e902628a13919a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:44fac0782c8aa2b5b06ed38529abb086c9f3f1c5bafeb851a7e990dcb75418ee",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/RawLemmas/Variant83f5e8b68e8ab0762764c903985cf3053fe0514cb6c945ad39e902628a13919a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3eebbcf3-8bd4-c82e-8777-7127a60e2a58`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1516–1539.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem any_eq_true [LawfulHashable α] [EquivBEq α] {p : (_ : α) → β → Bool} (h : m.1.WF) :
    m.1.any p = true ↔ ∃ (a : α) (h : m.contains a), p (m.getKey a h) (Const.get m a h) := by
  simp only [← any_toList, List.any_eq_true, Prod.exists,
    mem_toList_iff_getKey?_eq_some_and_get?_eq_some _ h, get?_eq_some_iff _ h,
    getKey?_eq_some_iff _ h]
  constructor
  · intro h'
    rcases h' with ⟨a, b, h', hp⟩
    rcases h' with ⟨ha, h₁, hb⟩
    rcases ha with ⟨h₂, ha⟩
    exists a
    exists h₁
    simp [ha, hb, hp]
  · intro h'
    rcases h' with ⟨a, h', hp⟩
    exists m.getKey a h'
    exists Const.get m a h'
    simp only [hp, and_true]
    have ha : m.contains (m.getKey a h') := by
      apply contains_of_getKey?_eq_some _ h
      rw [getKey?_eq_some_iff (k := a) _ h]
      exists h'
    simp [ha, getKey_congr _ h (getKey_beq _ h h'), get_congr _ h (getKey_beq _ h h')]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/RawLemmas/Variant83f5e8b68e8ab0762764c903985cf3053fe0514cb6c945ad39e902628a13919a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/RawLemmas/Variant83f5e8b68e8ab0762764c903985cf3053fe0514cb6c945ad39e902628a13919a.lean#L1516).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `08770e3fc86bdd2d8c54065158d2f1039fe085a7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
