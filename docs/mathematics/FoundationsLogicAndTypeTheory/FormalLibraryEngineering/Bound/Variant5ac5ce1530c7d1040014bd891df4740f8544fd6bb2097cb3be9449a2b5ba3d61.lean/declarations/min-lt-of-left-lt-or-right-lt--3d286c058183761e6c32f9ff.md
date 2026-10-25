# min_lt_of_left_lt_or_right_lt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c301acf7ac22a6b32bb1daaa1556c9425ea08efb",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 166,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/5a/5ac5ce1530c7d1040014bd891df4740f8544fd6bb2097cb3be9449a2b5ba3d61.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a7499cd6-f4d6-5a07-4e02-926b457e365c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:640522e8-b2ba-8f39-9c3b-84a8bcc60b5b",
  "kind": "lemma",
  "lexical_name": "min_lt_of_left_lt_or_right_lt",
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
  "slug": "min-lt-of-left-lt-or-right-lt--3d286c058183761e6c32f9ff",
  "source": {
    "blob": "c301acf7ac22a6b32bb1daaa1556c9425ea08efb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 185,
    "line": 166,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bound/Variant5ac5ce1530c7d1040014bd891df4740f8544fd6bb2097cb3be9449a2b5ba3d61.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3d286c058183761e6c32f9ffa50170f34219798db77b711ae9e681e109f83265",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bound/Variant5ac5ce1530c7d1040014bd891df4740f8544fd6bb2097cb3be9449a2b5ba3d61.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:640522e8-b2ba-8f39-9c3b-84a8bcc60b5b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 166–185.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma min_lt_of_left_lt_or_right_lt : a < c ∨ b < c → min a b < c := min_lt_iff.mpr

-- Register guessing rules
attribute [bound]
  -- Which side of the `max` should we use as the lower bound?
  le_max_of_le_left_or_le_right
  lt_max_of_lt_left_or_lt_right
  -- Which side of the `min` should we use as the upper bound?
  min_le_of_left_le_or_right_le
  min_lt_of_left_lt_or_right_lt

end Guessing

/-!
### Closing tactics

TODO: Kim Morrison noted that we could check for `ℕ` or `ℤ` and try `lia` as well.
-/

/-- Close numerical goals with `norm_num` -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bound/Variant5ac5ce1530c7d1040014bd891df4740f8544fd6bb2097cb3be9449a2b5ba3d61.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bound/Variant5ac5ce1530c7d1040014bd891df4740f8544fd6bb2097cb3be9449a2b5ba3d61.lean#L166).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c301acf7ac22a6b32bb1daaa1556c9425ea08efb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
