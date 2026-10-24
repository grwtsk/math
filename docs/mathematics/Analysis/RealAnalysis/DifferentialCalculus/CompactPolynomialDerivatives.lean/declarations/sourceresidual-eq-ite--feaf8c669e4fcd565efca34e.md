# sourceResidual_eq_ite

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:79f8161b-b1da-6af7-5e06-61a677141f02",
  "kind": "theorem",
  "lexical_name": "sourceResidual_eq_ite",
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
  "slug": "sourceresidual-eq-ite--feaf8c669e4fcd565efca34e",
  "source": {
    "blob": "1fb6bc049950750a9955cbaedc3bd8e13d748cc8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 213,
    "line": 201,
    "path": "GRWTSK/Analysis/Calculus/CompactPolynomialDerivatives.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:feaf8c669e4fcd565efca34ef315efce1040082b6db5440174027ffabdca2cdd",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/CompactPolynomialDerivatives.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:79f8161b-b1da-6af7-5e06-61a677141f02`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 201–213.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sourceResidual_eq_ite {A : ℝ} (hA : 0 < A) (x : ℝ) :
    sourceResidual A x = if x ∈ Icc (-A) A then residualPolynomial A x else 0 := by
  rw [sourceResidual_eq]
  by_cases hx : x ∈ Icc (-A) A
  · have scaled : x / A ∈ Icc (-1 : ℝ) 1 := (scaled_mem_iff hA x).mpr hx
    simp only [if_pos hx, sourceSecond, clippedProfile, if_pos scaled, source, bump]
    dsimp [residualPolynomial, bumpSecondPolynomial]
    simp only [div_div, pow_two]
    ring
  · have scaled : x / A ∉ Icc (-1 : ℝ) 1 := fun hs ↦ hx ((scaled_mem_iff hA x).mp hs)
    simp only [if_neg hx, sourceSecond, clippedProfile, if_neg scaled, source, bump,
      zero_div, mul_zero, sub_zero]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/CompactPolynomialDerivatives.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Calculus/CompactPolynomialDerivatives.lean#L201).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1fb6bc049950750a9955cbaedc3bd8e13d748cc8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
