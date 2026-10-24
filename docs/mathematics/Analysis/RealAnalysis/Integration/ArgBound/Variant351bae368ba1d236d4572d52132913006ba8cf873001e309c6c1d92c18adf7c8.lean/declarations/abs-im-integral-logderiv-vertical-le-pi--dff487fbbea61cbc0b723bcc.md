# abs_im_integral_logDeriv_vertical_le_pi

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d423497ad4094e1b0ce85926c78132fbe710c7ba",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 73,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/35/351bae368ba1d236d4572d52132913006ba8cf873001e309c6c1d92c18adf7c8.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c7c5d38d-8f3c-8e60-c3fc-9c4303bd4273",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:df00a255-dd03-585a-8eb0-3917a5c1d386",
  "kind": "theorem",
  "lexical_name": "abs_im_integral_logDeriv_vertical_le_pi",
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
  "slug": "abs-im-integral-logderiv-vertical-le-pi--dff487fbbea61cbc0b723bcc",
  "source": {
    "blob": "d423497ad4094e1b0ce85926c78132fbe710c7ba",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 94,
    "line": 73,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/ArgBound/Variant351bae368ba1d236d4572d52132913006ba8cf873001e309c6c1d92c18adf7c8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dff487fbbea61cbc0b723bcce8e650bb5316d8391faf6b7601c6b578c87087d6",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/ArgBound/Variant351bae368ba1d236d4572d52132913006ba8cf873001e309c6c1d92c18adf7c8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:df00a255-dd03-585a-8eb0-3917a5c1d386`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 73–94.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem abs_im_integral_logDeriv_vertical_le_pi {f : ℂ → ℂ} {σ T₁ T₂ : ℝ} (h12 : T₁ ≤ T₂)
    (hf : ∀ t ∈ Icc T₁ T₂, AnalyticAt ℂ f (σ + t * I))
    (hre : ∀ t ∈ Icc T₁ T₂, 0 < (f (σ + t * I)).re) :
    |(∫ t in T₁..T₂, logDeriv f (σ + t * I) * I).im| ≤ Real.pi := by
  set g : ℝ → ℂ := fun t => f (σ + t * I) with hg
  set g' : ℝ → ℂ := fun t => deriv f (σ + t * I) * I with hg'
  have hderiv : ∀ t ∈ Icc T₁ T₂, HasDerivAt g (g' t) t := fun t ht =>
    ((hf t ht).differentiableAt.hasDerivAt).comp t (hasDerivAt_vertical σ t)
  have hcont : ContinuousOn g' (Icc T₁ T₂) := by
    intro t ht
    have hd : ContinuousAt (deriv f) (σ + t * I) := (hf t ht).deriv.continuousAt
    have hp : ContinuousAt (fun t : ℝ => (σ : ℂ) + t * I) t := by fun_prop
    exact ((hd.comp (f := fun t : ℝ => (σ : ℂ) + t * I) hp).mul continuousAt_const).continuousWithinAt
  have key := abs_im_integral_logDeriv_le_pi h12 hderiv hcont hre
  have e : (fun t => g' t / g t) = fun t : ℝ => logDeriv f (σ + t * I) * I := by
    funext t
    simp only [hg, hg', logDeriv_apply]
    ring
  rw [e] at key
  exact key

/-- **(A), horizontal segment**: f analytic with Re f > 0 along [a,b] + iT ⇒ |Im ∫ f′/f(σ+iT) dσ| ≤ π. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/ArgBound/Variant351bae368ba1d236d4572d52132913006ba8cf873001e309c6c1d92c18adf7c8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/ArgBound/Variant351bae368ba1d236d4572d52132913006ba8cf873001e309c6c1d92c18adf7c8.lean#L73).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d423497ad4094e1b0ce85926c78132fbe710c7ba` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
