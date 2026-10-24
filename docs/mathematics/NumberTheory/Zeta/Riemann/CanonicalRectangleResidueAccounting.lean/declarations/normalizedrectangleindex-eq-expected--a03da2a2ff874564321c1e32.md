# normalizedRectangleIndex_eq_expected

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3eb5b6a8-c1fd-947a-f242-b5aa553782ed",
  "kind": "theorem",
  "lexical_name": "normalizedRectangleIndex_eq_expected",
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
  "slug": "normalizedrectangleindex-eq-expected--a03da2a2ff874564321c1e32",
  "source": {
    "blob": "ba22b0eb9b79e107675cf0940bd1fcb87f6a80f1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 190,
    "line": 169,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CanonicalRectangleResidueAccounting.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a03da2a2ff874564321c1e3235d226627b2ef1d7962b951e7a6718480fda7907",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CanonicalRectangleResidueAccounting.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3eb5b6a8-c1fd-947a-f242-b5aa553782ed`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 169–190.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem normalizedRectangleIndex_eq_expected {N : ℕ}
    (certificate : RectangleRegularizationCertificate N)
    (winding : RectanglePrincipalPartWindingCertificate N) :
    normalizedRectangleIndex N = (expectedRectangleIndex N : ℂ) := by
  have hraw := certificate.rectangle_integral_eq_residue_mass winding
  unfold normalizedRectangleIndex
  rw [hraw, rectangleResidueMass_eq_expected]
  have hnonzero : 2 * (Real.pi : ℂ) * Complex.I ≠ 0 := by
    simp [Real.pi_ne_zero, Complex.I_ne_zero]
  calc
    (2 * (Real.pi : ℂ) * Complex.I)⁻¹ *
        ((2 * (Real.pi : ℂ) * Complex.I) *
          (expectedRectangleIndex N : ℂ)) =
      ((2 * (Real.pi : ℂ) * Complex.I)⁻¹ *
        (2 * (Real.pi : ℂ) * Complex.I)) *
          (expectedRectangleIndex N : ℂ) := by ring
    _ = (expectedRectangleIndex N : ℂ) := by
      rw [inv_mul_cancel₀ hnonzero, one_mul]

/-- Construct the previous rectangle-index report from the narrower analytic
regularization and winding obligations plus a rational enclosure of the exact
source target. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CanonicalRectangleResidueAccounting.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CanonicalRectangleResidueAccounting.lean#L169).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ba22b0eb9b79e107675cf0940bd1fcb87f6a80f1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
