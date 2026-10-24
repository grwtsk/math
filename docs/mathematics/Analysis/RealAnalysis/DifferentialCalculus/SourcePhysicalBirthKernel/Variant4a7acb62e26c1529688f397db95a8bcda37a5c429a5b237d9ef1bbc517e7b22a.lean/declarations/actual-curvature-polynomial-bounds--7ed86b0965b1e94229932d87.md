# actual_curvature_polynomial_bounds

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fde47e95-653f-6d74-97dc-9364473689ea",
  "kind": "theorem",
  "lexical_name": "actual_curvature_polynomial_bounds",
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
  "slug": "actual-curvature-polynomial-bounds--7ed86b0965b1e94229932d87",
  "source": {
    "blob": "c3535ff185426f2b9bb75f39543e825c69c432f1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 464,
    "line": 453,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourcePhysicalBirthKernel/Variant4a7acb62e26c1529688f397db95a8bcda37a5c429a5b237d9ef1bbc517e7b22a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7ed86b0965b1e94229932d874e4bec0297aa1bab7daf72498e08055f54856efb",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SourcePhysicalBirthKernel/Variant4a7acb62e26c1529688f397db95a8bcda37a5c429a5b237d9ef1bbc517e7b22a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fde47e95-653f-6d74-97dc-9364473689ea`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 453–464.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_curvature_polynomial_bounds {A y : ℝ} (hA : 91 ≤ A)
    (hy0 : 0 ≤ y) (hy1 : y ≤ 1) :
    1 ≤ physicalCurvaturePolynomial (1 / A) y ∧
      physicalCurvaturePolynomial (1 / A) y ≤ 24576 := by
  have hAp : 0 < A := by linarith
  have ht : 91 / A ∈ Icc (0 : ℝ) 1 := by
    constructor
    · positivity
    · exact (div_le_one hAp).mpr hA
  have he : (91 / A) / 91 = (1 : ℝ) / A := by field_simp
  simpa only [he] using tensor_bounds ⟨hy0, hy1⟩ ht

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SourcePhysicalBirthKernel/Variant4a7acb62e26c1529688f397db95a8bcda37a5c429a5b237d9ef1bbc517e7b22a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourcePhysicalBirthKernel/Variant4a7acb62e26c1529688f397db95a8bcda37a5c429a5b237d9ef1bbc517e7b22a.lean#L453).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c3535ff185426f2b9bb75f39543e825c69c432f1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
