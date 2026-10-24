# tent_boundary_div_two_pi_I

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c238b9f1-6b00-4b14-1d44-2cb802517a6d",
  "kind": "theorem",
  "lexical_name": "tent_boundary_div_two_pi_I",
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
  "slug": "tent-boundary-div-two-pi-i--3d460edd706eab68d9a76055",
  "source": {
    "blob": "4bfc6508422e519ee04700ed4c5c83dd60b362d5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 61,
    "line": 49,
    "path": "GRWTSK/NumberTheory/Chebyshev/TentFiniteResidues.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3d460edd706eab68d9a760555a26ef0299c77c9ec5aebb502e68dc47ce1a11d1",
  "verification": {
    "reference": "docs/verification/NumberTheory/Chebyshev/TentFiniteResidues.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c238b9f1-6b00-4b14-1d44-2cb802517a6d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 49–61.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tent_boundary_div_two_pi_I (x h : ℝ) (hh : 0 < h)
    (ha : 1 < x - h) (N : ℕ) :
    boundaryIntegral (integrand x h) (leftEdge N) 2 (contourHeight N) /
        (((2 * Real.pi : ℝ) : ℂ) * Complex.I) =
      (h : ℂ) - (∑ z ∈ heightHead (contourHeight N),
        (multiplicity z : ℂ) * tentKernel x h z.1) + (correctionPrefix N x h : ℂ) := by
  have hq : (((2 * Real.pi : ℝ) : ℂ) * Complex.I) ≠ 0 :=
    mul_ne_zero (Complex.ofReal_ne_zero.mpr
      (mul_ne_zero (by norm_num) Real.pi_ne_zero)) Complex.I_ne_zero
  rw [tent_boundary_residue_formula x h hh ha N]
  field_simp [hq]

/-- The actual finite right segment retains BOTH correction edges with their exact signs. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Chebyshev/TentFiniteResidues.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Chebyshev/TentFiniteResidues.lean#L49).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4bfc6508422e519ee04700ed4c5c83dd60b362d5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
