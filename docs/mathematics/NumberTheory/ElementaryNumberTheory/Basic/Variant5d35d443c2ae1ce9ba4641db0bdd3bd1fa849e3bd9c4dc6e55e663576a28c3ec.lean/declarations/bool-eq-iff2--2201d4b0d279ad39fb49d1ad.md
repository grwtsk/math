# Bool_eq_iff2

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "cb154996d528e29177db8384157a82305b95538e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 274,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/5d/5d35d443c2ae1ce9ba4641db0bdd3bd1fa849e3bd9c4dc6e55e663576a28c3ec.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:465d8322-4dd9-a3f8-4e5c-edcec659e847",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:cc645d3d-c405-6c16-9e6a-a7dab96c0f1a",
  "kind": "theorem",
  "lexical_name": "Bool_eq_iff2",
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
  "slug": "bool-eq-iff2--2201d4b0d279ad39fb49d1ad",
  "source": {
    "blob": "cb154996d528e29177db8384157a82305b95538e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 284,
    "line": 274,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/Basic/Variant5d35d443c2ae1ce9ba4641db0bdd3bd1fa849e3bd9c4dc6e55e663576a28c3ec.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2201d4b0d279ad39fb49d1ad4de6b9f8a11f0ce501632d7fc5972672346bf6ac",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/Basic/Variant5d35d443c2ae1ce9ba4641db0bdd3bd1fa849e3bd9c4dc6e55e663576a28c3ec.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cc645d3d-c405-6c16-9e6a-a7dab96c0f1a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 274–284.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Bool_eq_iff2 {A B : Bool} : (A = B) = (A ↔ B) := by
  apply? -- exact Bool_eq_iff

assert_no_sorry Bool_eq_iff2

-- Example from https://leanprover.zulipchat.com/#narrow/stream/287929-mathlib4/topic/library_search.20regression/near/354025788
/--
info: Try this:
  [apply] exact Quot.mk_surjective
-/
#guard_msgs in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/Basic/Variant5d35d443c2ae1ce9ba4641db0bdd3bd1fa849e3bd9c4dc6e55e663576a28c3ec.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/Basic/Variant5d35d443c2ae1ce9ba4641db0bdd3bd1fa849e3bd9c4dc6e55e663576a28c3ec.lean#L274).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cb154996d528e29177db8384157a82305b95538e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
