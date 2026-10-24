# centered_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f2e380f9-3156-bb99-c39f-f8bfdb69c6dd",
  "kind": "theorem",
  "lexical_name": "centered_bound",
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
  "slug": "centered-bound--fdad58e6726a5b42415c89d8",
  "source": {
    "blob": "58733c2c938c1dfb9a453f3170c4e6cdd760333b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 100,
    "line": 75,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/FiniteFieldCohomology/Variantab2a8c5bc4f972ad359434100a2c6a5b3aa4550fea3b3d5b8e3af314bfbd5510.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fdad58e6726a5b42415c89d8f969888e4335c530e9e5d02a6342545614960838",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/FiniteFieldCohomology/Variantab2a8c5bc4f972ad359434100a2c6a5b3aa4550fea3b3d5b8e3af314bfbd5510.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f2e380f9-3156-bb99-c39f-f8bfdb69c6dd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 75–100.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem centered_bound
    (certificate : FiniteFieldSquareRootCertificate trace)
    (scale : Scale) :
    ‖trace.centeredDiscrepancy scale‖ ≤
      certificate.uniformConstant *
        (Real.sqrt (certificate.control.mass scale) *
          (1 + Real.log (certificate.control.mass scale)) ^
            certificate.control.jordanOrder) := by
  calc
    ‖trace.centeredDiscrepancy scale‖ ≤
        (certificate.control.coefficientMass +
            certificate.control.remainderCoefficient) *
          certificate.control.envelope scale :=
      certificate.control.centeredDiscrepancy_bound scale
    _ ≤ certificate.uniformConstant *
          certificate.control.envelope scale :=
      mul_le_mul_of_nonneg_right
        certificate.coefficient_control
        (certificate.control.envelope_nonnegative scale)
    _ = certificate.uniformConstant *
          (Real.sqrt (certificate.control.mass scale) *
            (1 + Real.log (certificate.control.mass scale)) ^
              certificate.control.jordanOrder) := by
      rw [certificate.control.envelope_exact]

/-- Package the pointwise theorem as one uniform existential certificate. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/FiniteFieldCohomology/Variantab2a8c5bc4f972ad359434100a2c6a5b3aa4550fea3b3d5b8e3af314bfbd5510.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/FiniteFieldCohomology/Variantab2a8c5bc4f972ad359434100a2c6a5b3aa4550fea3b3d5b8e3af314bfbd5510.lean#L75).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `58733c2c938c1dfb9a453f3170c4e6cdd760333b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
