# mem_restrict

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9b23992e740084ac5975c9c83c179a79c4644f41",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 641,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/9f/9fc245bd029104d74ea865a8840fd3122d545e1f53d976496002d0e934255c66.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:976d948b-5bb5-da9d-016c-2a4dea0f0e6a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7acc70e6-5244-3eec-9cbb-33cfd9298668",
  "kind": "theorem",
  "lexical_name": "mem_restrict",
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
  "slug": "mem-restrict--4d56db8f1865d50fb551a7fd",
  "source": {
    "blob": "9b23992e740084ac5975c9c83c179a79c4644f41",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 649,
    "line": 641,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Part/Variant9fc245bd029104d74ea865a8840fd3122d545e1f53d976496002d0e934255c66.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4d56db8f1865d50fb551a7fd1542fe8ea7815640b788157672f44dea6429f499",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Part/Variant9fc245bd029104d74ea865a8840fd3122d545e1f53d976496002d0e934255c66.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7acc70e6-5244-3eec-9cbb-33cfd9298668`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 641–649.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mem_restrict (p : Prop) (o : Part α) (h : p → o.Dom) (a : α) :
    a ∈ restrict p o h ↔ p ∧ a ∈ o := by
  dsimp [restrict, mem_eq]; constructor
  · rintro ⟨h₀, h₁⟩
    exact ⟨h₀, ⟨_, h₁⟩⟩
  rintro ⟨h₀, _, h₂⟩; exact ⟨h₀, h₂⟩
#align part.mem_restrict Part.mem_restrict

/-- `unwrap o` gets the value at `o`, ignoring the condition. This function is unsound. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Part/Variant9fc245bd029104d74ea865a8840fd3122d545e1f53d976496002d0e934255c66.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Part/Variant9fc245bd029104d74ea865a8840fd3122d545e1f53d976496002d0e934255c66.lean#L641).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9b23992e740084ac5975c9c83c179a79c4644f41` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
