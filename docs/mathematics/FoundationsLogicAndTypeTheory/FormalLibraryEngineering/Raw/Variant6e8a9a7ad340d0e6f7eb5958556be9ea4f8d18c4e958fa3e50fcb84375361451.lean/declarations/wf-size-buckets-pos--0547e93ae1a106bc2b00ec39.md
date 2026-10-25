# WF.size_buckets_pos

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3c0e3953-b338-634b-f734-9268f0a32b16",
  "kind": "theorem",
  "lexical_name": "WF.size_buckets_pos",
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
  "slug": "wf-size-buckets-pos--0547e93ae1a106bc2b00ec39",
  "source": {
    "blob": "2e06730534a8940b11e7a2534b6dae40bf114c87",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 751,
    "line": 735,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Raw/Variant6e8a9a7ad340d0e6f7eb5958556be9ea4f8d18c4e958fa3e50fcb84375361451.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0547e93ae1a106bc2b00ec393a76e87dbdd56d035a000381909f968b31c0285d",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Raw/Variant6e8a9a7ad340d0e6f7eb5958556be9ea4f8d18c4e958fa3e50fcb84375361451.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3c0e3953-b338-634b-f734-9268f0a32b16`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 735–751.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem WF.size_buckets_pos [BEq α] [Hashable α] (m : Raw α β) : WF m → 0 < m.buckets.size
  | wf h₁ _ => h₁
  | emptyWithCapacity₀ => (Raw₀.emptyWithCapacity _).2
  | insert₀ _ => (Raw₀.insert ⟨_, _⟩ _ _).2
  | containsThenInsert₀ _ => (Raw₀.containsThenInsert ⟨_, _⟩ _ _).2.2
  | containsThenInsertIfNew₀ _ => (Raw₀.containsThenInsertIfNew ⟨_, _⟩ _ _).2.2
  | erase₀ _ => (Raw₀.erase ⟨_, _⟩ _).2
  | insertIfNew₀ _ => (Raw₀.insertIfNew ⟨_, _⟩ _ _).2
  | getThenInsertIfNew?₀ _ => (Raw₀.getThenInsertIfNew? ⟨_, _⟩ _ _).2.2
  | filter₀ _ => (Raw₀.filter _ ⟨_, _⟩).2
  | constGetThenInsertIfNew?₀ _ => (Raw₀.Const.getThenInsertIfNew? ⟨_, _⟩ _ _).2.2
  | modify₀ _ => (Raw₀.modify _ _ _).2
  | constModify₀ _ => (Raw₀.Const.modify _ _ _).2
  | alter₀ _ => (Raw₀.alter _ _ _).2
  | constAlter₀ _ => (Raw₀.Const.alter _ _ _).2
  | inter₀ _ _ => (Raw₀.inter _ _).2

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Raw/Variant6e8a9a7ad340d0e6f7eb5958556be9ea4f8d18c4e958fa3e50fcb84375361451.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Raw/Variant6e8a9a7ad340d0e6f7eb5958556be9ea4f8d18c4e958fa3e50fcb84375361451.lean#L735).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2e06730534a8940b11e7a2534b6dae40bf114c87` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
