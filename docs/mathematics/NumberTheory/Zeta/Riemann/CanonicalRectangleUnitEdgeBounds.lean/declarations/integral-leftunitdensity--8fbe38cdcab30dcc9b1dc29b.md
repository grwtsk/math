# integral_leftUnitDensity

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7fc904d0-2baa-67d9-e87a-1a13978078da",
  "kind": "theorem",
  "lexical_name": "integral_leftUnitDensity",
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
  "slug": "integral-leftunitdensity--8fbe38cdcab30dcc9b1dc29b",
  "source": {
    "blob": "2e39fc10f81917aeb91e75a02a28b8536b9e3332",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 186,
    "line": 165,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CanonicalRectangleUnitEdgeBounds.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8fbe38cdcab30dcc9b1dc29b8c0be9973e8c5c52f71677d3526369694f1abd5f",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CanonicalRectangleUnitEdgeBounds.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7fc904d0-2baa-67d9-e87a-1a13978078da`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 165–186.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem integral_leftUnitDensity (N : ℕ) :
    (∫ x in (0 : ℝ)..1, leftUnitDensity N x) =
      normalizedLeftContribution N := by
  unfold leftUnitDensity leftParameter
  rw [intervalIntegral.integral_smul,
    intervalIntegral.smul_integral_comp_mul_add]
  have hzero :
      (-verticalSpeed N) * (0 : ℝ) + contourHeight N =
        contourHeight N := by
    ring
  have hone :
      (-verticalSpeed N) * (1 : ℝ) + contourHeight N =
        -contourHeight N := by
    unfold verticalSpeed
    ring
  rw [hzero, hone]
  unfold normalizedLeftContribution
  rw [intervalIntegral.integral_const_mul]
  rfl

/-- Pointwise lower and upper bounds on an interval of length one enclose the
integral. Integrability is explicit; bounded samples alone are insufficient. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CanonicalRectangleUnitEdgeBounds.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CanonicalRectangleUnitEdgeBounds.lean#L165).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2e39fc10f81917aeb91e75a02a28b8536b9e3332` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
