# tendsto_integral_peak_smul_of_integrable_of_tendsto

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ab8982e7216adf6847d69ac4237916b9c28b1efb",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 219,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f9/f9621c2d9caf9405958286ab0f10310a9fc57437d930f04fb31fbd390ae6b344.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ff8d4dbe-7d71-fbf7-ee5f-5a94805bee66",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f8704790-cc3f-157c-2c38-5ac8e1e8f4a2",
  "kind": "theorem",
  "lexical_name": "tendsto_integral_peak_smul_of_integrable_of_tendsto",
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
  "slug": "tendsto-integral-peak-smul-of-integrable-of-tendsto--ffc568e753227ba3616490bb",
  "source": {
    "blob": "ab8982e7216adf6847d69ac4237916b9c28b1efb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 245,
    "line": 219,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/PeakFunction/Variantf9621c2d9caf9405958286ab0f10310a9fc57437d930f04fb31fbd390ae6b344.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ffc568e753227ba3616490bb94559b9f1977a37615186e7940dadd2f2c080cde",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/PeakFunction/Variantf9621c2d9caf9405958286ab0f10310a9fc57437d930f04fb31fbd390ae6b344.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f8704790-cc3f-157c-2c38-5ac8e1e8f4a2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 219–245.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tendsto_integral_peak_smul_of_integrable_of_tendsto
    {t : Set α} (ht : MeasurableSet t) (h'ts : t ∈ 𝓝 x₀)
    (h't : μ t ≠ ∞) (hnφ : ∀ᶠ i in l, ∀ x, 0 ≤ φ i x)
    (hlφ : ∀ u : Set α, IsOpen u → x₀ ∈ u → TendstoUniformlyOn φ 0 l uᶜ)
    (hiφ : Tendsto (fun i ↦ ∫ x in t, φ i x ∂μ) l (𝓝 1))
    (h'iφ : ∀ᶠ i in l, AEStronglyMeasurable (φ i) μ)
    (hmg : Integrable g μ) (hcg : Tendsto g (𝓝 x₀) (𝓝 a)) :
    Tendsto (fun i : ι ↦ ∫ x, φ i x • g x ∂μ) l (𝓝 a) := by
  suffices Tendsto (fun i : ι ↦ ∫ x in univ, φ i x • g x ∂μ) l (𝓝 a) by simpa
  exact tendsto_setIntegral_peak_smul_of_integrableOn_of_tendsto MeasurableSet.univ ht (x₀ := x₀)
    (subset_univ _) (by simpa [nhdsWithin_univ]) h't (by simpa)
    (by simpa [← compl_eq_univ_diff] using hlφ) hiφ
    (by simpa) (by simpa) (by simpa [nhdsWithin_univ])

/-!
### Peak functions of the form `x ↦ (c x) ^ n / ∫ (c y) ^ n`
-/

/-- If a continuous function `c` realizes its maximum at a unique point `x₀` in a compact set `s`,
then the sequence of functions `(c x) ^ n / ∫ (c x) ^ n` is a sequence of peak functions
concentrating around `x₀`. Therefore, `∫ (c x) ^ n * g / ∫ (c x) ^ n` converges to `g x₀` if `g` is
integrable on `s` and continuous at `x₀`.

Version assuming that `μ` gives positive mass to all neighborhoods of `x₀` within `s`.
For a less precise but more usable version, see
`tendsto_setIntegral_pow_smul_of_unique_maximum_of_isCompact_of_continuousOn`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/PeakFunction/Variantf9621c2d9caf9405958286ab0f10310a9fc57437d930f04fb31fbd390ae6b344.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/PeakFunction/Variantf9621c2d9caf9405958286ab0f10310a9fc57437d930f04fb31fbd390ae6b344.lean#L219).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ab8982e7216adf6847d69ac4237916b9c28b1efb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
