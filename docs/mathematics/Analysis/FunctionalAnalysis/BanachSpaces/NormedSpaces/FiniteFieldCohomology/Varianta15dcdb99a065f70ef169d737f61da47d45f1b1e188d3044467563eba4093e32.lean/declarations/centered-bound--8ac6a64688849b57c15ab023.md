# centered_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "77ac1b871fd9e65bf30cffedb905e15ec094a2f0",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 67,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a1/a15dcdb99a065f70ef169d737f61da47d45f1b1e188d3044467563eba4093e32.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:42b9990e-d4cd-a27b-3594-3c63eb0dfe33",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2d3786d3-4dd7-045d-8bb1-7dec267508eb",
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
  "slug": "centered-bound--8ac6a64688849b57c15ab023",
  "source": {
    "blob": "77ac1b871fd9e65bf30cffedb905e15ec094a2f0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 92,
    "line": 67,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/FiniteFieldCohomology/Varianta15dcdb99a065f70ef169d737f61da47d45f1b1e188d3044467563eba4093e32.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8ac6a64688849b57c15ab023b6d42f6778cf7dc2d68f4cf44b71192870e4f47e",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/FiniteFieldCohomology/Varianta15dcdb99a065f70ef169d737f61da47d45f1b1e188d3044467563eba4093e32.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2d3786d3-4dd7-045d-8bb1-7dec267508eb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 67–92.

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

[Verification target and public status](../../../../../../../../verification/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/FiniteFieldCohomology/Varianta15dcdb99a065f70ef169d737f61da47d45f1b1e188d3044467563eba4093e32.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/FiniteFieldCohomology/Varianta15dcdb99a065f70ef169d737f61da47d45f1b1e188d3044467563eba4093e32.lean#L67).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `77ac1b871fd9e65bf30cffedb905e15ec094a2f0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
