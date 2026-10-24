# mem_zmod_2

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0e151aa7aa22c5371a76d48edc6e8171b1b9e621",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 62,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/63/6361fd8c8f9012b2f8a562994826eec95ad14c5b1b1d660c2e342a83fd0a84ba.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:24be65d6-e92c-b808-8830-b214a8900be9",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1dbed37f-518f-3600-c81f-abacac26ae04",
  "kind": "theorem",
  "lexical_name": "mem_zmod_2",
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
  "slug": "mem-zmod-2--b97d46dcfc40047dd869d3a5",
  "source": {
    "blob": "0e151aa7aa22c5371a76d48edc6e8171b1b9e621",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 67,
    "line": 62,
    "path": "GRWTSK/Algebra/CanonicallyOrderedCommSemiringTwoMul/Variant6361fd8c8f9012b2f8a562994826eec95ad14c5b1b1d660c2e342a83fd0a84ba.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b97d46dcfc40047dd869d3a56562f572232b1548de1eb60d2f6f462d9d07c758",
  "verification": {
    "reference": "docs/verification/Algebra/CanonicallyOrderedCommSemiringTwoMul/Variant6361fd8c8f9012b2f8a562994826eec95ad14c5b1b1d660c2e342a83fd0a84ba.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1dbed37f-518f-3600-c81f-abacac26ae04`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 62–67.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mem_zmod_2 (a : ZMod 2) : a = 0 ∨ a = 1 := by
  rcases a with ⟨_ | _, _ | _ | _ | _⟩
  · exact Or.inl rfl
  · exact Or.inr rfl
#align counterexample.mem_zmod_2 Counterexample.mem_zmod_2

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/CanonicallyOrderedCommSemiringTwoMul/Variant6361fd8c8f9012b2f8a562994826eec95ad14c5b1b1d660c2e342a83fd0a84ba.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CanonicallyOrderedCommSemiringTwoMul/Variant6361fd8c8f9012b2f8a562994826eec95ad14c5b1b1d660c2e342a83fd0a84ba.lean#L62).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0e151aa7aa22c5371a76d48edc6e8171b1b9e621` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
