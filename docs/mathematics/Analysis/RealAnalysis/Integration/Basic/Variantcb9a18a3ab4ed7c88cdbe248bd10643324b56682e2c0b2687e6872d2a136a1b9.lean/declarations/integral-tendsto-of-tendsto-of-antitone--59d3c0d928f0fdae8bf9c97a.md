# integral_tendsto_of_tendsto_of_antitone

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:53557fd7-5573-06e4-6069-b11a738f2f1d",
  "kind": "lemma",
  "lexical_name": "integral_tendsto_of_tendsto_of_antitone",
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
  "slug": "integral-tendsto-of-tendsto-of-antitone--59d3c0d928f0fdae8bf9c97a",
  "source": {
    "blob": "231f6160cc10a85ea9f0f54834862b6657c8c993",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 817,
    "line": 803,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Basic/Variantcb9a18a3ab4ed7c88cdbe248bd10643324b56682e2c0b2687e6872d2a136a1b9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:59d3c0d928f0fdae8bf9c97aa32df0b11bf8cdf689f1645acf64345a52a45137",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Basic/Variantcb9a18a3ab4ed7c88cdbe248bd10643324b56682e2c0b2687e6872d2a136a1b9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:53557fd7-5573-06e4-6069-b11a738f2f1d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 803–817.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma integral_tendsto_of_tendsto_of_antitone {μ : Measure α} {f : ℕ → α → ℝ} {F : α → ℝ}
    (hf : ∀ n, Integrable (f n) μ) (hF : Integrable F μ) (h_mono : ∀ᵐ x ∂μ, Antitone fun n ↦ f n x)
    (h_tendsto : ∀ᵐ x ∂μ, Tendsto (fun n ↦ f n x) atTop (𝓝 (F x))) :
    Tendsto (fun n ↦ ∫ x, f n x ∂μ) atTop (𝓝 (∫ x, F x ∂μ)) := by
  suffices Tendsto (fun n ↦ ∫ x, -f n x ∂μ) atTop (𝓝 (∫ x, -F x ∂μ)) by
    suffices Tendsto (fun n ↦ ∫ x, - -f n x ∂μ) atTop (𝓝 (∫ x, - -F x ∂μ)) by
      simpa [neg_neg] using this
    convert this.neg <;> rw [integral_neg]
  refine integral_tendsto_of_tendsto_of_monotone (fun n ↦ (hf n).neg) hF.neg ?_ ?_
  · filter_upwards [h_mono] with x hx n m hnm using neg_le_neg_iff.mpr <| hx hnm
  · filter_upwards [h_tendsto] with x hx using hx.neg

/-- If a monotone sequence of functions has an upper bound and the sequence of integrals of these
functions tends to the integral of the upper bound, then the sequence of functions converges
almost everywhere to the upper bound. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Basic/Variantcb9a18a3ab4ed7c88cdbe248bd10643324b56682e2c0b2687e6872d2a136a1b9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Basic/Variantcb9a18a3ab4ed7c88cdbe248bd10643324b56682e2c0b2687e6872d2a136a1b9.lean#L803).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `231f6160cc10a85ea9f0f54834862b6657c8c993` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
