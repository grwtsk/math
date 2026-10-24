# lintegral_image_eq_lintegral_deriv_mul_of_antitoneOn

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:759ed2a1-0b22-b008-d21b-f01b65dd5561",
  "kind": "theorem",
  "lexical_name": "lintegral_image_eq_lintegral_deriv_mul_of_antitoneOn",
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
  "slug": "lintegral-image-eq-lintegral-deriv-mul-of-antitoneon--90fd4b9ea108440cfc6db812",
  "source": {
    "blob": "0f448cc8a62dc92b1f9164768532218eebaa4aab",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 387,
    "line": 369,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/JacobianOneDim/Variant57d754a5bdc99bbb2ac2db6f2730d1d9124c4f5cbb2f47d28a7e65e00ef2aa53.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:90fd4b9ea108440cfc6db8122d5bf5dd88db0b6b8e3457bfc8fc9c26a37cc469",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/JacobianOneDim/Variant57d754a5bdc99bbb2ac2db6f2730d1d9124c4f5cbb2f47d28a7e65e00ef2aa53.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:759ed2a1-0b22-b008-d21b-f01b65dd5561`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 369–387.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem lintegral_image_eq_lintegral_deriv_mul_of_antitoneOn (hs : MeasurableSet s)
    (hf' : ∀ x ∈ s, HasDerivWithinAt f (f' x) s x) (hf : AntitoneOn f s) (u : ℝ → ℝ≥0∞) :
    ∫⁻ x in f '' s, u x = ∫⁻ x in s, ENNReal.ofReal (-f' x) * u (f x) := by
  let n : ℝ → ℝ := (fun x ↦ -x)
  let e := n ∘ f
  have hg' (x) (hx : x ∈ s) : HasDerivWithinAt e (-f' x) s x := (hf' x hx).neg
  have A : ∫⁻ x in e '' s, u (n x) = ∫⁻ x in s, ENNReal.ofReal (-f' x) * (u ∘ n) (e x) := by
    rw [← lintegral_image_eq_lintegral_deriv_mul_of_monotoneOn hs hg' hf.neg (u ∘ n)]; rfl
  have B : ∫⁻ x in n '' e '' s, u x = ∫⁻ x in e '' s, ENNReal.ofReal (|-1|) * u (n x) :=
    lintegral_image_eq_lintegral_abs_deriv_mul (hs.image_of_monotoneOn hf.neg)
      (fun x hx ↦ hasDerivWithinAt_neg _ _) neg_injective.injOn _
  simp only [abs_neg, abs_one, ENNReal.ofReal_one, one_mul] at B
  rw [A, ← image_comp] at B
  convert! B using 4 with x hx x <;> simp [n, e]

/-- Change of variable formula for differentiable functions, set version: if a real function `f` is
antitone and differentiable on a measurable set `s`, then the measure of `f '' s` is given by the
integral of `-f' x` on `s` .
Note that the measurability of `f '' s` is given by `MeasurableSet.image_of_antitoneOn`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/JacobianOneDim/Variant57d754a5bdc99bbb2ac2db6f2730d1d9124c4f5cbb2f47d28a7e65e00ef2aa53.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/JacobianOneDim/Variant57d754a5bdc99bbb2ac2db6f2730d1d9124c4f5cbb2f47d28a7e65e00ef2aa53.lean#L369).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0f448cc8a62dc92b1f9164768532218eebaa4aab` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
