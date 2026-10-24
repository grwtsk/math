# measure_inter_notConvergentSeq_eq_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5972e8af-f658-2425-dcf4-3f55b461fc40",
  "kind": "theorem",
  "lexical_name": "measure_inter_notConvergentSeq_eq_zero",
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
  "slug": "measure-inter-notconvergentseq-eq-zero--41256ec19e58608685c9eff5",
  "source": {
    "blob": "ce91ab5496e5e4d3e3db582666c8cd7575d7ff20",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 77,
    "line": 65,
    "path": "GRWTSK/Analysis/MeasureTheory/Egorov/Variant8ab1ceb39cdceae4e7d5b942b05f4be7d3f1f4c26fb171820644fa18b6480867.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:41256ec19e58608685c9eff584cc7172de29a70eebf0de5ecb3a84a986c7a2d3",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Egorov/Variant8ab1ceb39cdceae4e7d5b942b05f4be7d3f1f4c26fb171820644fa18b6480867.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5972e8af-f658-2425-dcf4-3f55b461fc40`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 65–77.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem measure_inter_notConvergentSeq_eq_zero [SemilatticeSup ι] [Nonempty ι]
    (hfg : ∀ᵐ x ∂μ, x ∈ s → Tendsto (fun n => f n x) atTop (𝓝 (g x))) (n : ℕ) :
    μ (s ∩ ⋂ j, notConvergentSeq f g n j) = 0 := by
  simp_rw [EMetric.tendsto_atTop, ae_iff] at hfg
  rw [← nonpos_iff_eq_zero, ← hfg]
  refine measure_mono fun x => ?_
  simp only [Set.mem_inter_iff, Set.mem_iInter, mem_notConvergentSeq_iff]
  push Not
  rintro ⟨hmem, hx⟩
  refine ⟨hmem, (n : ℝ≥0∞)⁻¹, by simp, fun N => ?_⟩
  obtain ⟨n, hn₁, hn₂⟩ := hx N
  exact ⟨n, hn₁, hn₂.le⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Egorov/Variant8ab1ceb39cdceae4e7d5b942b05f4be7d3f1f4c26fb171820644fa18b6480867.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Egorov/Variant8ab1ceb39cdceae4e7d5b942b05f4be7d3f1f4c26fb171820644fa18b6480867.lean#L65).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ce91ab5496e5e4d3e3db582666c8cd7575d7ff20` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
