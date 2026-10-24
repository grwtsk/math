# trace_tensorProduct'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "aead033d4d6f66f283cd51f072c24a2f5b16a97e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 258,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/82/826685b1dd321fa7b3cfa5ea0fb6eaa2349f87560ec351853b21bacbc96a1638.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4b36ef40-ed1f-8e03-19c8-b36d639ef904",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:569c0a7b-5d0f-119c-24a6-9f9143ad6927",
  "kind": "theorem",
  "lexical_name": "trace_tensorProduct'",
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
  "slug": "trace-tensorproduct--dc3f9edd2c2507b166409f6d",
  "source": {
    "blob": "aead033d4d6f66f283cd51f072c24a2f5b16a97e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 264,
    "line": 258,
    "path": "GRWTSK/Algebra/LinearAlgebra/Trace/Variant826685b1dd321fa7b3cfa5ea0fb6eaa2349f87560ec351853b21bacbc96a1638.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dc3f9edd2c2507b166409f6d3f2db2121edc54462d1fb67b56745ff26d10084c",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Trace/Variant826685b1dd321fa7b3cfa5ea0fb6eaa2349f87560ec351853b21bacbc96a1638.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:569c0a7b-5d0f-119c-24a6-9f9143ad6927`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 258–264.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem trace_tensorProduct' (f : M →ₗ[R] M) (g : N →ₗ[R] N) :
    trace R (M ⊗ N) (map f g) = trace R M f * trace R N g := by
  have h := LinearMap.ext_iff.1 (LinearMap.ext_iff.1 (trace_tensorProduct R M N) f) g
  simp only [compr₂_apply, mapBilinear_apply, compl₁₂_apply, lsmul_apply,
    smul_eq_mul] at h
  exact h

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Trace/Variant826685b1dd321fa7b3cfa5ea0fb6eaa2349f87560ec351853b21bacbc96a1638.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Trace/Variant826685b1dd321fa7b3cfa5ea0fb6eaa2349f87560ec351853b21bacbc96a1638.lean#L258).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `aead033d4d6f66f283cd51f072c24a2f5b16a97e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
