# thmE_B_lam_of_traces

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "04b1fb17f416b15ab6948debfd8585a9821e2d24",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 91,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/7f/7fd3f2aed214eae1c854c4b73b51c0cfb05b6e582ee3fab4430a97572a0143f9.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:bdc8d234-38b2-1148-cf5d-2973535f1485",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2641782b-3478-655a-e781-f65043f519d4",
  "kind": "theorem",
  "lexical_name": "thmE_B_lam_of_traces",
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
  "slug": "thme-b-lam-of-traces--f85684c845cc209b6218f620",
  "source": {
    "blob": "04b1fb17f416b15ab6948debfd8585a9821e2d24",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 111,
    "line": 91,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Main/Variant7fd3f2aed214eae1c854c4b73b51c0cfb05b6e582ee3fab4430a97572a0143f9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f85684c845cc209b6218f62061e42429b36787b7faf9341984d8740960b4edc7",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Main/Variant7fd3f2aed214eae1c854c4b73b51c0cfb05b6e582ee3fab4430a97572a0143f9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2641782b-3478-655a-e781-f65043f519d4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 91–111.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem thmE_B_lam_of_traces (hs : LSeam χ) (hq : 1 ≤ q)
    {ϱ : ℝ → ℝ} (hϱ : TaperProfile ϱ) {lam : ℝ} (h0 : 0 < lam) (h1 : lam < 1)
    (hRvM : RiemannVonMangoldtChi q (LZeros hs))
    (hTr : ThmTracesHypChi (paramsOf ϱ lam) (parity χ) q (coeff χ) (LZeros hs))
    (hGzGp : ∀ᶠ T in atTop,
      (LZeros hs).Gz (paramsOf ϱ lam) T = GpChi (paramsOf ϱ lam) (parity χ) q (coeff χ) T)
    (hcalE : Tendsto (paramsOf ϱ lam).calE atTop (𝓝 0)) :
    ∀ ε > 0, ∃ T₀ : ℝ, ∀ T ≥ T₀,
      (2 * Ffun lam - 1 - ε) * (NcountL χ T (2 * T) : ℝ) ≤ N0simpleL χ T (2 * T) := by
  have hP := paramsOf_valid hϱ h0 h1.le
  obtain ⟨θ₀, hTail, hθ₀⟩ := tailPackageChi (LZeros hs) hRvM _ hP
  have hBlock := eventually_blockInputs (LZeros hs) _ hP
  have hNII := NIIChi (LZeros hs) hRvM
  obtain ⟨R, hR, hev⟩ := thmE_BC_core (LZeros hs) (parity χ) hq (coeff χ) (paramsOf ϱ lam) hP h1
    hRvM hTr hBlock θ₀ hTail hθ₀ hNII hGzGp hcalE
  have h := Assembly.eps_form_of_isLittleO (err := fun T => 2 * R T) (hev.mono fun T h => by
      simpa using h.1)
    (Filter.Eventually.of_forall fun T => Nat.cast_nonneg _) (hR.const_mul_left 2)
  simpa [paramsOf] using h

/-- **Theorem E, third bound (distinct zeros) at fixed λ, modulo the χ inputs** ([thm:E]). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Main/Variant7fd3f2aed214eae1c854c4b73b51c0cfb05b6e582ee3fab4430a97572a0143f9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Main/Variant7fd3f2aed214eae1c854c4b73b51c0cfb05b6e582ee3fab4430a97572a0143f9.lean#L91).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `04b1fb17f416b15ab6948debfd8585a9821e2d24` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
