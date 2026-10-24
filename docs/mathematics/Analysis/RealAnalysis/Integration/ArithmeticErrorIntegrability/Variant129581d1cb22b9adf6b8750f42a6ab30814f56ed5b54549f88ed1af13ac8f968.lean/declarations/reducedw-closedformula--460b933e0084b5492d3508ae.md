# reducedW_closedFormula

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ac137503-f5ac-0e24-9ea4-c5ff7ccbf005",
  "kind": "theorem",
  "lexical_name": "reducedW_closedFormula",
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
  "slug": "reducedw-closedformula--460b933e0084b5492d3508ae",
  "source": {
    "blob": "c5c832b0f9e1527fe0072d04e67993cf28bc30eb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 126,
    "line": 107,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/ArithmeticErrorIntegrability/Variant129581d1cb22b9adf6b8750f42a6ab30814f56ed5b54549f88ed1af13ac8f968.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:460b933e0084b5492d3508aef7d6051f74cba2fbf4c21803ae6aae6808bd5a11",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/ArithmeticErrorIntegrability/Variant129581d1cb22b9adf6b8750f42a6ab30814f56ed5b54549f88ed1af13ac8f968.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ac137503-f5ac-0e24-9ea4-c5ff7ccbf005`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 107–126.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem reducedW_closedFormula (w : ℂ) (hw : w ≠ 0) :
    reducedW w = 384 * (w + 1/2) *
      (transformPolynomial w - Complex.exp (-2*w) * transformPolynomial (-w)) /
      ((Real.sqrt (45056/1105 : ℝ) : ℂ) * w^9) := by
  rw [reducedW, bumpMoment_closedFormula w hw]
  have he : Complex.exp (-w) * Complex.exp w = 1 := by
    rw [← Complex.exp_add]
    simp
  have he2 : Complex.exp (-w) * Complex.exp (-w) = Complex.exp (-2*w) := by
    rw [← Complex.exp_add]
    congr 1
    ring
  calc
    _ = 384 * (w + 1/2) *
        ((Complex.exp (-w) * Complex.exp w) * transformPolynomial w -
          (Complex.exp (-w) * Complex.exp (-w)) * transformPolynomial (-w)) /
        ((Real.sqrt (45056/1105 : ℝ) : ℂ) * w^9) := by ring
    _ = _ := by rw [he, he2, one_mul]

/-- The remaining linear source factor grows at least as fast as the parameter in the right half-plane. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/ArithmeticErrorIntegrability/Variant129581d1cb22b9adf6b8750f42a6ab30814f56ed5b54549f88ed1af13ac8f968.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/ArithmeticErrorIntegrability/Variant129581d1cb22b9adf6b8750f42a6ab30814f56ed5b54549f88ed1af13ac8f968.lean#L107).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c5c832b0f9e1527fe0072d04e67993cf28bc30eb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
