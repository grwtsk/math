# LFunctionTrivChar_residue_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:17bda5c9-7901-dbdb-31c4-7275aa1decfe",
  "kind": "lemma",
  "lexical_name": "LFunctionTrivChar_residue_one",
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
  "slug": "lfunctiontrivchar-residue-one--305167802c291a50f59ac6c0",
  "source": {
    "blob": "fa988fadb21e31fc33d9b06a1f1d2711f31a4cda",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 214,
    "line": 190,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletContinuation/Variant5184b2509792612380ec16b8a68cc088c7a647825729a5c42ae23f289bb57503.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:305167802c291a50f59ac6c097d02f8b8b786cdf0dadab42ec8bfdcba172ee60",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletContinuation/Variant5184b2509792612380ec16b8a68cc088c7a647825729a5c42ae23f289bb57503.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:17bda5c9-7901-dbdb-31c4-7275aa1decfe`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 190–214.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma LFunctionTrivChar_residue_one :
    Tendsto (fun s ↦ (s - 1) * LFunctionTrivChar N s) (𝓝[≠] 1)
      (𝓝 <| ∏ p ∈ N.primeFactors, (1 - (p : ℂ)⁻¹)) := by
  have H : (fun s ↦ (s - 1) * LFunctionTrivChar N s) =ᶠ[𝓝[≠] 1]
        fun s ↦ (∏ p ∈ N.primeFactors, (1 - (p : ℂ) ^ (-s))) * ((s - 1) * riemannZeta s) := by
    refine Set.EqOn.eventuallyEq_nhdsWithin fun s hs ↦ ?_
    rw [mul_left_comm, LFunctionTrivChar_eq_mul_riemannZeta hs]
  rw [tendsto_congr' H]
  conv => enter [3, 1]; rw [← mul_one <| Finset.prod ..]; enter [1, 2, p]; rw [← cpow_neg_one]
  refine .mul (f := fun s ↦ ∏ p ∈ N.primeFactors, _) ?_ riemannZeta_residue_one
  refine tendsto_nhdsWithin_of_tendsto_nhds <| Continuous.tendsto ?_ 1
  exact continuous_finsetProd _ fun p hp ↦ by
    have : NeZero p := ⟨(Nat.prime_of_mem_primeFactors hp).ne_zero⟩
    fun_prop

/-!
### Completed L-functions and the functional equation
-/

section gammaFactor

omit [NeZero N] -- not required for these declarations

open scoped Classical in
/-- The Archimedean Gamma factor: `Gammaℝ s` if `χ` is even, and `Gammaℝ (s + 1)` otherwise. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletContinuation/Variant5184b2509792612380ec16b8a68cc088c7a647825729a5c42ae23f289bb57503.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletContinuation/Variant5184b2509792612380ec16b8a68cc088c7a647825729a5c42ae23f289bb57503.lean#L190).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fa988fadb21e31fc33d9b06a1f1d2711f31a4cda` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
