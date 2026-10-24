# L_reflect_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a3ea63e64d7797979babbd0b3690aa95ded64f2b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 287,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/7a/7ae031e5189cf51808c82913a3fb866e95458ee1be204131336665d3aee2df9b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0dd27749-ea87-f027-dff5-887fc227a580",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b9bd65f9-c959-c5cc-e893-61672021dbe7",
  "kind": "theorem",
  "lexical_name": "L_reflect_zero",
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
  "slug": "l-reflect-zero--3cd08d3000a43e40a699de39",
  "source": {
    "blob": "a3ea63e64d7797979babbd0b3690aa95ded64f2b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 321,
    "line": 287,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SeamL/Variant7ae031e5189cf51808c82913a3fb866e95458ee1be204131336665d3aee2df9b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3cd08d3000a43e40a699de3935c9f0ef7f9ee147bc6b8adf76e218b8b17174c5",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SeamL/Variant7ae031e5189cf51808c82913a3fb866e95458ee1be204131336665d3aee2df9b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b9bd65f9-c959-c5cc-e893-61672021dbe7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 287–321.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem L_reflect_zero (hq : 1 < q) (hprim : χ.IsPrimitive) :
    ∀ ρ, IsNontrivialZeroL χ ρ → IsNontrivialZeroL χ (reflect ρ) := by
  rintro ρ ⟨hzero, h0, h1⟩
  have hχ1 := ne_one_of_primitive hq hprim
  refine ⟨?_, ?_, ?_⟩
  · -- L(1 − ρ̄, χ) = 0
    have hLconj : (χ⁻¹).LFunction (conj ρ) = 0 := by
      have := LFunction_conj (inv_ne_one hχ1) ρ
      rw [inv_inv] at this
      rw [this, hzero, map_zero]
    have hΛ : completedLFunction χ⁻¹ (conj ρ) = 0 := by
      have hγL := (completed_eq_gamma_mul_L (χ := χ⁻¹) hq
        (show 0 < (conj ρ).re by rwa [Complex.conj_re])).self_of_nhds
      rw [hγL, Pi.mul_apply, hLconj, mul_zero]
    have hFE := hprim.completedLFunction_one_sub (conj ρ)
    rw [hΛ, mul_zero] at hFE
    have hre : 0 < (1 - conj ρ).re := by
      simp only [Complex.sub_re, Complex.one_re, Complex.conj_re]
      linarith
    have hγL := (completed_eq_gamma_mul_L (χ := χ) hq hre).self_of_nhds
    rw [hFE, Pi.mul_apply] at hγL
    have hγ := (gammaFactor_analyticAt (χ := χ) hre).2
    have hrefl : reflect ρ = 1 - conj ρ := rfl
    rw [hrefl]
    rcases mul_eq_zero.mp hγL.symm with h | h
    · exact absurd h hγ
    · exact h
  · show 0 < (reflect ρ).re
    simp only [Zeta23.reflect, Complex.sub_re, Complex.one_re, Complex.conj_re]
    linarith
  · show (reflect ρ).re < 1
    simp only [Zeta23.reflect, Complex.sub_re, Complex.one_re, Complex.conj_re]
    linarith

/-- H-fin for L(s,χ). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SeamL/Variant7ae031e5189cf51808c82913a3fb866e95458ee1be204131336665d3aee2df9b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SeamL/Variant7ae031e5189cf51808c82913a3fb866e95458ee1be204131336665d3aee2df9b.lean#L287).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a3ea63e64d7797979babbd0b3690aa95ded64f2b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
