# complex_annihilator_eq_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "898d80d2625d5b359c3f6ed64461c2b04f4fdd4b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 163,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b9/b927ccc62cb561ba8b22e5a57d93c827f7b99e7c385c483763f25c78acf351aa.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3c7db77f-379e-7542-b164-70a6daf2ed5e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:529163bb-e74c-c4bd-aa79-834757cb6186",
  "kind": "theorem",
  "lexical_name": "complex_annihilator_eq_zero",
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
  "slug": "complex-annihilator-eq-zero--fcc9c7b33ffed70adfa6ced8",
  "source": {
    "blob": "898d80d2625d5b359c3f6ed64461c2b04f4fdd4b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 195,
    "line": 163,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/ThetaPolynomialGraphCore/Variantb927ccc62cb561ba8b22e5a57d93c827f7b99e7c385c483763f25c78acf351aa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fcc9c7b33ffed70adfa6ced890a59770087dfbe57834f661e428ea19466f4740",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/ThetaPolynomialGraphCore/Variantb927ccc62cb561ba8b22e5a57d93c827f7b99e7c385c483763f25c78acf351aa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:529163bb-e74c-c4bd-aa79-834757cb6186`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 163–195.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem complex_annihilator_eq_zero (σ : Measure ℝ) [IsFiniteMeasure σ]
    (hexp : Integrable (fun x : ℝ => Real.exp |x|) σ)
    (hpow : ∀ n : ℕ, MemLp (fun x : ℝ => x ^ n) 2 σ)
    (f : Lp ℂ 2 σ)
    (hann : ∀ n : ℕ, (∫ x, ((x ^ n : ℝ) : ℂ) * f x ∂σ) = 0) : f = 0 := by
  have hint (n : ℕ) : Integrable (fun x => ((x ^ n : ℝ) : ℂ) * f x) σ :=
    ((hpow n).ofReal.integrable_mul (Lp.memLp f)).congr (Eventually.of_forall fun _ => rfl)
  have hr : (fun x => (f x).re) =ᵐ[σ] 0 :=
    real_annihilator_eq_zero_ae σ hexp hpow (fun x => (f x).re)
      (Complex.measurable_re.comp (Lp.stronglyMeasurable f).measurable) (Lp.memLp f).re (by
        intro n
        have h := congrArg (RCLike.re : ℂ → ℝ) (hann n)
        rw [← integral_re (hint n)] at h
        change (∫ x, (((x ^ n : ℝ) : ℂ) * f x).re ∂σ) = 0 at h
        simpa only [Complex.mul_re, Complex.ofReal_re, Complex.ofReal_im,
          zero_mul, sub_zero, Complex.zero_re, mul_comm] using h)
  have hi : (fun x => (f x).im) =ᵐ[σ] 0 :=
    real_annihilator_eq_zero_ae σ hexp hpow (fun x => (f x).im)
      (Complex.measurable_im.comp (Lp.stronglyMeasurable f).measurable) (Lp.memLp f).im (by
        intro n
        have h := congrArg (RCLike.im : ℂ → ℝ) (hann n)
        rw [← integral_im (hint n)] at h
        change (∫ x, (((x ^ n : ℝ) : ℂ) * f x).im ∂σ) = 0 at h
        simpa only [Complex.mul_im, Complex.ofReal_re, Complex.ofReal_im,
          zero_mul, add_zero, Complex.zero_im, mul_comm] using h)
  apply Lp.ext
  filter_upwards [hr, hi, Lp.coeFn_zero ℂ 2 σ] with x hx hy hz
  rw [hz]
  apply Complex.ext
  · simpa only [Pi.zero_apply, Complex.zero_re] using hx
  · simpa only [Pi.zero_apply, Complex.zero_im] using hy

/-- The exact weighted monomial L² vector. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/ThetaPolynomialGraphCore/Variantb927ccc62cb561ba8b22e5a57d93c827f7b99e7c385c483763f25c78acf351aa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/ThetaPolynomialGraphCore/Variantb927ccc62cb561ba8b22e5a57d93c827f7b99e7c385c483763f25c78acf351aa.lean#L163).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `898d80d2625d5b359c3f6ed64461c2b04f4fdd4b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
