# generator_transport_of_matrix_expansion

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:60a7d172-55c2-973a-8a1e-96ce3e5d05c3",
  "kind": "theorem",
  "lexical_name": "generator_transport_of_matrix_expansion",
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
  "slug": "generator-transport-of-matrix-expansion--93fd1ac9367765bd559e5904",
  "source": {
    "blob": "d85bbe9816b8bcb90b9eae79dcb86dc1a540071a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 236,
    "line": 228,
    "path": "GRWTSK/Algebra/LinearAlgebra/FutureObservableVerified/Variantf8729f7c80b164a4c1acc5589d089b471e77b38011da9eb4baea66e00ee48f9a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:93fd1ac9367765bd559e5904b60782512f03fabe31760e19dccad5b1ee9f2b3f",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/FutureObservableVerified/Variantf8729f7c80b164a4c1acc5589d089b471e77b38011da9eb4baea66e00ee48f9a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:60a7d172-55c2-973a-8a1e-96ce3e5d05c3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 228–236.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem generator_transport_of_matrix_expansion
    (forms : Basis → Matrix ι ι ℚ) (M : Matrix ι ι ℚ)
    (T : Matrix Basis Basis ℚ)
    (closed : ∀ j, pullback (forms j) M = ∑ k, T j k • forms k) (j : Basis)
    (x : ι → ℚ) :
    quadratic (forms j) (M.mulVec x) = T j ⬝ᵥ (fun k => quadratic (forms k) x) := by
  rw [← quadratic_pullback, closed j, quadratic_expansion]

/-- Quadratic-only observations legitimately identify the two orientations. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/FutureObservableVerified/Variantf8729f7c80b164a4c1acc5589d089b471e77b38011da9eb4baea66e00ee48f9a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/FutureObservableVerified/Variantf8729f7c80b164a4c1acc5589d089b471e77b38011da9eb4baea66e00ee48f9a.lean#L228).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d85bbe9816b8bcb90b9eae79dcb86dc1a540071a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
