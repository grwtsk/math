# normalizedOperator_deriv_square_integral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ad35a816-c84f-234f-df0e-5d71da701d90",
  "kind": "theorem",
  "lexical_name": "normalizedOperator_deriv_square_integral",
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
  "slug": "normalizedoperator-deriv-square-integral--0352d2a9df30d89d227158a8",
  "source": {
    "blob": "907a2a3ff957d11c68d3f7107e246c3e4a71881a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 101,
    "line": 87,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/GevreyDerivativeEnergy/Variant03365feeece114c2e19d1f7e11a846d5fc652e8a10c514eae39ccacc0dee1064.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0352d2a9df30d89d227158a8f494e31a24dfbba947c396009c97334a977c7c11",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/GevreyDerivativeEnergy/Variant03365feeece114c2e19d1f7e11a846d5fc652e8a10c514eae39ccacc0dee1064.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ad35a816-c84f-234f-df0e-5d71da701d90`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 87–101.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem normalizedOperator_deriv_square_integral {h : ℝ → ℝ}
    (hc : ContDiff ℝ 3 h) (hs : HasCompactSupport h) (hn : ∃ x, h x ≠ 0)
    {A : ℝ} (hA : 0 < A) :
    (∫ x : ℝ, (deriv (normalizedOperator h A) x) ^ 2) =
      ((A ^ 6)⁻¹ * (∫ x : ℝ, (deriv (deriv (deriv h)) x) ^ 2) +
        (2 * A ^ 4)⁻¹ * (∫ x : ℝ, (deriv (deriv h) x) ^ 2) +
        (1 / 16) * (A ^ 2)⁻¹ * (∫ x : ℝ, (deriv h x) ^ 2)) /
          normalization h A := by
  have hc' : ContDiff ℝ 2 (deriv h) := hc.deriv'
  rw [normalizedOperator_deriv_square_integral_factorized hc hs hn hA,
    normalization_eq hc' hs.deriv hA]
  congr 1
  field_simp

/-- The exact derivative-energy identity specializes to the concrete corrected smooth profile. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/GevreyDerivativeEnergy/Variant03365feeece114c2e19d1f7e11a846d5fc652e8a10c514eae39ccacc0dee1064.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/GevreyDerivativeEnergy/Variant03365feeece114c2e19d1f7e11a846d5fc652e8a10c514eae39ccacc0dee1064.lean#L87).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `907a2a3ff957d11c68d3f7107e246c3e4a71881a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
