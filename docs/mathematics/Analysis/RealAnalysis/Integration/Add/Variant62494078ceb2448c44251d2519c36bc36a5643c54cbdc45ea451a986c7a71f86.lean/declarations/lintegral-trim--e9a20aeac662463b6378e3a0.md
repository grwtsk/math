# lintegral_trim

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:24fee6e3-c928-4cb2-6f3c-b9739054e627",
  "kind": "theorem",
  "lexical_name": "lintegral_trim",
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
  "slug": "lintegral-trim--e9a20aeac662463b6378e3a0",
  "source": {
    "blob": "c5cb1e78b786860849dba2df9dc9fd9f8450f213",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 451,
    "line": 433,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Add/Variant62494078ceb2448c44251d2519c36bc36a5643c54cbdc45ea451a986c7a71f86.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e9a20aeac662463b6378e3a0ddaf5e2f69af26e00ab65cd3d802fd889acd8e85",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Add/Variant62494078ceb2448c44251d2519c36bc36a5643c54cbdc45ea451a986c7a71f86.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:24fee6e3-c928-4cb2-6f3c-b9739054e627`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 433–451.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem lintegral_trim {μ : Measure α} (hm : m ≤ m0) {f : α → ℝ≥0∞} (hf : Measurable[m] f) :
    ∫⁻ a, f a ∂μ.trim hm = ∫⁻ a, f a ∂μ := by
  refine
    @Measurable.ennreal_induction α m (fun f => ∫⁻ a, f a ∂μ.trim hm = ∫⁻ a, f a ∂μ) ?_ ?_ ?_ f hf
  · intro c s hs
    rw [lintegral_indicator hs, lintegral_indicator (hm s hs), setLIntegral_const,
      setLIntegral_const]
    suffices h_trim_s : μ.trim hm s = μ s by rw [h_trim_s]
    exact trim_measurableSet_eq hm hs
  · intro f g _ hf _ hf_prop hg_prop
    have h_m := lintegral_add_left (μ := Measure.trim μ hm) hf g
    have h_m0 := lintegral_add_left (μ := μ) (Measurable.mono hf hm le_rfl) g
    rwa [hf_prop, hg_prop, ← h_m0] at h_m
  · intro f hf hf_mono hf_prop
    rw [lintegral_iSup hf hf_mono]
    rw [lintegral_iSup (fun n => Measurable.mono (hf n) hm le_rfl) hf_mono]
    congr with n
    exact hf_prop n

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Add/Variant62494078ceb2448c44251d2519c36bc36a5643c54cbdc45ea451a986c7a71f86.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Add/Variant62494078ceb2448c44251d2519c36bc36a5643c54cbdc45ea451a986c7a71f86.lean#L433).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c5cb1e78b786860849dba2df9dc9fd9f8450f213` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
