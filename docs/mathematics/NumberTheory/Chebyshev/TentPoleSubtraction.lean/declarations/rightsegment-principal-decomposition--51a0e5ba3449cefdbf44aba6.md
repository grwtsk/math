# rightSegment_principal_decomposition

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:098a8f2d-18f8-1f74-2122-a54589dbd2dc",
  "kind": "theorem",
  "lexical_name": "rightSegment_principal_decomposition",
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
  "slug": "rightsegment-principal-decomposition--51a0e5ba3449cefdbf44aba6",
  "source": {
    "blob": "e69b6c9ff37eb8f8dcd8a01b1f8c2fc5f1f40ea4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 215,
    "line": 203,
    "path": "GRWTSK/NumberTheory/Chebyshev/TentPoleSubtraction.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:51a0e5ba3449cefdbf44aba6ae6c442be13797b0af9dc08c163e2ee381ebf944",
  "verification": {
    "reference": "docs/verification/NumberTheory/Chebyshev/TentPoleSubtraction.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:098a8f2d-18f8-1f74-2122-a54589dbd2dc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 203–215.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem rightSegment_principal_decomposition (x h : ℝ) (hh : 0 < h)
    (ha : 1 < x - h) (N : ℕ) :
    rightSegment x h N =
      boundaryIntegral (principalSum (singularHead N) (tentCoefficient x h))
        (leftEdge N) 2 (contourHeight N) / (((2 * Real.pi : ℝ) : ℂ) * Complex.I) +
      vertical (integrand x h) (leftEdge N) (contourHeight N) / ((2 * Real.pi : ℝ) : ℂ) +
      (horizontal (integrand x h) (leftEdge N) 2 (contourHeight N) -
        horizontal (integrand x h) (leftEdge N) 2 (-contourHeight N)) /
          (((2 * Real.pi : ℝ) : ℂ) * Complex.I) := by
  rw [rightSegment_decomposition, tent_boundary_eq_principalSum x h hh ha N]

end
end GRWTSK.NumberTheory.Chebyshev.TentPoleSubtraction
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Chebyshev/TentPoleSubtraction.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Chebyshev/TentPoleSubtraction.lean#L203).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e69b6c9ff37eb8f8dcd8a01b1f8c2fc5f1f40ea4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
