# secondMoment_convolution

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5432b4778206a3762151b3f9a743298f61e7dceb",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 32,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/41/41b7b8d5d8420daf392c76c5eae3dd2307556f59613ecccd31e2e045104acc7d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:625baab9-0eb0-60d8-c7f8-ebd8a88be94c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:16bce1b2-b423-e150-7d62-164dd1176539",
  "kind": "theorem",
  "lexical_name": "secondMoment_convolution",
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
  "slug": "secondmoment-convolution--4abe377ebfb3ea6deb958020",
  "source": {
    "blob": "5432b4778206a3762151b3f9a743298f61e7dceb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 57,
    "line": 32,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/CorrelationSecondMoment/Variant41b7b8d5d8420daf392c76c5eae3dd2307556f59613ecccd31e2e045104acc7d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4abe377ebfb3ea6deb95802086cbb9e61ed810983dd80673d95c93862c745978",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/CorrelationSecondMoment/Variant41b7b8d5d8420daf392c76c5eae3dd2307556f59613ecccd31e2e045104acc7d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:16bce1b2-b423-e150-7d62-164dd1176539`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 32–57.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem secondMoment_convolution (f g : ℝ → ℝ)
    (hf : Continuous f) (hg : Continuous g) (hcf : HasCompactSupport f)
    (t : ℝ) :
    t ^ 2 * (f ⋆ g) t = ((fun x ↦ x ^ 2 * f x) ⋆ g) t +
      2 * ((fun x ↦ x * f x) ⋆ (fun x ↦ x * g x)) t +
      (f ⋆ (fun x ↦ x ^ 2 * g x)) t := by
  have h1 : Integrable (fun x ↦ (x ^ 2 * f x) * g (t - x)) :=
    (((continuous_id.pow 2).mul hf).mul
      (hg.comp (continuous_const.sub continuous_id))).integrable_of_hasCompactSupport
      hcf.mul_left.mul_right
  have h2 : Integrable (fun x ↦ (x * f x) * ((t - x) * g (t - x))) :=
    ((continuous_id.mul hf).mul ((continuous_const.sub continuous_id).mul
      (hg.comp (continuous_const.sub continuous_id)))).integrable_of_hasCompactSupport
      hcf.mul_left.mul_right
  have h3 : Integrable (fun x ↦ f x * ((t - x) ^ 2 * g (t - x))) :=
    (hf.mul (((continuous_const.sub continuous_id).pow 2).mul
      (hg.comp (continuous_const.sub continuous_id)))).integrable_of_hasCompactSupport hcf.mul_right
  have h12 : Integrable (fun x ↦ (x ^ 2 * f x) * g (t - x) +
      2 * ((x * f x) * ((t - x) * g (t - x)))) := h1.add (h2.const_mul 2)
  simp only [convolution_lsmul, smul_eq_mul]
  rw [← integral_const_mul, ← integral_const_mul, ← integral_add h1 (h2.const_mul 2),
    ← integral_add h12 h3]
  apply integral_congr_ae
  filter_upwards [] with x
  ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/CorrelationSecondMoment/Variant41b7b8d5d8420daf392c76c5eae3dd2307556f59613ecccd31e2e045104acc7d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/CorrelationSecondMoment/Variant41b7b8d5d8420daf392c76c5eae3dd2307556f59613ecccd31e2e045104acc7d.lean#L32).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5432b4778206a3762151b3f9a743298f61e7dceb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
