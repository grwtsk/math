# count_prime_113_le_29

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3cc2a6d099ec6db457125cd9f2845e63cb7c2ead",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 70,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/dd/dd65548ab171676f5e1e15cb21c10e06d42d83903495e5db6efc2ac837ed0f18.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:79171127-7474-65b7-fc25-c31ab553c91e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:db4f59f4-f3de-ea11-1388-48fabc907e5a",
  "kind": "theorem",
  "lexical_name": "count_prime_113_le_29",
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
  "slug": "count-prime-113-le-29--3fdce0bc2a73f0e5ddb458e3",
  "source": {
    "blob": "3cc2a6d099ec6db457125cd9f2845e63cb7c2ead",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 70,
    "line": 70,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/PrimeTables/Variantdd65548ab171676f5e1e15cb21c10e06d42d83903495e5db6efc2ac837ed0f18.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3fdce0bc2a73f0e5ddb458e3569c4d75836871cf8a44bb1c8366c46b42eccfc8",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/PrimeTables/Variantdd65548ab171676f5e1e15cb21c10e06d42d83903495e5db6efc2ac837ed0f18.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:db4f59f4-f3de-ea11-1388-48fabc907e5a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 70–70.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem count_prime_113_le_29 : Nat.count Nat.Prime 113 ≤ 29 := by simp only [count_ofNat]; norm_num
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/PrimeTables/Variantdd65548ab171676f5e1e15cb21c10e06d42d83903495e5db6efc2ac837ed0f18.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/PrimeTables/Variantdd65548ab171676f5e1e15cb21c10e06d42d83903495e5db6efc2ac837ed0f18.lean#L70).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3cc2a6d099ec6db457125cd9f2845e63cb7c2ead` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
