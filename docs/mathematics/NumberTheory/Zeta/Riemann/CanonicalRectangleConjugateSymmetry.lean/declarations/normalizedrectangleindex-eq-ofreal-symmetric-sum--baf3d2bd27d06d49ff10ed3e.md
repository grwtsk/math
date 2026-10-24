# normalizedRectangleIndex_eq_ofReal_symmetric_sum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2902c1b1-301f-734f-9f62-35bb656c5dc8",
  "kind": "theorem",
  "lexical_name": "normalizedRectangleIndex_eq_ofReal_symmetric_sum",
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
  "slug": "normalizedrectangleindex-eq-ofreal-symmetric-sum--baf3d2bd27d06d49ff10ed3e",
  "source": {
    "blob": "9736ec1b20cf13ad35af53576d238f22d1404425",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 288,
    "line": 274,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CanonicalRectangleConjugateSymmetry.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:baf3d2bd27d06d49ff10ed3e22c136f6c6e095e9f0ee494f00e1fb9208b40603",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CanonicalRectangleConjugateSymmetry.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2902c1b1-301f-734f-9f62-35bb656c5dc8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 274–288.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem normalizedRectangleIndex_eq_ofReal_symmetric_sum (N : ℕ) :
    normalizedRectangleIndex N =
      ((2 * (normalizedBottomContribution N).re +
        (normalizedRightContribution N).re +
        (normalizedLeftContribution N).re : ℝ) : ℂ) := by
  apply Complex.ext
  · simpa using normalizedRectangleIndex_re_eq_symmetric_sum N
  · rw [normalizedRectangleIndex_eq_edge_sum,
      normalizedTopContribution_eq_conj_bottomContribution]
    simp [normalizedRightContribution_im_eq_zero,
      normalizedLeftContribution_im_eq_zero]

/-- Reversing the top orientation is not optional. This finite algebra control
records the sign that converts a raw negative conjugate into a normalized
positive conjugate. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CanonicalRectangleConjugateSymmetry.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CanonicalRectangleConjugateSymmetry.lean#L274).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9736ec1b20cf13ad35af53576d238f22d1404425` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
