# full_line_identity_gen

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c153464c65a1419b366735889c1f9cc641239cb3",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 552,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/63/63078dd8f604ec4778a7061870d84275bb50c1584e7aa3616803aa6a8882bd2b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:cdd8b1a9-12e2-49fa-58bf-682b9782762e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2b262ad7-2d7b-5c07-de81-20b70914b6f4",
  "kind": "theorem",
  "lexical_name": "full_line_identity_gen",
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
  "slug": "full-line-identity-gen--9e26930eb9cc32275b5dd705",
  "source": {
    "blob": "c153464c65a1419b366735889c1f9cc641239cb3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 580,
    "line": 552,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/FullLine/Variant63078dd8f604ec4778a7061870d84275bb50c1584e7aa3616803aa6a8882bd2b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9e26930eb9cc32275b5dd7059fef0fb3ed64f7cd2322219cd73e92a63ff89026",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/FullLine/Variant63078dd8f604ec4778a7061870d84275bb50c1584e7aa3616803aa6a8882bd2b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2b262ad7-2d7b-5c07-de81-20b70914b6f4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 552–580.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem full_line_identity_gen (hF2 : XiDerivZerosInStrip) {k : ℝ → ℂ} (hk : ContDiff ℝ 2 k)
    (hkc : HasCompactSupport k) {c : ℝ} (hc1 : 1 < c) (hc2 : c ≤ 3 / 2)
    (hline : ∃ M : ℝ, ∀ t : ℝ, ‖logDeriv xiDeriv ((c : ℂ) + t * I)‖ ≤ M * Real.log (2 + |t|)) :
    Summable (fun ρ : {ρ : ℂ | IsXiDerivZero ρ} => (xiDerivMult (ρ : ℂ) : ℂ) * Hfn k ρ) ∧
    (1 / (2 * Real.pi) : ℂ) * (∫ t : ℝ, (Hfn k ((c : ℂ) + t * I) + Hfn k (1 - c - t * I))
        * logDeriv xiDeriv ((c : ℂ) + t * I))
      = ∑' ρ : {ρ : ℂ | IsXiDerivZero ρ}, (xiDerivMult (ρ : ℂ) : ℂ) * Hfn k ρ := by
  have hs : XiDerivSeam := xiDerivSeam_of_strip hF2
  obtain ⟨A₀, hA₀, hloc⟩ := (xiDeriv_riemannVonMangoldt hF2 hs).local_count
  have hsum : Summable (fun ρ : {ρ : ℂ | IsXiDerivZero ρ} => (xiDerivMult (ρ : ℂ) : ℂ) * Hfn k ρ) :=
    EF_zero_sum_summable_gen (xiDerivZeros hF2 hs) hA₀ hloc hk hkc
  refine ⟨hsum, ?_⟩
  have hstrip : ∀ ρ ∈ {ρ : ℂ | IsXiDerivZero ρ}, 1 - c < ρ.re ∧ ρ.re < c := fun ρ hρ => by
    have h := hF2 ρ hρ
    constructor <;> linarith [h.1, h.2]
  have hGH' : ∃ C : ℝ, 0 < C ∧ ∃ j₀ : ℕ, ∀ j : ℕ, j₀ ≤ j → ∃ R : ℝ, (j : ℝ) ≤ R ∧ R ≤ (j : ℝ) + 1 ∧
      ∀ s : ℂ, (s.im = R ∨ s.im = -R) → 1 - c ≤ s.re → s.re ≤ c →
        xiDeriv s ≠ 0 ∧ ‖logDeriv xiDeriv s‖ ≤ C * (Real.log ((j : ℝ) + 3)) ^ 2 := by
    obtain ⟨C, hC, j₀, h⟩ := ZeroCount.xiDeriv_good_heights hF2
    refine ⟨C, hC, j₀, fun j hj => ?_⟩
    obtain ⟨R, h1, h2, h3⟩ := h j hj
    exact ⟨R, h1, h2, fun s him hr1 hr2 => h3 s him (by linarith) (by linarith)⟩
  exact full_line_identity_of xiDeriv_differentiable (by linarith) (by linarith)
    logDeriv_xiDeriv_one_sub (Zset := {ρ : ℂ | IsXiDerivZero ρ}) (fun _ => Iff.rfl) hstrip hGH'
    hline hk hkc hsum

/-- **(EF1) The full-line identity for ξ″/ξ′** [XF′ Prop. 4.1] on the line Re s = 5/4,
conditional on (F2) only:  Σ'_{ξ′(ρ)=0} m_ρ H(ρ) converges absolutely and equals
(1/2π) ∫ [H(5/4+it) + H(−1/4−it)]·ξ″/ξ′(5/4+it) dt.  No pole terms: ξ′ is entire. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/FullLine/Variant63078dd8f604ec4778a7061870d84275bb50c1584e7aa3616803aa6a8882bd2b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/FullLine/Variant63078dd8f604ec4778a7061870d84275bb50c1584e7aa3616803aa6a8882bd2b.lean#L552).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c153464c65a1419b366735889c1f9cc641239cb3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
