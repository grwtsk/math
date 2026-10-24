# thmE_C_lam_of_traces

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:900e316c-624c-e1a8-f72d-9761012a0235",
  "kind": "theorem",
  "lexical_name": "thmE_C_lam_of_traces",
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
  "slug": "thme-c-lam-of-traces--a8195290c85f020c001e9421",
  "source": {
    "blob": "e2631aba0800c98ee4759ddf28c93e7630119e45",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 146,
    "line": 120,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Main/Variantda331f55f6e13c0e4836a7827b4153f099d510c02175f611643b2f00ed282501.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a8195290c85f020c001e9421bac3d6ae985027b413764948e929302ef97e18de",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Main/Variantda331f55f6e13c0e4836a7827b4153f099d510c02175f611643b2f00ed282501.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:900e316c-624c-e1a8-f72d-9761012a0235`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 120–146.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem thmE_C_lam_of_traces (hs : LSeam χ) (hq : 1 ≤ q)
    {ϱ : ℝ → ℝ} (hϱ : TaperProfile ϱ) {lam : ℝ} (h0 : 0 < lam) (h1 : lam < 1)
    (hRvM : RiemannVonMangoldtChi q (LZeros hs))
    (hTr : ThmTracesHypChi (paramsOf ϱ lam) (parity χ) q (coeff χ) (LZeros hs))
    (hGzGp : ∀ᶠ T in atTop,
      (LZeros hs).Gz (paramsOf ϱ lam) T = GpChi (paramsOf ϱ lam) (parity χ) q (coeff χ) T)
    (hcalE : Tendsto (paramsOf ϱ lam).calE atTop (𝓝 0)) :
    ∀ ε > 0, ∃ T₀ : ℝ, ∀ T ≥ T₀,
      (Ffun lam - ε) * (NcountL χ T (2 * T) : ℝ) ≤ NdistL χ T (2 * T) := by
  have hP := paramsOf_valid hϱ h0 h1.le
  obtain ⟨θ₀, hTail, hθ₀⟩ := tailPackageChi (LZeros hs) hRvM _ hP
  have hBlock := eventually_blockInputs (LZeros hs) _ hP
  have hNII := NIIChi (LZeros hs) hRvM
  obtain ⟨R, hR, hev⟩ := thmE_BC_core (LZeros hs) (parity χ) hq (coeff χ) (paramsOf ϱ lam) hP h1
    hRvM hTr hBlock θ₀ hTail hθ₀ hNII hGzGp hcalE
  have h := Assembly.eps_form_of_isLittleO (err := R) (hev.mono fun T h => by simpa using h.2)
    (Filter.Eventually.of_forall fun T => Nat.cast_nonneg _) hR
  simpa [paramsOf] using h

/-! ## The seam discharged (Zeta23/ThmE/SeamL.lean): the gates without the `LSeam` hypothesis -/

section SeamDischarged

variable {q : ℕ} [NeZero q] {χ : DirichletCharacter ℂ q}

/-- Theorem E bound 1 at fixed λ, for a PRIMITIVE χ mod q > 1;
remaining hypotheses: RvM(χ), the χ-traces package, the χ-EF bridge, 𝓔 → 0. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Main/Variantda331f55f6e13c0e4836a7827b4153f099d510c02175f611643b2f00ed282501.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Main/Variantda331f55f6e13c0e4836a7827b4153f099d510c02175f611643b2f00ed282501.lean#L120).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e2631aba0800c98ee4759ddf28c93e7630119e45` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
