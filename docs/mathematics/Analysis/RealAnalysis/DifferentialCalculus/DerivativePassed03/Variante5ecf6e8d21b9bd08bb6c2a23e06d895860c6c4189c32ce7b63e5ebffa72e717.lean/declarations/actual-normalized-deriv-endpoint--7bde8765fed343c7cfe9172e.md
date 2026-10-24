# actual_normalized_deriv_endpoint

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:58b862dd-91ce-1b4c-305e-6a65b7928b9c",
  "kind": "theorem",
  "lexical_name": "actual_normalized_deriv_endpoint",
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
  "slug": "actual-normalized-deriv-endpoint--7bde8765fed343c7cfe9172e",
  "source": {
    "blob": "a50566ba469bfa4d8a9e054aa252c3c36571bbe0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 67,
    "line": 54,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/DerivativePassed03/Variante5ecf6e8d21b9bd08bb6c2a23e06d895860c6c4189c32ce7b63e5ebffa72e717.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7bde8765fed343c7cfe9172e8c0b93b5e578c94d7e1e44964c87dc3df87f2ab0",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/DerivativePassed03/Variante5ecf6e8d21b9bd08bb6c2a23e06d895860c6c4189c32ce7b63e5ebffa72e717.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:58b862dd-91ce-1b4c-305e-6a65b7928b9c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 54–67.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_normalized_deriv_endpoint (A r : ℝ) (hA : 1 ≤ A)
    (hr : 0 ≤ r) (hrA : r ≤ 2 * A) :
    deriv (normalizedTest explicitSecondDerivative A) (A - r) =
      -endpointDerivativePolynomial A r /
        (A ^ 4 * Real.sqrt A * Real.sqrt (sourceNormalization A)) := by
  have hA0 : 0 < A := by linarith
  have hm : A - r ∈ Icc (-A) A := ⟨by linarith, by linarith⟩
  rw [actual_deriv_eq_indicator A hA0, indicator_of_mem hm]
  unfold normalizedInteriorDerivative thirdInterior firstInterior endpointDerivativePolynomial
  field_simp [hA0.ne', Real.sqrt_ne_zero'.mpr hA0,
    Real.sqrt_ne_zero'.mpr (source_normalization_pos A hA)]
  ring

/-- A fixed endpoint polynomial bound retains the genuine linear derivative vanishing. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/DerivativePassed03/Variante5ecf6e8d21b9bd08bb6c2a23e06d895860c6c4189c32ce7b63e5ebffa72e717.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/DerivativePassed03/Variante5ecf6e8d21b9bd08bb6c2a23e06d895860c6c4189c32ce7b63e5ebffa72e717.lean#L54).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a50566ba469bfa4d8a9e054aa252c3c36571bbe0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
