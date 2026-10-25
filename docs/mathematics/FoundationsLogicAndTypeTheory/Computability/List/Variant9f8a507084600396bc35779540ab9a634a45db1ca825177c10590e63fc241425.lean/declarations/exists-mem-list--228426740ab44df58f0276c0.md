# exists_mem_list

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1c155221615d1381cf2a3dc9bfc9ab4ccd1e78fe",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 487,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/9f/9f8a507084600396bc35779540ab9a634a45db1ca825177c10590e63fc241425.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d481af6e-f24c-b68b-9c60-77ab547be409",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:af966ea4-c0d8-4c30-4f59-652a1977d6a3",
  "kind": "theorem",
  "lexical_name": "exists_mem_list",
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
  "slug": "exists-mem-list--228426740ab44df58f0276c0",
  "source": {
    "blob": "1c155221615d1381cf2a3dc9bfc9ab4ccd1e78fe",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 494,
    "line": 487,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/Computability/List/Variant9f8a507084600396bc35779540ab9a634a45db1ca825177c10590e63fc241425.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:228426740ab44df58f0276c0c192cdcf3113b9128590fe6f451fb995a33c990e",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/Computability/List/Variant9f8a507084600396bc35779540ab9a634a45db1ca825177c10590e63fc241425.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:af966ea4-c0d8-4c30-4f59-652a1977d6a3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 487–494.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_mem_list (hf : PrimrecRel R) : PrimrecRel fun (L : List α) b ↦ ∃ a ∈ L, R a b := by
  classical
  have h (L) (b) : (List.filter (R · b) L).length ≠ 0 ↔ ∃ a ∈ L, R a b := by simp
  refine .of_eq (.not ?_) h
  exact Primrec.eq.comp (list_length.comp hf.listFilter) (const 0)

/-- If `R a b` is decidable, then given `L : List α` and `b : β`, `g L b ↔ ∀ a L, R a b`
is a primitive recursive relation. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/Computability/List/Variant9f8a507084600396bc35779540ab9a634a45db1ca825177c10590e63fc241425.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/Computability/List/Variant9f8a507084600396bc35779540ab9a634a45db1ca825177c10590e63fc241425.lean#L487).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1c155221615d1381cf2a3dc9bfc9ab4ccd1e78fe` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
