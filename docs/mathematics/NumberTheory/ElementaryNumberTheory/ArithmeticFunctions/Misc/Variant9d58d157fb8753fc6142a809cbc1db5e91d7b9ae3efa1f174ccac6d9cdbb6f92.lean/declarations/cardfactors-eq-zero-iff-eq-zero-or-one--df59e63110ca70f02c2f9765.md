# cardFactors_eq_zero_iff_eq_zero_or_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "24382010ced603fc5daa48ec7ae3ca21ae13463b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 274,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/9d/9d58d157fb8753fc6142a809cbc1db5e91d7b9ae3efa1f174ccac6d9cdbb6f92.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:65790280-ac16-4a4a-c1af-eff046f63bf2",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:58bacf3d-2e42-6302-4518-af3f1e22a937",
  "kind": "theorem",
  "lexical_name": "cardFactors_eq_zero_iff_eq_zero_or_one",
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
  "slug": "cardfactors-eq-zero-iff-eq-zero-or-one--df59e63110ca70f02c2f9765",
  "source": {
    "blob": "24382010ced603fc5daa48ec7ae3ca21ae13463b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 277,
    "line": 274,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Misc/Variant9d58d157fb8753fc6142a809cbc1db5e91d7b9ae3efa1f174ccac6d9cdbb6f92.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:df59e63110ca70f02c2f97652b3e3990f707426a5ac0208df5f2551c2aebc58a",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Misc/Variant9d58d157fb8753fc6142a809cbc1db5e91d7b9ae3efa1f174ccac6d9cdbb6f92.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:58bacf3d-2e42-6302-4518-af3f1e22a937`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 274–277.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem cardFactors_eq_zero_iff_eq_zero_or_one {n : ℕ} : Ω n = 0 ↔ n = 0 ∨ n = 1 := by
  rw [cardFactors_apply, List.length_eq_zero_iff, primeFactorsList_eq_nil]

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Misc/Variant9d58d157fb8753fc6142a809cbc1db5e91d7b9ae3efa1f174ccac6d9cdbb6f92.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Misc/Variant9d58d157fb8753fc6142a809cbc1db5e91d7b9ae3efa1f174ccac6d9cdbb6f92.lean#L274).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `24382010ced603fc5daa48ec7ae3ca21ae13463b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
