# toMk₁_bijective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8e49dfa8d47905faa7ac501f4c665fcacddd3b00",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 150,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/91/915eb0ab0e304403fec5fd03a88b1c32551af6947acc721c30bc8c0638c17bde.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2126347b-9442-3272-0be4-f2c0391ecbd9",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f6370fd0-e6d3-9af5-b427-692ada11b44c",
  "kind": "lemma",
  "lexical_name": "toMk₁_bijective",
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
  "slug": "tomk-bijective--d087a09b66e0f1ea22f5f7a7",
  "source": {
    "blob": "8e49dfa8d47905faa7ac501f4c665fcacddd3b00",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 156,
    "line": 150,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/ToMkOne/Variant915eb0ab0e304403fec5fd03a88b1c32551af6947acc721c30bc8c0638c17bde.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d087a09b66e0f1ea22f5f7a793f8b76d6f02593f7a30fc825dfa93c6baf079d7",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/ToMkOne/Variant915eb0ab0e304403fec5fd03a88b1c32551af6947acc721c30bc8c0638c17bde.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f6370fd0-e6d3-9af5-b427-692ada11b44c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 150–156.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma toMk₁_bijective {n : ℕ} : Function.Bijective (toMk₁ (n := n)) :=
  ⟨toMk₁_injective, toMk₁_surjective⟩

/-- The bijection `Fin (n + 2) ≃ (⦋n⦌ ⟶ ⦋1⦌)` which sends `i : Fin (n + 2)` to the
morphism `⦋n⦌ ⟶ ⦋1⦌` in the simplex category which corresponds to the monotone map
`Fin (n + 1) → Fin 2` which takes `i` times the value `0`. -/
@[simps! apply]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/ToMkOne/Variant915eb0ab0e304403fec5fd03a88b1c32551af6947acc721c30bc8c0638c17bde.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/ToMkOne/Variant915eb0ab0e304403fec5fd03a88b1c32551af6947acc721c30bc8c0638c17bde.lean#L150).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8e49dfa8d47905faa7ac501f4c665fcacddd3b00` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
