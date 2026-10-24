# blockLower_ge_half_exp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "be0363d053c3ec7a2338545d61ee54542ddb8cbd",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 29,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/45/4542c82144ebb3978f7764c390202c1d4b9e12cc3a98a34a6b566b31d9d78ec1.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ccf01370-1dc1-7a7b-0ce9-47250171e81a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d8193c3a-4eeb-6521-26c2-09a3471f58a9",
  "kind": "theorem",
  "lexical_name": "blockLower_ge_half_exp",
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
  "slug": "blocklower-ge-half-exp--057ec7ea4703e96b2ec30cd1",
  "source": {
    "blob": "be0363d053c3ec7a2338545d61ee54542ddb8cbd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 41,
    "line": 29,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant4542c82144ebb3978f7764c390202c1d4b9e12cc3a98a34a6b566b31d9d78ec1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:057ec7ea4703e96b2ec30cd12bb7ff6cf2e06ad8e0cf1d712bce8e6027b9354e",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant4542c82144ebb3978f7764c390202c1d4b9e12cc3a98a34a6b566b31d9d78ec1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d8193c3a-4eeb-6521-26c2-09a3471f58a9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 29–41.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem blockLower_ge_half_exp (A : ℝ) (j : ℕ) (hA : 1 ≤ A) :
    Real.exp (j : ℝ)/2 ≤ (blockLower A j : ℝ) := by
  have hU := vaughanCutoff_pos A hA
  have hce : 1 ≤ ⌈Real.exp (j : ℝ)⌉₊ := Nat.one_le_ceil_iff.mpr (Real.exp_pos _)
  have hL1 : (1 : ℝ) ≤ blockLower A j := by
    exact_mod_cast hU.trans (le_max_left _ _)
  have hLce : ((⌈Real.exp (j : ℝ)⌉₊-1 : ℕ) : ℝ) ≤ blockLower A j := by
    exact_mod_cast (le_max_right (vaughanCutoff A) (⌈Real.exp (j : ℝ)⌉₊-1))
  rw [Nat.cast_sub hce, Nat.cast_one] at hLce
  have he := Nat.le_ceil (Real.exp (j : ℝ))
  by_cases h : Real.exp (j : ℝ) ≤ 2 <;> linarith

/-- The actual bin anchor gives precisely the inverse half logarithmic scale. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant4542c82144ebb3978f7764c390202c1d4b9e12cc3a98a34a6b566b31d9d78ec1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant4542c82144ebb3978f7764c390202c1d4b9e12cc3a98a34a6b566b31d9d78ec1.lean#L29).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `be0363d053c3ec7a2338545d61ee54542ddb8cbd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
