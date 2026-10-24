# δ_one_mkOfSucc

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4eef89e52a0e4e10d9b11d7cc084bb72e66212e9",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 443,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/7e/7e72333668a0779edb16297c6d541333ba1fbdaacf8269d587c825b104a968a2.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:903faa8d-6982-7c49-7ff8-15dbb135e95c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f7a8c4a2-a3ee-8fa9-f6fd-bdf6288c6ea8",
  "kind": "lemma",
  "lexical_name": "δ_one_mkOfSucc",
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
  "slug": "one-mkofsucc--740d459dd024559ecb719c52",
  "source": {
    "blob": "4eef89e52a0e4e10d9b11d7cc084bb72e66212e9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 450,
    "line": 443,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variant7e72333668a0779edb16297c6d541333ba1fbdaacf8269d587c825b104a968a2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:740d459dd024559ecb719c524fe1cf23baa4c5024332b6b6175e5f9f7b827a2a",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Basic/Variant7e72333668a0779edb16297c6d541333ba1fbdaacf8269d587c825b104a968a2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f7a8c4a2-a3ee-8fa9-f6fd-bdf6288c6ea8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 443–450.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma δ_one_mkOfSucc {n : ℕ} (i : Fin n) :
    δ 1 ≫ mkOfSucc i = SimplexCategory.const _ _ i.castSucc := by
  ext x
  fin_cases x
  aesop

/-- If `i + 1 < j`, `mkOfSucc i ≫ δ j` is the morphism `⦋1⦌ ⟶ ⦋n⦌` that
sends `0` and `1` to `i` and `i + 1`, respectively. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Basic/Variant7e72333668a0779edb16297c6d541333ba1fbdaacf8269d587c825b104a968a2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variant7e72333668a0779edb16297c6d541333ba1fbdaacf8269d587c825b104a968a2.lean#L443).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4eef89e52a0e4e10d9b11d7cc084bb72e66212e9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
