# rectangleBoundaryIntegral_unitPole

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:329fa047-6139-3c7b-72b4-9ed4492cf167",
  "kind": "theorem",
  "lexical_name": "rectangleBoundaryIntegral_unitPole",
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
  "slug": "rectangleboundaryintegral-unitpole--cfb0181566dd4c2114f857b2",
  "source": {
    "blob": "4710a505ef0a6ee812fba7fbd78b55a6c5760826",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 351,
    "line": 319,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CanonicalRectangleUnitPoleWinding.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cfb0181566dd4c2114f857b2d31f17ff8bdba035d321bad4df825887ba44b053",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CanonicalRectangleUnitPoleWinding.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:329fa047-6139-3c7b-72b4-9ed4492cf167`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 319–351.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem rectangleBoundaryIntegral_unitPole
    (N : ℕ) (a : ℂ) (ha : a ∈ openRectangle N) :
    rectangleBoundaryIntegral N (unitPole a) =
      2 * (Real.pi : ℂ) * Complex.I := by
  have hbottomIm :
      (bottomDisplacement N a (leftEdge N)).im < 0 := by
    rcases (mem_openRectangle_iff N a).mp ha with ⟨_, _, haB, _⟩
    simp [bottomDisplacement, bottomPoint]
    linarith
  have htopIm :
      0 < (topDisplacement N a (leftEdge N)).im := by
    rcases (mem_openRectangle_iff N a).mp ha with ⟨_, _, _, haT⟩
    simp [topDisplacement, topPoint]
    linarith
  unfold rectangleBoundaryIntegral
  rw [bottom_unitPole_integral N a ha,
    top_unitPole_integral N a ha,
    right_unitPole_boundaryTerm N a ha,
    left_unitPole_boundaryTerm N a ha]
  calc
    _ =
      (Complex.log (-(bottomDisplacement N a (leftEdge N))) -
        Complex.log (bottomDisplacement N a (leftEdge N))) +
      (Complex.log (topDisplacement N a (leftEdge N)) -
        Complex.log (-(topDisplacement N a (leftEdge N)))) := by ring
    _ = (Real.pi : ℂ) * Complex.I +
        (Real.pi : ℂ) * Complex.I := by
      rw [log_neg_sub_log_of_im_neg hbottomIm,
        log_sub_log_neg_of_im_pos htopIm]
    _ = 2 * (Real.pi : ℂ) * Complex.I := by ring

/-- The previously abstract geometric certificate is now constructed from the
branch-safe logarithmic calculation. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CanonicalRectangleUnitPoleWinding.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CanonicalRectangleUnitPoleWinding.lean#L319).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4710a505ef0a6ee812fba7fbd78b55a6c5760826` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
