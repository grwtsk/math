# listMax_mem_or_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:14ceae39-65c0-5677-c038-faceeb71880c",
  "kind": "theorem",
  "lexical_name": "listMax_mem_or_zero",
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
  "slug": "listmax-mem-or-zero--d430f75e837ccec5f54e446a",
  "source": {
    "blob": "5977f6772134c674cfb23ef4f07eaaedba6f1afe",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 69,
    "line": 54,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FiniteHeight/Variant77abcfddbc3d074799d36a593793ff079ee409ebdbebd4b5c02729f4ce03c24d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d430f75e837ccec5f54e446ac7e7a5b3d4103586715785ae8b27db5822b6d244",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FiniteHeight/Variant77abcfddbc3d074799d36a593793ff079ee409ebdbebd4b5c02729f4ce03c24d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:14ceae39-65c0-5677-c038-faceeb71880c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 54–69.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem listMax_mem_or_zero (values : List ℕ) :
    listMax values = 0 ∨ listMax values ∈ values := by
  induction values with
  | nil => exact Or.inl rfl
  | cons value rest ih =>
    by_cases largest : listMax rest ≤ value
    · right
      simp only [listMax_cons, max_eq_left largest]
      exact List.mem_cons_self
    · have larger : value ≤ listMax rest := by omega
      simp only [listMax_cons, max_eq_right larger]
      rcases ih with zero | member
      · exact Or.inl zero
      · exact Or.inr (List.mem_cons_of_mem _ member)

/-- Complete finite branching reduction data. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FiniteHeight/Variant77abcfddbc3d074799d36a593793ff079ee409ebdbebd4b5c02729f4ce03c24d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FiniteHeight/Variant77abcfddbc3d074799d36a593793ff079ee409ebdbebd4b5c02729f4ce03c24d.lean#L54).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5977f6772134c674cfb23ef4f07eaaedba6f1afe` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
