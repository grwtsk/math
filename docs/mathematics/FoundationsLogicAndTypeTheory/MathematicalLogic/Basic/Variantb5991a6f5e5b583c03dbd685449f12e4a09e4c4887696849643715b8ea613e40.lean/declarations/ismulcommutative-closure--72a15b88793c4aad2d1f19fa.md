# isMulCommutative_closure

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0da62737498d431ea724e10c0f0e15eb12e1ac7a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1036,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b5/b5991a6f5e5b583c03dbd685449f12e4a09e4c4887696849643715b8ea613e40.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8155ddc5-7035-4f98-523b-148f73f75025",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a1e0bfe2-3c23-e73f-a980-b4a92f8722e1",
  "kind": "theorem",
  "lexical_name": "isMulCommutative_closure",
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
  "slug": "ismulcommutative-closure--72a15b88793c4aad2d1f19fa",
  "source": {
    "blob": "0da62737498d431ea724e10c0f0e15eb12e1ac7a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1044,
    "line": 1036,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantb5991a6f5e5b583c03dbd685449f12e4a09e4c4887696849643715b8ea613e40.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:72a15b88793c4aad2d1f19fac4e633577ab06907793f4c06050db9dc5886bd10",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantb5991a6f5e5b583c03dbd685449f12e4a09e4c4887696849643715b8ea613e40.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a1e0bfe2-3c23-e73f-a980-b4a92f8722e1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1036–1044.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isMulCommutative_closure {s : Set R'} (hcomm : s.Pairwise Commute) :
    IsMulCommutative (closure s) :=
  have := closure_le_centralizer_centralizer s
  .of_setLike_mul_comm fun _ h₁ _ h₂ ↦
    Set.centralizer_centralizer_comm_of_comm hcomm _ (this h₁) _ (this h₂)

open scoped IsMulCommutative in
/-- If all the elements of a set `s` commute, then `closure s` is a commutative semiring. -/
@[deprecated isMulCommutative_closure (since := "2026-03-11")]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantb5991a6f5e5b583c03dbd685449f12e4a09e4c4887696849643715b8ea613e40.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantb5991a6f5e5b583c03dbd685449f12e4a09e4c4887696849643715b8ea613e40.lean#L1036).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0da62737498d431ea724e10c0f0e15eb12e1ac7a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
