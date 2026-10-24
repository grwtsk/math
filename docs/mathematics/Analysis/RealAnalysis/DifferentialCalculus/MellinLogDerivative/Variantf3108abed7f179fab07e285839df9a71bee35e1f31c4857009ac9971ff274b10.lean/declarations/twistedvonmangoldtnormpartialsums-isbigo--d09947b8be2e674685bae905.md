# twistedVonMangoldtNormPartialSums_isBigO

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d7b0fcf7d64749973a5fb5d946954d9abe24d966",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 290,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f3/f3108abed7f179fab07e285839df9a71bee35e1f31c4857009ac9971ff274b10.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0d9315f3-78ea-5be4-c88b-13f766178eb1",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:eea299cd-8114-aa95-3d7f-910548ff3f0b",
  "kind": "theorem",
  "lexical_name": "twistedVonMangoldtNormPartialSums_isBigO",
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
  "slug": "twistedvonmangoldtnormpartialsums-isbigo--d09947b8be2e674685bae905",
  "source": {
    "blob": "d7b0fcf7d64749973a5fb5d946954d9abe24d966",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 321,
    "line": 290,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/MellinLogDerivative/Variantf3108abed7f179fab07e285839df9a71bee35e1f31c4857009ac9971ff274b10.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d09947b8be2e674685bae905119950283303a549a6f888305c89f4508b606b82",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/MellinLogDerivative/Variantf3108abed7f179fab07e285839df9a71bee35e1f31c4857009ac9971ff274b10.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:eea299cd-8114-aa95-3d7f-910548ff3f0b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 290–321.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem twistedVonMangoldtNormPartialSums_isBigO
    {q : ℕ} (χ : DirichletCharacter ℂ q) :
    (fun n : ℕ ↦ ∑ k ∈ Finset.Icc 1 n,
      ‖χ (k : ZMod q) * (ArithmeticFunction.vonMangoldt k : ℂ)‖) =O[atTop]
      (fun n : ℕ ↦ (n : ℝ) ^ (1 : ℝ)) := by
  rw [isBigO_iff]
  refine ⟨Real.log 4 + 4, Eventually.of_forall fun n ↦ ?_⟩
  calc
    ‖∑ k ∈ Finset.Icc 1 n,
        ‖χ (k : ZMod q) * (ArithmeticFunction.vonMangoldt k : ℂ)‖‖ =
        ∑ k ∈ Finset.Icc 1 n,
          ‖χ (k : ZMod q) * (ArithmeticFunction.vonMangoldt k : ℂ)‖ := by
            rw [Real.norm_eq_abs, abs_of_nonneg]
            positivity
    _ ≤ ∑ k ∈ Finset.Icc 1 n, ArithmeticFunction.vonMangoldt k := by
      gcongr with k hk
      rw [norm_mul, Complex.norm_real,
        Real.norm_of_nonneg ArithmeticFunction.vonMangoldt_nonneg]
      exact mul_le_of_le_one_left ArithmeticFunction.vonMangoldt_nonneg
        (χ.norm_le_one (k : ZMod q))
    _ = Chebyshev.psi n := by
      have hsets : Finset.Icc 1 n = Finset.Ioc 0 n := by
        ext k
        simp only [Finset.mem_Icc, Finset.mem_Ioc]
        omega
      rw [hsets]
      simp [Chebyshev.psi]
    _ ≤ (Real.log 4 + 4) * n :=
      Chebyshev.psi_le_const_mul_self (Nat.cast_nonneg n)
    _ = (Real.log 4 + 4) * ‖(n : ℝ) ^ (1 : ℝ)‖ := by
      simp [Real.rpow_one]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/MellinLogDerivative/Variantf3108abed7f179fab07e285839df9a71bee35e1f31c4857009ac9971ff274b10.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/MellinLogDerivative/Variantf3108abed7f179fab07e285839df9a71bee35e1f31c4857009ac9971ff274b10.lean#L290).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d7b0fcf7d64749973a5fb5d946954d9abe24d966` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
