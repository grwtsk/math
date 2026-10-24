# xiPrime_EF_lit_corr

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6642936e98187cf5821a3af9634301cceee123fa",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 323,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ca/ca43e4332bf1f5080890146fdb59d3f7f6200ca3b82fd8bea13193a1eb9cb2e6.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8757af22-428c-2cbc-c5a7-973367817795",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7d4ce884-ada4-e970-fa53-0881dfc5ec38",
  "kind": "theorem",
  "lexical_name": "xiPrime_EF_lit_corr",
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
  "slug": "xiprime-ef-lit-corr--c54f7c84fcf5f828fec6d978",
  "source": {
    "blob": "6642936e98187cf5821a3af9634301cceee123fa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 349,
    "line": 323,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/LitCorr/Variantca43e4332bf1f5080890146fdb59d3f7f6200ca3b82fd8bea13193a1eb9cb2e6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c54f7c84fcf5f828fec6d9786e16ac4e91f9ef70fdcca59a53efd7caf1d3605a",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/LitCorr/Variantca43e4332bf1f5080890146fdb59d3f7f6200ca3b82fd8bea13193a1eb9cb2e6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7d4ce884-ada4-e970-fa53-0881dfc5ec38`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 323–349.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem xiPrime_EF_lit_corr (hF2 : XiDerivZerosInStrip) (hEF1 : FullLineIdentity)
    (_hRL : RationalLine) {k : ℝ → ℂ} (hk : ContDiff ℝ 2 k) (hkc : HasCompactSupport k) :
    Summable (fun ρ : {ρ : ℂ | IsXiDerivZero ρ} => (xiDerivMult (ρ : ℂ) : ℂ) * paperFT k (gammaOf ρ)) ∧
    ∑' ρ : {ρ : ℂ | IsXiDerivZero ρ}, (xiDerivMult (ρ : ℂ) : ℂ) * paperFT k (gammaOf ρ)
      = Zeta23.EF.literatureRHS k + Jcorr k := by
  have hgammaOf : ∀ ρ : ℂ, paperFT k (gammaOf ρ) = Hfn k ρ := fun ρ => rfl
  simp_rw [hgammaOf]
  obtain ⟨hsum, hfull⟩ := hEF1 k hk hkc
  refine ⟨hsum, ?_⟩
  obtain ⟨hintE, hEv⟩ := Efn_line_identity (c := 5/4) (by norm_num) (by norm_num) hk hkc
  have hintJ := integrable_Hw_mul_dEE hF2 hk hkc
  have hintE' : Integrable (fun t : ℝ => Hw k t * Efn (((5/4:ℝ) : ℂ) + t * I)) := hintE
  have e : ∀ t : ℝ, Hw k t * logDeriv xiDeriv (((5/4:ℝ) : ℂ) + t * I)
      = Hw k t * Efn (((5/4:ℝ) : ℂ) + t * I) + Hw k t * dEE t := by
    intro t; rw [logDeriv_xiDeriv_line_split' hF2 t]; ring
  have hfull' : (∑' ρ : {ρ : ℂ | IsXiDerivZero ρ}, (xiDerivMult (ρ : ℂ) : ℂ) * Hfn k ρ)
      = (1 / (2 * Real.pi) : ℂ) * ∫ t : ℝ, Hw k t * logDeriv xiDeriv (((5/4:ℝ):ℂ) + t * I) := by
    rw [← hfull]; rfl
  rw [hfull', Jcorr]
  simp_rw [e]
  rw [integral_add hintE' hintJ, mul_add]
  have hEv' : (1 / (2 * Real.pi) : ℂ) * (∫ t : ℝ, Hw k t * Efn (((5/4:ℝ) : ℂ) + t * I))
      = Zeta23.EF.literatureRHS k := hEv
  rw [hEv']

end XiPrime
end Zeta23
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/LitCorr/Variantca43e4332bf1f5080890146fdb59d3f7f6200ca3b82fd8bea13193a1eb9cb2e6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/LitCorr/Variantca43e4332bf1f5080890146fdb59d3f7f6200ca3b82fd8bea13193a1eb9cb2e6.lean#L323).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6642936e98187cf5821a3af9634301cceee123fa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
