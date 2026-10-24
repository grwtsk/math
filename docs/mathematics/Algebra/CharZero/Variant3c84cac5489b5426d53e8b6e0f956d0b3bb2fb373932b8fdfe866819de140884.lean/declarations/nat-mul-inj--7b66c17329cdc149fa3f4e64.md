# nat_mul_inj

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c87768e842322f66fb35fef9bff602a33df8fdd7",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 87,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/3c/3c84cac5489b5426d53e8b6e0f956d0b3bb2fb373932b8fdfe866819de140884.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c8dd287b-f1d3-5169-9ebb-45e67e7c5129",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:34cf8a02-1360-0ebe-e8cf-e6b0c9632e00",
  "kind": "theorem",
  "lexical_name": "nat_mul_inj",
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
  "slug": "nat-mul-inj--7b66c17329cdc149fa3f4e64",
  "source": {
    "blob": "c87768e842322f66fb35fef9bff602a33df8fdd7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 90,
    "line": 87,
    "path": "GRWTSK/Algebra/CharZero/Variant3c84cac5489b5426d53e8b6e0f956d0b3bb2fb373932b8fdfe866819de140884.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7b66c17329cdc149fa3f4e6423b597fb5e3581f104e65099c6aa512f50b00321",
  "verification": {
    "reference": "docs/verification/Algebra/CharZero/Variant3c84cac5489b5426d53e8b6e0f956d0b3bb2fb373932b8fdfe866819de140884.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:34cf8a02-1360-0ebe-e8cf-e6b0c9632e00`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 87–90.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem nat_mul_inj {n : ℕ} {a b : R} (h : (n : R) * a = (n : R) * b) : n = 0 ∨ a = b := by
  rw [← sub_eq_zero, ← mul_sub, mul_eq_zero, sub_eq_zero] at h
  exact mod_cast h

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/CharZero/Variant3c84cac5489b5426d53e8b6e0f956d0b3bb2fb373932b8fdfe866819de140884.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CharZero/Variant3c84cac5489b5426d53e8b6e0f956d0b3bb2fb373932b8fdfe866819de140884.lean#L87).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c87768e842322f66fb35fef9bff602a33df8fdd7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
