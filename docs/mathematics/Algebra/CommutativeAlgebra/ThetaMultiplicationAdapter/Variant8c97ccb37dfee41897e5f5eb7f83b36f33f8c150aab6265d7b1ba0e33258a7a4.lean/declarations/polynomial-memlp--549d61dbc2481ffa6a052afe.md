# polynomial_memLp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:528c0174-336c-2db3-db59-384874a872ba",
  "kind": "theorem",
  "lexical_name": "polynomial_memLp",
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
  "slug": "polynomial-memlp--549d61dbc2481ffa6a052afe",
  "source": {
    "blob": "d5b2ab194340891c25e40f22439715ce9865fe2d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 39,
    "line": 32,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/ThetaMultiplicationAdapter/Variant8c97ccb37dfee41897e5f5eb7f83b36f33f8c150aab6265d7b1ba0e33258a7a4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:549d61dbc2481ffa6a052afe41df5126c204863bb3830402b7d5e2d64906c5e1",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/ThetaMultiplicationAdapter/Variant8c97ccb37dfee41897e5f5eb7f83b36f33f8c150aab6265d7b1ba0e33258a7a4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:528c0174-336c-2db3-db59-384874a872ba`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 32–39.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem polynomial_memLp (p : ℝ[X]) {t : ℝ} (ht : 0 ≤ t) :
    MemLp (fun x : ℝ => ((p.eval x : ℝ) : ℂ)) 2 (momentMeasure t) := by
  have hc : Continuous (fun x : ℝ => ((p.eval x : ℝ) : ℂ)) :=
    Complex.continuous_ofReal.comp p.continuous
  apply (memLp_two_iff_integrable_sq_norm hc.aestronglyMeasurable).mpr
  simpa using polynomial_square_integrable p ht

/-- The actual polynomial L² vector, with the measure's original mass. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/ThetaMultiplicationAdapter/Variant8c97ccb37dfee41897e5f5eb7f83b36f33f8c150aab6265d7b1ba0e33258a7a4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/ThetaMultiplicationAdapter/Variant8c97ccb37dfee41897e5f5eb7f83b36f33f8c150aab6265d7b1ba0e33258a7a4.lean#L32).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d5b2ab194340891c25e40f22439715ce9865fe2d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
