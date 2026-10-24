# pdf_eq_zero_of_measure_eq_zero_or_top

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:827a4a3f-1cb7-9d5b-2f70-10cef80c0748",
  "kind": "theorem",
  "lexical_name": "pdf_eq_zero_of_measure_eq_zero_or_top",
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
  "slug": "pdf-eq-zero-of-measure-eq-zero-or-top--90e8dee5e3a2d59aeefcaa31",
  "source": {
    "blob": "2c00a7b493ed3b7f41f76fc65900868f41fe4a7b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 125,
    "line": 117,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/Uniform/Variantb94ecd2cd6428a830f5602d1ffc02b47f1ea25f8ec5b516cb9269eeb03f57450.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:90e8dee5e3a2d59aeefcaa31fadc6237a5c4a09cf3d0866cc82ba2a9d1e5eb90",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/Uniform/Variantb94ecd2cd6428a830f5602d1ffc02b47f1ea25f8ec5b516cb9269eeb03f57450.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:827a4a3f-1cb7-9d5b-2f70-10cef80c0748`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 117–125.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem pdf_eq_zero_of_measure_eq_zero_or_top {X : Ω → E} {s : Set E}
    (hu : IsUniform X s P μ) (hμs : μ s = 0 ∨ μ s = ∞) : pdf X P μ =ᵐ[μ] 0 := by
  rcases hμs with H | H
  · simp only [IsUniform, ProbabilityTheory.cond, H, ENNReal.inv_zero, restrict_eq_zero.mpr H,
    smul_zero] at hu
    simp [pdf, hu.map_eq]
  · simp only [IsUniform, ProbabilityTheory.cond, H, ENNReal.inv_top, zero_smul] at hu
    simp [pdf, hu.map_eq]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/ProbabilityAndMathematicalStatistics/Uniform/Variantb94ecd2cd6428a830f5602d1ffc02b47f1ea25f8ec5b516cb9269eeb03f57450.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/Uniform/Variantb94ecd2cd6428a830f5602d1ffc02b47f1ea25f8ec5b516cb9269eeb03f57450.lean#L117).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2c00a7b493ed3b7f41f76fc65900868f41fe4a7b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
