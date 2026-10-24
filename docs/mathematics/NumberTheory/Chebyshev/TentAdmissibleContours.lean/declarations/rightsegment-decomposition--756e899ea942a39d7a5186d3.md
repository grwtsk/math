# rightSegment_decomposition

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c7b74596-336f-0051-5589-51f9f9412115",
  "kind": "theorem",
  "lexical_name": "rightSegment_decomposition",
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
  "slug": "rightsegment-decomposition--756e899ea942a39d7a5186d3",
  "source": {
    "blob": "2974858924a3aa4207314292faafc7cb4a9962c9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 113,
    "line": 100,
    "path": "GRWTSK/NumberTheory/Chebyshev/TentAdmissibleContours.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:756e899ea942a39d7a5186d341de2a45790aaf9609f91ed42bb9651f5fbde1cb",
  "verification": {
    "reference": "docs/verification/NumberTheory/Chebyshev/TentAdmissibleContours.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c7b74596-336f-0051-5589-51f9f9412115`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 100–113.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem rightSegment_decomposition (x h : ℝ) (N : ℕ) :
    rightSegment x h N =
      boundaryIntegral (integrand x h) (leftEdge N) 2 (contourHeight N) /
        (((2 * Real.pi : ℝ) : ℂ) * Complex.I) +
      vertical (integrand x h) (leftEdge N) (contourHeight N) / ((2 * Real.pi : ℝ) : ℂ) +
      (horizontal (integrand x h) (leftEdge N) 2 (contourHeight N) -
        horizontal (integrand x h) (leftEdge N) 2 (-contourHeight N)) /
          (((2 * Real.pi : ℝ) : ℂ) * Complex.I) := by
  exact normalized_right_decomposition (integrand x h) (leftEdge N) 2 (contourHeight N)
    ((2 * Real.pi : ℝ) : ℂ)
    (Complex.ofReal_ne_zero.mpr (mul_ne_zero (by norm_num) Real.pi_ne_zero))

/-- One limiting boundary obligation is discharged: the right side converges to W_n.
The left and the combined horizontal sides still need independent decay estimates. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Chebyshev/TentAdmissibleContours.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Chebyshev/TentAdmissibleContours.lean#L100).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2974858924a3aa4207314292faafc7cb4a9962c9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
