# RectangleIntegral_tendsTo_UpperU'

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
      "line": 2800,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/7c/7c1a2de3303b954b26dd55f872a3d2ae470ca7bf90b0f36e095a5958cdc14f48.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8cead035-359a-3af4-ea5c-c6acfbb9c2d9",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1934de8e-9c1e-b171-12b2-b85fede2f677",
  "kind": "lemma",
  "lexical_name": "RectangleIntegral_tendsTo_UpperU'",
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
  "slug": "rectangleintegral-tendsto-upperu--e2e25b481c86a9873451b07f",
  "source": {
    "blob": "9ef2608fe2b2171a00303ea2d042ad23b0efe93d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 2818,
    "line": 2800,
    "path": "GRWTSK/Analysis/ComplexAnalysis/CH2Part1/Variant7c1a2de3303b954b26dd55f872a3d2ae470ca7bf90b0f36e095a5958cdc14f48.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e2e25b481c86a9873451b07fc45919e44dd024cf06c9bcd9bc6b05fa656fa69c",
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

Occurrence: `result:1934de8e-9c1e-b171-12b2-b85fede2f677`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 2800–2818.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma RectangleIntegral_tendsTo_UpperU' {σ σ' T : ℝ} {f : ℂ → ℂ}
    (htop : Filter.Tendsto (fun (y : ℝ) ↦ ∫ (x : ℝ) in σ..σ', f (x + y * I)) Filter.atTop (nhds 0))
    (hleft : IntegrableOn (fun (y : ℝ) ↦ f (σ + y * I)) (Set.Ici T))
    (hright : IntegrableOn (fun (y : ℝ) ↦ f (σ' + y * I)) (Set.Ici T)) :
    Filter.Tendsto (fun (U : ℝ) ↦ RectangleIntegral f (σ + I * T) (σ' + I * U)) Filter.atTop
      (nhds (UpperUIntegral f σ σ' T)) := by
  have h_re  (s : ℝ) (t : ℝ) : (s  + I * t).re = s  := by simp
  have h_im  (s : ℝ) (t : ℝ) : (s  + I * t).im = t  := by simp
  have hbot : Filter.Tendsto (fun (_ : ℝ) ↦ ∫ (x : ℝ) in σ..σ', f (x + T * I)) Filter.atTop
      (nhds <| ∫ (x : ℝ) in σ..σ', f (x + T * I)) := tendsto_const_nhds
  have hvert (s : ℝ) (int : IntegrableOn (fun (y : ℝ) ↦ f (s + y * I)) (Set.Ici T)) :
      Filter.Tendsto (fun (U : ℝ) ↦ I * ∫ (y : ℝ) in T..U, f (s + y * I)) Filter.atTop
        (nhds <| I * ∫ (y : ℝ) in Set.Ioi T, f (s + y * I)) := by
    refine (intervalIntegral_tendsto_integral_Ioi T ?_ Filter.tendsto_id).const_smul I
    exact int.mono_set (Set.Ioi_subset_Ici le_rfl)
  have := ((hbot.sub htop).add (hvert σ' hright)).sub (hvert σ hleft)
  simpa only [RectangleIntegral, UpperUIntegral, h_re, h_im, sub_zero,
    ← integral_Ici_eq_integral_Ioi]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/ComplexAnalysis/CH2Part1/Variant7c1a2de3303b954b26dd55f872a3d2ae470ca7bf90b0f36e095a5958cdc14f48.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/CH2Part1/Variant7c1a2de3303b954b26dd55f872a3d2ae470ca7bf90b0f36e095a5958cdc14f48.lean#L2800).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9ef2608fe2b2171a00303ea2d042ad23b0efe93d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
