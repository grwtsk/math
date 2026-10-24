# mertensResidual_le_coarse_block_budget

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "36f705aace68ab77e36f01845f8a95a783436e92",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 228,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a5/a579864c309cbafd89fa027119520c604251ae130db8efa68ea4561b12513cb3.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:40f1d949-3e84-70bd-3a35-4fb0462f3806",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7555bc1d-5f34-b8f9-cfb1-fc12360a8e7f",
  "kind": "theorem",
  "lexical_name": "mertensResidual_le_coarse_block_budget",
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
  "slug": "mertensresidual-le-coarse-block-budget--fd94d0f019d625db940cb4a8",
  "source": {
    "blob": "36f705aace68ab77e36f01845f8a95a783436e92",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 248,
    "line": 228,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Varianta579864c309cbafd89fa027119520c604251ae130db8efa68ea4561b12513cb3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fd94d0f019d625db940cb4a84ebc46158325454cae84d5c0b6aa768eb1325d32",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Varianta579864c309cbafd89fa027119520c604251ae130db8efa68ea4561b12513cb3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7555bc1d-5f34-b8f9-cfb1-fc12360a8e7f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 228–248.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mertensResidual_le_coarse_block_budget (K R A : ℝ) (p : ℕ) (hK : 0 ≤ K)
    (hR : 1 ≤ R) (hB : SquareRootLogBlockEstimate K p R) (hRA : R ≤ A) :
    mertensResidual A ≤ typeTwoDiagonal A + shortMangoldtSource A + shortLogSource A -
      shortPlainSource A + 398721024 * Real.exp 1 * K * 3^p * A^(p+2) := by
  have hA := hR.trans hRA
  have hA0 : 0 ≤ A := by linarith
  have hp : (1+2*A)^p ≤ (3*A)^p := by gcongr; linarith
  have hd := (densityBlockBudget_le A hA).trans
    (mul_le_mul_of_nonneg_left (edgeBlockBudget_le A hA) (Real.exp_pos 1).le)
  have he : K * (1+2*A)^p * densityBlockBudget A ≤
      398721024 * Real.exp 1 * K * 3^p * A^(p+2) := by
    calc
      _ ≤ K * (1+2*A)^p * (Real.exp 1 * (398721024*A^2)) :=
        mul_le_mul_of_nonneg_left hd (by positivity)
      _ ≤ K * (3*A)^p * (Real.exp 1 * (398721024*A^2)) := by gcongr
      _ = _ := by rw [mul_pow, pow_add]; ring
  exact (mertensResidual_le_of_blocks K R A p hR hB hRA).trans (by linarith)

end
end EstimateTypeTwoBlockStrength
end FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Varianta579864c309cbafd89fa027119520c604251ae130db8efa68ea4561b12513cb3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Varianta579864c309cbafd89fa027119520c604251ae130db8efa68ea4561b12513cb3.lean#L228).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `36f705aace68ab77e36f01845f8a95a783436e92` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
