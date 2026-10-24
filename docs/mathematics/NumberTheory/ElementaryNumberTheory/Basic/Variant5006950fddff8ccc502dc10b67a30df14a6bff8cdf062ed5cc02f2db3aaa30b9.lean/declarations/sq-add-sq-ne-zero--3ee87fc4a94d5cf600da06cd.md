# sq_add_sq_ne_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4b402e75b822f48b6dfd09834f31adf8b3be7334",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 386,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/50/5006950fddff8ccc502dc10b67a30df14a6bff8cdf062ed5cc02f2db3aaa30b9.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:91b1543f-855c-de20-7a7f-8f0a28125fe2",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d2a616ef-f26d-97c8-55ed-c8aea2a88469",
  "kind": "theorem",
  "lexical_name": "sq_add_sq_ne_zero",
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
  "slug": "sq-add-sq-ne-zero--3ee87fc4a94d5cf600da06cd",
  "source": {
    "blob": "4b402e75b822f48b6dfd09834f31adf8b3be7334",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 398,
    "line": 386,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/Basic/Variant5006950fddff8ccc502dc10b67a30df14a6bff8cdf062ed5cc02f2db3aaa30b9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3ee87fc4a94d5cf600da06cd46621fe0f59eec8307d53da674714a857d679a70",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/Basic/Variant5006950fddff8ccc502dc10b67a30df14a6bff8cdf062ed5cc02f2db3aaa30b9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d2a616ef-f26d-97c8-55ed-c8aea2a88469`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 386–398.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sq_add_sq_ne_zero {R : Type*} [LinearOrderedCommRing R] {a b : R} (h : IsCoprime a b) :
    a ^ 2 + b ^ 2 ≠ 0 := by
  intro h'
  obtain ⟨ha, hb⟩ := (add_eq_zero_iff'
  --Porting TODO: replace with sq_nonneg when that file is ported
    (by rw [pow_two]; exact mul_self_nonneg _)
    (by rw [pow_two]; exact mul_self_nonneg _)).mp h'
  obtain rfl := pow_eq_zero ha
  obtain rfl := pow_eq_zero hb
  exact not_isCoprime_zero_zero h
#align is_coprime.sq_add_sq_ne_zero IsCoprime.sq_add_sq_ne_zero

end IsCoprime
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/Basic/Variant5006950fddff8ccc502dc10b67a30df14a6bff8cdf062ed5cc02f2db3aaa30b9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/Basic/Variant5006950fddff8ccc502dc10b67a30df14a6bff8cdf062ed5cc02f2db3aaa30b9.lean#L386).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4b402e75b822f48b6dfd09834f31adf8b3be7334` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
