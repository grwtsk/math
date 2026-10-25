# insertManyIfNewUnit_ind

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5517bc1f-60c0-add9-9b9b-98605b28f4a8",
  "kind": "theorem",
  "lexical_name": "insertManyIfNewUnit_ind",
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
  "slug": "insertmanyifnewunit-ind--4833d5281120bc948329c43f",
  "source": {
    "blob": "3526f1e218af2eeedb0d42f157a0136dc3c4e5ed",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 3623,
    "line": 3612,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/RawLemmas/Variantcdcb63e8aa618e7eb1a20a85fc808fa49909d0294897c828d705a17b01d4d8e0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4833d5281120bc948329c43ffad7aa256db464f7713a46ab18e60041b8dbc772",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/RawLemmas/Variantcdcb63e8aa618e7eb1a20a85fc808fa49909d0294897c828d705a17b01d4d8e0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5517bc1f-60c0-add9-9b9b-98605b28f4a8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 3612–3623.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem insertManyIfNewUnit_ind {motive : Raw α (fun _ => Unit) → Prop}
    (m : Raw α fun _ => Unit) (l : ρ)
    (init : motive m) (insert : ∀ m a, motive m → motive (m.insertIfNew a ())) :
    motive (insertManyIfNewUnit m l) := by
  dsimp [insertManyIfNewUnit]
  split
  · rename_i h
    refine Raw₀.Const.insertManyIfNewUnit_ind ⟨m, h⟩ l init (fun m a h => ?_)
    simpa only [Raw.insertIfNew, m.2, ↓reduceDIte] using insert m.1 a h
  · exact init

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/RawLemmas/Variantcdcb63e8aa618e7eb1a20a85fc808fa49909d0294897c828d705a17b01d4d8e0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/RawLemmas/Variantcdcb63e8aa618e7eb1a20a85fc808fa49909d0294897c828d705a17b01d4d8e0.lean#L3612).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3526f1e218af2eeedb0d42f157a0136dc3c4e5ed` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
