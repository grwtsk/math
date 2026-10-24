# pairedEta_eq_factor_of_real

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "20524e95786b7a57d28806272d7dfa253f85ec3a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 297,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c4/c4a2f289fdcdf0efa982e22ff32d568b44e70c8dfbe145552e64be443e2e2bff.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:57e048f8-3012-b1be-fdd6-0037c4a46708",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:262d5ca8-c71c-12fe-2354-9114f3c41557",
  "kind": "theorem",
  "lexical_name": "pairedEta_eq_factor_of_real",
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
  "slug": "pairedeta-eq-factor-of-real--81eb3750c3a69325c49715af",
  "source": {
    "blob": "20524e95786b7a57d28806272d7dfa253f85ec3a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 352,
    "line": 297,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/ActualPairedProductNoRealZeros/Variantc4a2f289fdcdf0efa982e22ff32d568b44e70c8dfbe145552e64be443e2e2bff.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:81eb3750c3a69325c49715af3f787f95d197e693b431343d3da59453c6c760fa",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/ActualPairedProductNoRealZeros/Variantc4a2f289fdcdf0efa982e22ff32d568b44e70c8dfbe145552e64be443e2e2bff.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:262d5ca8-c71c-12fe-2354-9114f3c41557`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 297–352.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem pairedEta_eq_factor_of_real {x : ℝ}
    (hx : 0 < x) (hx1 : x ≠ 1) :
    pairedEta (x : ℂ) = etaZetaFactor (x : ℂ) := by
  let seq : ℕ → ℂ :=
    fun n => (x : ℂ) + I * (1 / ((n + 1 : ℕ) : ℂ))
  have hone :
      Tendsto (fun n : ℕ => 1 / ((n + 1 : ℕ) : ℂ))
        atTop (𝓝 0) := by
    simpa only [Nat.cast_add, Nat.cast_one] using
      (tendsto_one_div_add_atTop_nhds_zero_nat (𝕜 := ℂ))
  have hseq : Tendsto seq atTop (𝓝 (x : ℂ)) := by
    simpa only [seq, mul_zero, add_zero] using
      tendsto_const_nhds.add (tendsto_const_nhds.mul hone)
  have hseqMem (n : ℕ) :
      seq n ∈ ({s : ℂ | 0 < s.re} ∩ {s : ℂ | 0 < s.im}) := by
    constructor
    · simp [seq, hx]
    · change 0 < (seq n).im
      have hi :
          (seq n).im =
            (((n + 1 : ℕ) : ℂ)⁻¹).re := by
        simp only [seq, add_im, ofReal_im, zero_add, mul_im,
          I_re, I_im, zero_mul, one_mul, one_div]
      rw [hi, inv_re, normSq_natCast]
      apply div_pos
      · exact_mod_cast (Nat.zero_lt_succ n)
      · positivity
  have hseqEq (n : ℕ) :
      pairedEta (seq n) = etaZetaFactor (seq n) :=
    pairedEta_eq_factor_upper (hseqMem n)
  have hetaCont : ContinuousAt pairedEta (x : ℂ) := by
    have hxmem : (x : ℂ) ∈ {s : ℂ | 0 < s.re} := by simpa using hx
    exact ((differentiableOn_pairedEta (x : ℂ) hxmem).differentiableAt
      ((isOpen_lt continuous_const continuous_re).mem_nhds hxmem)).continuousAt
  have hfactorCont : ContinuousAt etaZetaFactor (x : ℂ) := by
    have hx1c : (x : ℂ) ≠ 1 := by exact_mod_cast hx1
    have hpow :
        DifferentiableAt ℂ (fun w : ℂ => (2 : ℂ) ^ (-w)) (x : ℂ) :=
      ((hasDerivAt_neg' (x : ℂ)).const_cpow
        (Or.inl (by norm_num))).differentiableAt
    have hfac :
        DifferentiableAt ℂ
          (fun w : ℂ => 1 - 2 * (2 : ℂ) ^ (-w)) (x : ℂ) :=
      (differentiableAt_const (c := (1 : ℂ))).sub
        ((differentiableAt_const (c := (2 : ℂ))).mul hpow)
    exact (hfac.mul
      (differentiableAt_riemannZeta hx1c)).continuousAt
  have hleft := hetaCont.tendsto.comp hseq
  have hright := hfactorCont.tendsto.comp hseq
  have hleft' :
      Tendsto (etaZetaFactor ∘ seq) atTop
        (𝓝 (pairedEta (x : ℂ))) := by
    apply hleft.congr'
    exact Eventually.of_forall hseqEq
  exact tendsto_nhds_unique hleft' hright

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/ActualPairedProductNoRealZeros/Variantc4a2f289fdcdf0efa982e22ff32d568b44e70c8dfbe145552e64be443e2e2bff.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/ActualPairedProductNoRealZeros/Variantc4a2f289fdcdf0efa982e22ff32d568b44e70c8dfbe145552e64be443e2e2bff.lean#L297).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `20524e95786b7a57d28806272d7dfa253f85ec3a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
