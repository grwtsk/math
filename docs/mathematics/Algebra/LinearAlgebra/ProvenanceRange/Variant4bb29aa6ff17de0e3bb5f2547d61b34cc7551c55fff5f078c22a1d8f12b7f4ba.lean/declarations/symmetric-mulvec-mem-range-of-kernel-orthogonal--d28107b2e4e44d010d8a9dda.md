# symmetric_mulVec_mem_range_of_kernel_orthogonal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:eeffacef-08d0-d171-acb3-514066849207",
  "kind": "theorem",
  "lexical_name": "symmetric_mulVec_mem_range_of_kernel_orthogonal",
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
  "slug": "symmetric-mulvec-mem-range-of-kernel-orthogonal--d28107b2e4e44d010d8a9dda",
  "source": {
    "blob": "9892c39604d5573f041efa8ba22cd996d84e3c71",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 70,
    "line": 39,
    "path": "GRWTSK/Algebra/LinearAlgebra/ProvenanceRange/Variant4bb29aa6ff17de0e3bb5f2547d61b34cc7551c55fff5f078c22a1d8f12b7f4ba.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d28107b2e4e44d010d8a9dda42feaf474fad31ab8f404110e0e56a346cff872b",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/ProvenanceRange/Variant4bb29aa6ff17de0e3bb5f2547d61b34cc7551c55fff5f078c22a1d8f12b7f4ba.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:eeffacef-08d0-d171-acb3-514066849207`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 39–70.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem symmetric_mulVec_mem_range_of_kernel_orthogonal
    (A : Matrix ι ι ℝ) (hA : A.IsSymm) (y : ι → ℝ)
    (hy : ∀ p : ι → ℝ, A.mulVec p = 0 → p ⬝ᵥ y = 0) :
    y ∈ LinearMap.range A.mulVecLin := by
  let T := A.toEuclideanLin
  have hT : T.IsSymmetric := by
    rw [Matrix.isSymmetric_toEuclideanLin_iff]
    exact Matrix.isHermitian_iff_isSymm.mpr hA
  let yE : EuclideanSpace ℝ ι := WithLp.toLp 2 y
  have hyOrth : yE ∈ (LinearMap.ker T)ᗮ := by
    rw [Submodule.mem_orthogonal]
    intro x hx
    have hx0 : A.mulVec (WithLp.ofLp x) = 0 := by
      have hTx : T x = 0 := LinearMap.mem_ker.mp hx
      have hTx' := congrArg WithLp.ofLp hTx
      simpa [T, Matrix.ofLp_toLpLin] using hTx'
    have hdot := hy (WithLp.ofLp x) hx0
    simpa [yE, EuclideanSpace.inner_eq_star_dotProduct] using hdot
  have hyDouble : yE ∈ (LinearMap.range T)ᗮᗮ := by
    rw [hT.orthogonal_range]
    exact hyOrth
  have hyRange : yE ∈ LinearMap.range T := by
    have h := hyDouble
    rw [Submodule.orthogonal_orthogonal_eq_closure,
      Submodule.topologicalClosure_eq_self] at h
    exact h
  rcases hyRange with ⟨q, hq⟩
  refine ⟨WithLp.ofLp q, ?_⟩
  have hq' := congrArg WithLp.ofLp hq
  simpa [T, yE, Matrix.ofLp_toLpLin] using hq'

/-- The provenance matrix of a compatible positive block form is symmetric. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/ProvenanceRange/Variant4bb29aa6ff17de0e3bb5f2547d61b34cc7551c55fff5f078c22a1d8f12b7f4ba.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/ProvenanceRange/Variant4bb29aa6ff17de0e3bb5f2547d61b34cc7551c55fff5f078c22a1d8f12b7f4ba.lean#L39).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9892c39604d5573f041efa8ba22cd996d84e3c71` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
