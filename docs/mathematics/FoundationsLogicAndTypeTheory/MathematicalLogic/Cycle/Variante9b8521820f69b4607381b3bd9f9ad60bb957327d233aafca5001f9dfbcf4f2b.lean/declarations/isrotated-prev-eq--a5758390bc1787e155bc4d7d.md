# isRotated_prev_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "968f548761284dc1e32e3166d8b3a4ffe6fcea69",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 434,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e9/e9b8521820f69b4607381b3bd9f9ad60bb957327d233aafca5001f9dfbcf4f2b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1a58cb46-fb46-1c51-1d25-ebb5f5b1b8c8",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:cf57b173-0857-35d5-2cb5-2ce4f7ee9b22",
  "kind": "theorem",
  "lexical_name": "isRotated_prev_eq",
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
  "slug": "isrotated-prev-eq--a5758390bc1787e155bc4d7d",
  "source": {
    "blob": "968f548761284dc1e32e3166d8b3a4ffe6fcea69",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 446,
    "line": 434,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Cycle/Variante9b8521820f69b4607381b3bd9f9ad60bb957327d233aafca5001f9dfbcf4f2b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a5758390bc1787e155bc4d7d6496cad626ecc328e979e04be5d8597248e07654",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Cycle/Variante9b8521820f69b4607381b3bd9f9ad60bb957327d233aafca5001f9dfbcf4f2b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cf57b173-0857-35d5-2cb5-2ce4f7ee9b22`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 434–446.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isRotated_prev_eq {l l' : List α} (h : l ~r l') (hn : Nodup l) {x : α} (hx : x ∈ l) :
    l.prev x hx = l'.prev x (h.mem_iff.mp hx) := by
  rw [← next_reverse_eq_prev _ hn, ← next_reverse_eq_prev _ (h.nodup_iff.mp hn)]
  exact isRotated_next_eq h.reverse (nodup_reverse.mpr hn) _
#align list.is_rotated_prev_eq List.isRotated_prev_eq

end List

open List

/-- `Cycle α` is the quotient of `List α` by cyclic permutation.
Duplicates are allowed.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Cycle/Variante9b8521820f69b4607381b3bd9f9ad60bb957327d233aafca5001f9dfbcf4f2b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Cycle/Variante9b8521820f69b4607381b3bd9f9ad60bb957327d233aafca5001f9dfbcf4f2b.lean#L434).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `968f548761284dc1e32e3166d8b3a4ffe6fcea69` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
