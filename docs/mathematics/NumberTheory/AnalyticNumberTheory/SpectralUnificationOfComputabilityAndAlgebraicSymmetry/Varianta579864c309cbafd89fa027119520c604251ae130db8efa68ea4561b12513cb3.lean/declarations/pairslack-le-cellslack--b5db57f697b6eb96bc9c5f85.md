# pairSlack_le_cellSlack

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
      "line": 60,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a5/a579864c309cbafd89fa027119520c604251ae130db8efa68ea4561b12513cb3.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:78133e5c-fc50-7ad1-3eda-1f7339f4046f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:876b69d5-d312-b67a-561f-53f6e7e7a8f6",
  "kind": "theorem",
  "lexical_name": "pairSlack_le_cellSlack",
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
  "slug": "pairslack-le-cellslack--b5db57f697b6eb96bc9c5f85",
  "source": {
    "blob": "36f705aace68ab77e36f01845f8a95a783436e92",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 84,
    "line": 60,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Varianta579864c309cbafd89fa027119520c604251ae130db8efa68ea4561b12513cb3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b5db57f697b6eb96bc9c5f850211efc6be0739d998625d641176878af5bdacd3",
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

Occurrence: `result:876b69d5-d312-b67a-561f-53f6e7e7a8f6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 60–84.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem pairSlack_le_cellSlack (A : ℝ) (c p : ℕ × ℕ)
    (hp : p ∈ logBlockPairs A c) :
    2*A-Real.log (p.1 : ℝ)-Real.log (p.2 : ℝ) ≤ cellSlack A c := by
  have hlong := (Finset.mem_filter.mp hp).1
  have hidx := (Finset.mem_filter.mp hp).2
  have hm := (Finset.mem_product.mp (Finset.mem_filter.mp hlong).1).1
  have hn := (Finset.mem_product.mp (Finset.mem_filter.mp hlong).1).2
  have hm1 : (1 : ℝ) ≤ p.1 := by
    have h : 1 ≤ p.1 := by have := (Finset.mem_Ioc.mp hm).1; omega
    exact_mod_cast h
  have hn1 : (1 : ℝ) ≤ p.2 := by
    have h : 1 ≤ p.2 := by have := (Finset.mem_Ioc.mp hn).1; omega
    exact_mod_cast h
  have h1 := congrArg Prod.fst hidx
  have h2 := congrArg Prod.snd hidx
  change ⌊Real.log (p.1 : ℝ)⌋₊ = c.1 at h1
  change ⌊Real.log (p.2 : ℝ)⌋₊ = c.2 at h2
  have hf1 := Nat.floor_le (Real.log_nonneg hm1)
  have hf2 := Nat.floor_le (Real.log_nonneg hn1)
  rw [h1] at hf1
  rw [h2] at hf2
  unfold cellSlack
  linarith

/-- The local block hypothesis uses a majorant of the literal source correlation. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Varianta579864c309cbafd89fa027119520c604251ae130db8efa68ea4561b12513cb3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Varianta579864c309cbafd89fa027119520c604251ae130db8efa68ea4561b12513cb3.lean#L60).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `36f705aace68ab77e36f01845f8a95a783436e92` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
