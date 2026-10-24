# nth_prime_three_eq_seven

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f9d09d963c17e3cc1b715b3e39e9137b75d1007a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 25,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c2/c2cd90f27848a2e8c7354d72ac0d5e7984a9328144e11a29ff24e693254c95c9.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2abc72c7-5f2b-4f29-4cea-5abf80483347",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d5db9b6d-80c3-1055-ae82-bec0ecef4ac8",
  "kind": "theorem",
  "lexical_name": "nth_prime_three_eq_seven",
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
  "slug": "nth-prime-three-eq-seven--06cc3e8a7816e4ae7fc5d98d",
  "source": {
    "blob": "f9d09d963c17e3cc1b715b3e39e9137b75d1007a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 27,
    "line": 25,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/Nth/Variantc2cd90f27848a2e8c7354d72ac0d5e7984a9328144e11a29ff24e693254c95c9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:06cc3e8a7816e4ae7fc5d98dd5f3790edd83d489f21fe02bed3a8d6c32aff587",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/Nth/Variantc2cd90f27848a2e8c7354d72ac0d5e7984a9328144e11a29ff24e693254c95c9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d5db9b6d-80c3-1055-ae82-bec0ecef4ac8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 25–27.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem nth_prime_three_eq_seven : nth Nat.Prime 3 = 7 := nth_count prime_seven

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/Nth/Variantc2cd90f27848a2e8c7354d72ac0d5e7984a9328144e11a29ff24e693254c95c9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/Nth/Variantc2cd90f27848a2e8c7354d72ac0d5e7984a9328144e11a29ff24e693254c95c9.lean#L25).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f9d09d963c17e3cc1b715b3e39e9137b75d1007a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
