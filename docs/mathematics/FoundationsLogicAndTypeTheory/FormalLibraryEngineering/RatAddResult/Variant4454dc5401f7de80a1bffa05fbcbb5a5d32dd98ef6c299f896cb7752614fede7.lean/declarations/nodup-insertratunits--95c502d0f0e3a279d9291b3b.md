# nodup_insertRatUnits

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ed4e9fd379152a75d693c67e68912c000dd68559",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 54,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/44/4454dc5401f7de80a1bffa05fbcbb5a5d32dd98ef6c299f896cb7752614fede7.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:397711b4-ac3a-cb04-60e8-a6a79f274283",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6bbb838a-eaa0-3633-4f7b-a9c85ff86716",
  "kind": "theorem",
  "lexical_name": "nodup_insertRatUnits",
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
  "slug": "nodup-insertratunits--95c502d0f0e3a279d9291b3b",
  "source": {
    "blob": "ed4e9fd379152a75d693c67e68912c000dd68559",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 67,
    "line": 54,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RatAddResult/Variant4454dc5401f7de80a1bffa05fbcbb5a5d32dd98ef6c299f896cb7752614fede7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:95c502d0f0e3a279d9291b3b3d938a2c9f246840309398c529f6c82a7ceb3acf",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RatAddResult/Variant4454dc5401f7de80a1bffa05fbcbb5a5d32dd98ef6c299f896cb7752614fede7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6bbb838a-eaa0-3633-4f7b-a9c85ff86716`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 54–67.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem nodup_insertRatUnits {n : Nat} (f : DefaultFormula n)
    (hf : f.ratUnits = #[] ∧ f.assignments.size = n) (units : CNF.Clause (PosFin n)) :
    ∀ i : Fin (f.insertRatUnits units).1.ratUnits.size, ∀ j : Fin (f.insertRatUnits units).1.ratUnits.size,
      i ≠ j → (f.insertRatUnits units).1.ratUnits[i] ≠ (f.insertRatUnits units).1.ratUnits[j] := by
  intro i
  rcases hi : (insertRatUnits f units).fst.ratUnits[i] with ⟨li, bi⟩
  have h := insertRatUnits_postcondition f hf units ⟨li.1, li.2.2⟩
  rcases h with ⟨_, h2⟩ | ⟨k, b, _, _, _, h4⟩ | ⟨k1, k2, li_gt_zero, h1, h2, h3, h4, h5⟩
  · grind
  · by_cases i = k <;> grind
  · by_cases bi
    · by_cases i = k1 <;> grind
    · by_cases i = k2 <;> grind

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RatAddResult/Variant4454dc5401f7de80a1bffa05fbcbb5a5d32dd98ef6c299f896cb7752614fede7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RatAddResult/Variant4454dc5401f7de80a1bffa05fbcbb5a5d32dd98ef6c299f896cb7752614fede7.lean#L54).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ed4e9fd379152a75d693c67e68912c000dd68559` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
