# integral_re_B_mul_exp_add

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9ef2608fe2b2171a00303ea2d042ad23b0efe93d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 4732,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/7c/7c1a2de3303b954b26dd55f872a3d2ae470ca7bf90b0f36e095a5958cdc14f48.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0fa4adea-84ae-c218-5503-41d710c4c955",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:68a138d0-08b0-621e-df29-89e98f75463c",
  "kind": "lemma",
  "lexical_name": "integral_re_B_mul_exp_add",
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
  "slug": "integral-re-b-mul-exp-add--15951491cafff294e9bb0362",
  "source": {
    "blob": "9ef2608fe2b2171a00303ea2d042ad23b0efe93d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 4748,
    "line": 4732,
    "path": "GRWTSK/Analysis/ComplexAnalysis/CH2Part1/Variant7c1a2de3303b954b26dd55f872a3d2ae470ca7bf90b0f36e095a5958cdc14f48.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:15951491cafff294e9bb0362a3c8c418866018c16ad95e574747173535e717e5",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/CH2Part1/Variant7c1a2de3303b954b26dd55f872a3d2ae470ca7bf90b0f36e095a5958cdc14f48.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:68a138d0-08b0-621e-df29-89e98f75463c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 4732–4748.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma integral_re_B_mul_exp_add (ν T ε u : ℝ) :
    (∫ t in Set.Icc 0 T, (B ε (↑ν + ↑t) - B ε ↑ν) * (Real.exp (u * t) : ℂ)).re =
    ∫ t in Set.Icc 0 T, ((B ε (↑ν + ↑t)).re - (B ε ↑ν).re) * Real.exp (u * t) := by
  set φ := fun t : ℝ ↦ (B ε (↑ν + ↑t) - B ε ↑ν) * (Real.exp (u * t) : ℂ)
  have hf_integ : IntegrableOn φ (Set.Icc 0 T) := by
    apply Continuous.integrableOn_Icc
    apply Continuous.mul
    · apply Continuous.sub
      · apply Continuous.congr (h := (B.continuous_ofReal ε).comp (continuous_const_add ν))
        intro t; simp [Complex.ofReal_add]
      · exact continuous_const
    · exact Complex.continuous_ofReal.comp (Real.continuous_exp.comp (continuous_const_mul u))
  rw [← Complex.reCLM_apply, ← Complex.reCLM.integral_comp_comm hf_integ]
  apply MeasureTheory.integral_congr_ae
  filter_upwards with t
  simp only [φ, Complex.reCLM_apply, Complex.mul_re, Complex.sub_re, Complex.ofReal_re, Complex.ofReal_im, mul_zero, sub_zero]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/ComplexAnalysis/CH2Part1/Variant7c1a2de3303b954b26dd55f872a3d2ae470ca7bf90b0f36e095a5958cdc14f48.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/CH2Part1/Variant7c1a2de3303b954b26dd55f872a3d2ae470ca7bf90b0f36e095a5958cdc14f48.lean#L4732).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9ef2608fe2b2171a00303ea2d042ad23b0efe93d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
