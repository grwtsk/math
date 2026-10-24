# ZMod.trace_pow_card

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "247292c276e1d4e8e63ff4102ebd68e43ffd5be1",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 61,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/7a/7a8425f0bad271f725b46c42f8809745862be9c22f52fd56f01431077b853c78.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a5a90cec-f58c-c7e5-e097-0e6a96f86812",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a5871e4e-ff17-bc5e-2b1e-f48f353bb6bc",
  "kind": "theorem",
  "lexical_name": "ZMod.trace_pow_card",
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
  "slug": "zmod-trace-pow-card--b9c7304604b9cd14e09327b7",
  "source": {
    "blob": "247292c276e1d4e8e63ff4102ebd68e43ffd5be1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 63,
    "line": 61,
    "path": "GRWTSK/Algebra/LinearAlgebra/FiniteField/Variant7a8425f0bad271f725b46c42f8809745862be9c22f52fd56f01431077b853c78.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b9c7304604b9cd14e09327b714ff29aa9674279db5b61faebb13595081a998bf",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/FiniteField/Variant7a8425f0bad271f725b46c42f8809745862be9c22f52fd56f01431077b853c78.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a5871e4e-ff17-bc5e-2b1e-f48f353bb6bc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 61–63.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ZMod.trace_pow_card {p : ℕ} [Fact p.Prime] (M : Matrix n n (ZMod p)) :
    trace (M ^ p) = trace M ^ p := by have h := FiniteField.trace_pow_card M; rwa [ZMod.card] at h
#align zmod.trace_pow_card ZMod.trace_pow_card
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/FiniteField/Variant7a8425f0bad271f725b46c42f8809745862be9c22f52fd56f01431077b853c78.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/FiniteField/Variant7a8425f0bad271f725b46c42f8809745862be9c22f52fd56f01431077b853c78.lean#L61).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `247292c276e1d4e8e63ff4102ebd68e43ffd5be1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
