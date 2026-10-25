# neg_add

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "be4123f91d766b8563c965e72e9f96010dfbee61",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 282,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/84/84a9cbfa60b94eafdf86b23bc15d710386767930aa3e3c0a273ddbd99b55e01f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a830addd-d797-2b66-090d-43c5e5603e4b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1d06b242-c3c2-699d-635b-9e5d871609f2",
  "kind": "theorem",
  "lexical_name": "neg_add",
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
  "slug": "neg-add--ed60ac2c0eb853d23a3e7954",
  "source": {
    "blob": "be4123f91d766b8563c965e72e9f96010dfbee61",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 290,
    "line": 282,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant84a9cbfa60b94eafdf86b23bc15d710386767930aa3e3c0a273ddbd99b55e01f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ed60ac2c0eb853d23a3e79542806a80703360f0bd026177bc7b80f0526b9f315",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant84a9cbfa60b94eafdf86b23bc15d710386767930aa3e3c0a273ddbd99b55e01f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1d06b242-c3c2-699d-635b-9e5d871609f2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 282–290.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem neg_add {a b : Int} : -(a + b) = -a + -b := by
  apply Int.add_left_cancel (a := a + b)
  rw [Int.add_right_neg, Int.add_comm a, ← Int.add_assoc, Int.add_assoc b,
    Int.add_right_neg, Int.add_zero, Int.add_right_neg]

/--
If a predicate on the integers is invariant under negation,
then it is sufficient to prove it for the nonnegative integers.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant84a9cbfa60b94eafdf86b23bc15d710386767930aa3e3c0a273ddbd99b55e01f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant84a9cbfa60b94eafdf86b23bc15d710386767930aa3e3c0a273ddbd99b55e01f.lean#L282).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `be4123f91d766b8563c965e72e9f96010dfbee61` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
