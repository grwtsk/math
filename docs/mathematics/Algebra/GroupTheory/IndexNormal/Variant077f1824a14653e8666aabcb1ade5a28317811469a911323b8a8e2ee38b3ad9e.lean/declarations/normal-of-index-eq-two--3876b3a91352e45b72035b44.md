# normal_of_index_eq_two

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "710ba1d8d91301645bf4f237baa61dc2402234d0",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 35,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/07/077f1824a14653e8666aabcb1ade5a28317811469a911323b8a8e2ee38b3ad9e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:75ad180e-a6c1-04dd-aeb0-f6ef76bf2297",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a0df29d5-85bf-b477-c558-58a582a71153",
  "kind": "theorem",
  "lexical_name": "normal_of_index_eq_two",
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
  "slug": "normal-of-index-eq-two--3876b3a91352e45b72035b44",
  "source": {
    "blob": "710ba1d8d91301645bf4f237baa61dc2402234d0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 40,
    "line": 35,
    "path": "GRWTSK/Algebra/GroupTheory/IndexNormal/Variant077f1824a14653e8666aabcb1ade5a28317811469a911323b8a8e2ee38b3ad9e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3876b3a91352e45b72035b4462a78ad6600006799534ed5b070461bff881f990",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/IndexNormal/Variant077f1824a14653e8666aabcb1ade5a28317811469a911323b8a8e2ee38b3ad9e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a0df29d5-85bf-b477-c558-58a582a71153`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 35–40.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem normal_of_index_eq_two (hH : H.index = 2) : H.Normal where
  conj_mem x hxH g := by simp_rw [mul_mem_iff_of_index_two hH, hxH, iff_true, inv_mem_iff]

/-- A subgroup of a finite group whose index is the smallest prime factor is normal.

Note : if `G` is infinite, then `Nat.card G = 0` and `(Nat.card G).minFac = 2` -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/IndexNormal/Variant077f1824a14653e8666aabcb1ade5a28317811469a911323b8a8e2ee38b3ad9e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/IndexNormal/Variant077f1824a14653e8666aabcb1ade5a28317811469a911323b8a8e2ee38b3ad9e.lean#L35).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `710ba1d8d91301645bf4f237baa61dc2402234d0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
