# trace_kroneckerMapBilinear

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "cdeac634e4c5a0cbcbc8485bf9bca2e394a1f166",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 225,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/47/47cd9c5352574c7a26d01938f97b0a2a514244ee19978e785f2cbd75ebaabe6b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e122d629-7ca7-fcf1-79b1-7fd8e94fc3d9",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:36636483-62f0-b50e-fe84-4fb591d93576",
  "kind": "theorem",
  "lexical_name": "trace_kroneckerMapBilinear",
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
  "slug": "trace-kroneckermapbilinear--60a04643bca6208df11f015d",
  "source": {
    "blob": "cdeac634e4c5a0cbcbc8485bf9bca2e394a1f166",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 235,
    "line": 225,
    "path": "GRWTSK/Algebra/LinearAlgebra/Kronecker/Variant47cd9c5352574c7a26d01938f97b0a2a514244ee19978e785f2cbd75ebaabe6b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:60a04643bca6208df11f015d33d025e9d0c8c296d8b4710fa74c445075e656de",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Kronecker/Variant47cd9c5352574c7a26d01938f97b0a2a514244ee19978e785f2cbd75ebaabe6b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:36636483-62f0-b50e-fe84-4fb591d93576`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 225–235.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem trace_kroneckerMapBilinear [CommSemiring R] [Fintype m] [Fintype n] [AddCommMonoid α]
    [AddCommMonoid β] [AddCommMonoid γ] [Module R α] [Module R β] [Module R γ]
    (f : α →ₗ[R] β →ₗ[R] γ) (A : Matrix m m α) (B : Matrix n n β) :
    trace (kroneckerMapBilinear f A B) = f (trace A) (trace B) := by
  simp_rw [Matrix.trace, Matrix.diag, kroneckerMapBilinear_apply_apply, LinearMap.map_sum₂,
    map_sum, ← Finset.univ_product_univ, Finset.sum_product, kroneckerMap_apply]
#align matrix.trace_kronecker_map_bilinear Matrix.trace_kroneckerMapBilinear

/-- `determinant` of `Matrix.kroneckerMapBilinear`.

This is primarily used with `R = ℕ` to prove `Matrix.det_kronecker`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Kronecker/Variant47cd9c5352574c7a26d01938f97b0a2a514244ee19978e785f2cbd75ebaabe6b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Kronecker/Variant47cd9c5352574c7a26d01938f97b0a2a514244ee19978e785f2cbd75ebaabe6b.lean#L225).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cdeac634e4c5a0cbcbc8485bf9bca2e394a1f166` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
