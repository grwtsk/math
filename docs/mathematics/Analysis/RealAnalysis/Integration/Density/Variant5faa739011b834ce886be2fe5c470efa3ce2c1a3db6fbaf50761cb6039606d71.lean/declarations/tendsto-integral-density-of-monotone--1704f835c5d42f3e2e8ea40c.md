# tendsto_integral_density_of_monotone

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "daa481c381282b67d7a92dad1fe0e7877af5cd7e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 592,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/5f/5faa739011b834ce886be2fe5c470efa3ce2c1a3db6fbaf50761cb6039606d71.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:abd496d0-222f-e53b-3c15-89838b41a8c3",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c6793b9e-f42a-df92-5979-594c98cbec04",
  "kind": "lemma",
  "lexical_name": "tendsto_integral_density_of_monotone",
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
  "slug": "tendsto-integral-density-of-monotone--1704f835c5d42f3e2e8ea40c",
  "source": {
    "blob": "daa481c381282b67d7a92dad1fe0e7877af5cd7e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 608,
    "line": 592,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Density/Variant5faa739011b834ce886be2fe5c470efa3ce2c1a3db6fbaf50761cb6039606d71.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1704f835c5d42f3e2e8ea40c3223cf69fdc09dbad0164a8177fdc554604ce7f2",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Density/Variant5faa739011b834ce886be2fe5c470efa3ce2c1a3db6fbaf50761cb6039606d71.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c6793b9e-f42a-df92-5979-594c98cbec04`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 592–608.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma tendsto_integral_density_of_monotone (hκν : fst κ ≤ ν) [IsFiniteKernel ν]
    (a : α) (seq : ℕ → Set β) (hseq : Monotone seq) (hseq_iUnion : ⋃ i, seq i = univ)
    (hseq_meas : ∀ m, MeasurableSet (seq m)) :
    Tendsto (fun m ↦ ∫ x, density κ ν a x (seq m) ∂(ν a)) atTop (𝓝 ((κ a).real univ)) := by
  have : IsFiniteKernel κ := isFiniteKernel_of_isFiniteKernel_fst (h := isFiniteKernel_of_le hκν)
  simp_rw [integral_density hκν a (hseq_meas _)]
  have h_cont := ENNReal.continuousOn_toReal.continuousAt (x := κ a univ) ?_
  swap
  · rw [mem_nhds_iff]
    refine ⟨Iio (κ a univ + 1), fun x hx ↦ ne_top_of_lt (?_ : x < κ a univ + 1), isOpen_Iio, ?_⟩
    · simpa using hx
    · simp only [mem_Iio]
      exact ENNReal.lt_add_right (measure_ne_top _ _) one_ne_zero
  refine h_cont.tendsto.comp ?_
  convert tendsto_measure_iUnion_atTop (monotone_const.set_prod hseq)
  rw [← prod_iUnion, hseq_iUnion, univ_prod_univ]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Density/Variant5faa739011b834ce886be2fe5c470efa3ce2c1a3db6fbaf50761cb6039606d71.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Density/Variant5faa739011b834ce886be2fe5c470efa3ce2c1a3db6fbaf50761cb6039606d71.lean#L592).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `daa481c381282b67d7a92dad1fe0e7877af5cd7e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
