# centered_isolated_zero_geometry

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9917bf60-e53c-8076-cadc-fe39c001e0fb",
  "kind": "theorem",
  "lexical_name": "centered_isolated_zero_geometry",
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
  "slug": "centered-isolated-zero-geometry--e8d53a85e557939213f20090",
  "source": {
    "blob": "f3743e01022b7680e5f779490ae148d3ce5d1d53",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 91,
    "line": 78,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CanonicalLocalZeroContour.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e8d53a85e557939213f20090d698d8c69a3fb260de00c22e5981bf27bd593ed9",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CanonicalLocalZeroContour.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9917bf60-e53c-8076-cadc-fe39c001e0fb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 78–91.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem centered_isolated_zero_geometry (root : ZeroPoint) (c : ℂ) (r : ℝ)
    (centerOnLine : c.re = 1 / 2)
    (analytic : AnalyticOnNhd ℂ riemannZeta (closedBall c r))
    (inside : root.1 ∈ ball c r)
    (isolated : ∀ w ∈ closedBall c r, riemannZeta w = 0 → w = root.1) :
    root.1.re = 1 / 2 ∧
      (2 * (Real.pi : ℂ) * Complex.I)⁻¹ *
        (∮ w in C(c, r), deriv riemannZeta w / riemannZeta w) = (multiplicity root : ℂ) := by
  exact ⟨critical_line_of_centered_unique_zero c root.1 r centerOnLine root.2
    (ball_subset_closedBall inside) isolated,
    normalized_index_eq_multiplicity root c r analytic inside isolated⟩

/-- Bind this isolated disk to the EXISTING complete height-filtered region head.
The cutoff must include the actual root, and isolation still supplies completeness. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CanonicalLocalZeroContour.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CanonicalLocalZeroContour.lean#L78).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f3743e01022b7680e5f779490ae148d3ce5d1d53` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
