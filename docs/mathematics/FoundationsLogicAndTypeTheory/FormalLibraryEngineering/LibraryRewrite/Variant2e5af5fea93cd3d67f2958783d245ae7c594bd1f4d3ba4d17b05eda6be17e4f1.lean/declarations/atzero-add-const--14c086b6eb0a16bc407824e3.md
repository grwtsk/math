# atZero_add_const

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8ec9f4f01c52f136a5582b9208f007ed47fc431a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 191,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/2e/2e5af5fea93cd3d67f2958783d245ae7c594bd1f4d3ba4d17b05eda6be17e4f1.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e269d163-77d7-1b97-a681-af182489091f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d6d287fa-f767-78e0-b41c-32a0673ed9c0",
  "kind": "theorem",
  "lexical_name": "atZero_add_const",
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
  "slug": "atzero-add-const--14c086b6eb0a16bc407824e3",
  "source": {
    "blob": "8ec9f4f01c52f136a5582b9208f007ed47fc431a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 230,
    "line": 191,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LibraryRewrite/Variant2e5af5fea93cd3d67f2958783d245ae7c594bd1f4d3ba4d17b05eda6be17e4f1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:14c086b6eb0a16bc407824e3609f5342128f4ca00b55af1e4fce32291f470e7c",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LibraryRewrite/Variant2e5af5fea93cd3d67f2958783d245ae7c594bd1f4d3ba4d17b05eda6be17e4f1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d6d287fa-f767-78e0-b41c-32a0673ed9c0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 191–230.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem atZero_add_const (f : Int → Int) (c : Int) : atZero (fun x => f x + c) = atZero f + c := rfl

/--
info: Pattern atZero fun x => f x + c
· (atZero fun x => x) + 1
  atZero_add_const

Pattern atZero fun x => f x + g x
· (atZero fun x => x) + atZero fun x => 1
  atZero_add

Pattern atZero f
· -atZero fun x => -(x + 1)
  neg_atZero_neg
-/
#guard_msgs in
#rw?? atZero fun x => x + 1
/--
info: Pattern atZero fun x => -f x
· -atZero fun x => x
  atZero_neg

Pattern atZero f
· -atZero fun x => - -x
  neg_atZero_neg
-/
#guard_msgs in
#rw?? atZero (Neg.neg : Int → Int)

-- `Nat.Coprime` is reducible, so we might get matches with the pattern `n = 1`.
-- This doesn't work with the `rw` tactic though, so we make sure to avoid them.
/--
info: Pattern n.Coprime m
· Nat.Coprime 3 2
  Nat.coprime_comm
· Nat.gcd 2 3 = 1
  Nat.coprime_iff_gcd_eq_one
-/
#guard_msgs in
#rw?? Nat.Coprime 2 3
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LibraryRewrite/Variant2e5af5fea93cd3d67f2958783d245ae7c594bd1f4d3ba4d17b05eda6be17e4f1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LibraryRewrite/Variant2e5af5fea93cd3d67f2958783d245ae7c594bd1f4d3ba4d17b05eda6be17e4f1.lean#L191).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8ec9f4f01c52f136a5582b9208f007ed47fc431a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
