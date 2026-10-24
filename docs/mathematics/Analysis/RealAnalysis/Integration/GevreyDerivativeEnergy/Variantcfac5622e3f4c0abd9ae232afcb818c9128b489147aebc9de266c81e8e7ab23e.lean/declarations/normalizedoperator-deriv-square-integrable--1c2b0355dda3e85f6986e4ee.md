# normalizedOperator_deriv_square_integrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8644caca20b23c94b645c755e9f8eef00a8dc278",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 56,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/cf/cfac5622e3f4c0abd9ae232afcb818c9128b489147aebc9de266c81e8e7ab23e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:47b64196-1af1-f723-c116-eab4508c08ca",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7fb70ea1-d164-6cf6-445b-ebfac98a5950",
  "kind": "theorem",
  "lexical_name": "normalizedOperator_deriv_square_integrable",
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
  "slug": "normalizedoperator-deriv-square-integrable--1c2b0355dda3e85f6986e4ee",
  "source": {
    "blob": "8644caca20b23c94b645c755e9f8eef00a8dc278",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 66,
    "line": 56,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/GevreyDerivativeEnergy/Variantcfac5622e3f4c0abd9ae232afcb818c9128b489147aebc9de266c81e8e7ab23e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1c2b0355dda3e85f6986e4ee90e1d320802d90df68a78e54954c6b9ebd43ba97",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/GevreyDerivativeEnergy/Variantcfac5622e3f4c0abd9ae232afcb818c9128b489147aebc9de266c81e8e7ab23e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7fb70ea1-d164-6cf6-445b-ebfac98a5950`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 56–66.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem normalizedOperator_deriv_square_integrable {h : ℝ → ℝ}
    (hc : ContDiff ℝ 3 h) (hs : HasCompactSupport h) {A : ℝ} (hA : 0 < A) :
    Integrable (fun x ↦ (deriv (normalizedOperator h A) x) ^ 2) := by
  have hc' : ContDiff ℝ 2 (deriv h) := hc.deriv'
  have hi := ((dilationOperator_square_integrable hc' hs.deriv hA).const_mul
    (A⁻¹ ^ 2)).div_const (Real.sqrt (normalization h A) ^ 2)
  convert hi using 1
  funext x
  rw [deriv_normalizedOperator hc, div_pow, mul_pow]

/-- The derivative energy is A⁻² times the derivative profile's operator normalization. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/GevreyDerivativeEnergy/Variantcfac5622e3f4c0abd9ae232afcb818c9128b489147aebc9de266c81e8e7ab23e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/GevreyDerivativeEnergy/Variantcfac5622e3f4c0abd9ae232afcb818c9128b489147aebc9de266c81e8e7ab23e.lean#L56).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8644caca20b23c94b645c755e9f8eef00a8dc278` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
