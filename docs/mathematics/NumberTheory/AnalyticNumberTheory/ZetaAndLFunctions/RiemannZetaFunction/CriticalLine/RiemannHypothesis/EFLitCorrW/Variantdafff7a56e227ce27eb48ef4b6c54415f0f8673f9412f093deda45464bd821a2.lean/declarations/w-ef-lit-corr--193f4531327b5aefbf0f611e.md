# w_EF_lit_corr

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7e784373cdb1ae478234d41ed95a5fbe029cd140",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 97,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/da/dafff7a56e227ce27eb48ef4b6c54415f0f8673f9412f093deda45464bd821a2.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:bd45c8ef-dd84-70ec-d604-85e19518fdc1",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b327ae0d-4e0f-40d3-f24f-c6f2870403a3",
  "kind": "theorem",
  "lexical_name": "w_EF_lit_corr",
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
  "slug": "w-ef-lit-corr--193f4531327b5aefbf0f611e",
  "source": {
    "blob": "7e784373cdb1ae478234d41ed95a5fbe029cd140",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 139,
    "line": 97,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/EFLitCorrW/Variantdafff7a56e227ce27eb48ef4b6c54415f0f8673f9412f093deda45464bd821a2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:193f4531327b5aefbf0f611e4660d61a94098a3974b4f7e58970ef35464a6819",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/EFLitCorrW/Variantdafff7a56e227ce27eb48ef4b6c54415f0f8673f9412f093deda45464bd821a2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b327ae0d-4e0f-40d3-f24f-c6f2870403a3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 97–139.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem w_EF_lit_corr {t₀ c : ℝ} {hZ : WZerosInStrip t₀} {hs : WSeam t₀} (hc1 : 1 < c) (hc2 : c ≤ 5/4)
    {E₀ : Finset ℂ} (hWL' : WFullLineIdentityWith hZ hs c E₀) (hLm : LminusLineIdentity c) (hE2 : E2LineFacts c)
    {k : ℝ → ℂ} (hk : ContDiff ℝ 2 k) (hkc : HasCompactSupport k) :
    Summable (fun ρ : (wZeros hZ hs).carrier => (wMult (ρ : ℂ) : ℂ) * paperFT k (gammaOf ρ)) ∧
    ∑' ρ : (wZeros hZ hs).carrier, (wMult (ρ : ℂ) : ℂ) * paperFT k (gammaOf ρ)
      = literatureRHSW k + JcorrW c k - ∑ ρ ∈ E₀, (analyticOrderNatAt hardyW ρ : ℂ) * Hfn k ρ := by
  have hgammaOf : ∀ ρ : ℂ, paperFT k (gammaOf ρ) = Hfn k ρ := fun ρ => rfl
  simp_rw [hgammaOf]
  obtain ⟨hsum, hfull⟩ := hWL' k hk hkc
  refine ⟨hsum, ?_⟩
  obtain ⟨hintLm, hLmv⟩ := hLm k hk hkc
  obtain ⟨hintE, hEv⟩ := Efn_line_identity hc1 (by linarith) hk hkc
  obtain ⟨CE, -, hCE⟩ := hE2.bound
  have hintJ : Integrable (fun t : ℝ => HwC c k t * dE2 c t) :=
    integrable_HwC_mul_bdd hc1 (by linarith) hk hkc hE2.cont hCE
  have hintLm' : Integrable (fun t : ℝ => HwC c k t * (Lfn ((c:ℂ) + t * I) - L2 ((c:ℂ) + t * I))) := hintLm
  -- split the F_𝒵 line integral
  have e : ∀ t : ℝ, HwC c k t * (L2 ((c:ℂ) + t * I) + logDeriv hardyW ((c:ℂ) + t * I))
      = HwC c k t * Efn ((c:ℂ) + t * I) - HwC c k t * (Lfn ((c:ℂ) + t * I) - L2 ((c:ℂ) + t * I))
        + HwC c k t * dE2 c t := by
    intro t; rw [FZfn_line_split hc1 hc2 hE2.W_ne t]; ring
  have hfull' : (1 / (2 * Real.pi) : ℂ) * (∫ t : ℝ, HwC c k t * (L2 ((c:ℂ) + t * I) + logDeriv hardyW ((c:ℂ) + t * I)))
      = (∑' ρ : (wZeros hZ hs).carrier, (wMult (ρ : ℂ) : ℂ) * Hfn k ρ)
        + (∑ ρ ∈ E₀, (analyticOrderNatAt hardyW ρ : ℂ) * Hfn k ρ) - (3/2 : ℂ) * (Hfn k 0 + Hfn k 1) := hfull
  simp_rw [e] at hfull'
  have hA : Integrable (fun t : ℝ => HwC c k t * Efn ((c:ℂ) + t * I)
      - HwC c k t * (Lfn ((c:ℂ) + t * I) - L2 ((c:ℂ) + t * I))) := hintE.sub hintLm'
  rw [integral_add hA hintJ, integral_sub hintE hintLm'] at hfull'
  have hLmv' : (1 / (2 * Real.pi) : ℂ) * (∫ t : ℝ, HwC c k t * (Lfn ((c:ℂ) + t * I) - L2 ((c:ℂ) + t * I)))
      = (1/2 : ℂ) * (Hfn k 0 + Hfn k 1) := hLmv
  rw [literatureRHSW_eq, ← Hfn_zero_one_eq, JcorrW]
  -- linear algebra on hfull'
  have key : (∑' ρ : (wZeros hZ hs).carrier, (wMult (ρ : ℂ) : ℂ) * Hfn k ρ)
      = (1 / (2 * Real.pi) : ℂ) * (∫ t : ℝ, HwC c k t * Efn ((c:ℂ) + t * I))
        - (1 / (2 * Real.pi) : ℂ) * (∫ t : ℝ, HwC c k t * (Lfn ((c:ℂ) + t * I) - L2 ((c:ℂ) + t * I)))
        + (1 / (2 * Real.pi) : ℂ) * (∫ t : ℝ, HwC c k t * dE2 c t)
        - (∑ ρ ∈ E₀, (analyticOrderNatAt hardyW ρ : ℂ) * Hfn k ρ) + (3/2 : ℂ) * (Hfn k 0 + Hfn k 1) := by
    linear_combination -hfull'
  rw [key, hEv, hLmv']
  ring

end XiPrime
end Zeta23
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/EFLitCorrW/Variantdafff7a56e227ce27eb48ef4b6c54415f0f8673f9412f093deda45464bd821a2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/EFLitCorrW/Variantdafff7a56e227ce27eb48ef4b6c54415f0f8673f9412f093deda45464bd821a2.lean#L97).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7e784373cdb1ae478234d41ed95a5fbe029cd140` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
