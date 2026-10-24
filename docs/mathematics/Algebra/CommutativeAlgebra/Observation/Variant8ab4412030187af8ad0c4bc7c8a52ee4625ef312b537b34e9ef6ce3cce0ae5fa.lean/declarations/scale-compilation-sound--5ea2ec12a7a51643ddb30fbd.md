# scale_compilation_sound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1da6e5b572071a87715ba648789d948645ce7175",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 48,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/8a/8ab4412030187af8ad0c4bc7c8a52ee4625ef312b537b34e9ef6ce3cce0ae5fa.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9e11459f-14fb-e8eb-1691-4a735e22cc97",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1d540e4c-e96d-f76a-ffea-95d7fe617e41",
  "kind": "theorem",
  "lexical_name": "scale_compilation_sound",
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
  "slug": "scale-compilation-sound--5ea2ec12a7a51643ddb30fbd",
  "source": {
    "blob": "1da6e5b572071a87715ba648789d948645ce7175",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 52,
    "line": 48,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Observation/Variant8ab4412030187af8ad0c4bc7c8a52ee4625ef312b537b34e9ef6ce3cce0ae5fa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5ea2ec12a7a51643ddb30fbde3c5f680a0f8b5873ce1bf34ed54a52e94a41491",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Observation/Variant8ab4412030187af8ad0c4bc7c8a52ee4625ef312b537b34e9ef6ce3cce0ae5fa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1d540e4c-e96d-f76a-ffea-95d7fe617e41`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 48–52.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem scale_compilation_sound (source : PolynomialSource) (c : ℤ) (hc : c ≠ 0) (x : ℤ) :
    (scaleCompilation source c hc).output.eval x = 0 ↔ source.polynomial.eval x = 0 :=
  (scaleCompilation source c hc).preserves x

/-- Squaring preserves integer roots, although it changes a polynomial presentation. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Observation/Variant8ab4412030187af8ad0c4bc7c8a52ee4625ef312b537b34e9ef6ce3cce0ae5fa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Observation/Variant8ab4412030187af8ad0c4bc7c8a52ee4625ef312b537b34e9ef6ce3cce0ae5fa.lean#L48).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1da6e5b572071a87715ba648789d948645ce7175` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
