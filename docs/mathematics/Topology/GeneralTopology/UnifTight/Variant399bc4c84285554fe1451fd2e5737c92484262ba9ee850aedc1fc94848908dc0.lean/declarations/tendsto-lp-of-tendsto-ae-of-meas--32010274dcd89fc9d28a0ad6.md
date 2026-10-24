# tendsto_Lp_of_tendsto_ae_of_meas

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6e891a5aed639042759ae1e0754704392cd00f26",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 245,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/39/399bc4c84285554fe1451fd2e5737c92484262ba9ee850aedc1fc94848908dc0.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:df0fb1a0-b2be-b41f-6771-f4c75b0e37b3",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6bbfdad4-ff47-8b59-0db0-a767ca83bcdf",
  "kind": "theorem",
  "lexical_name": "tendsto_Lp_of_tendsto_ae_of_meas",
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
  "slug": "tendsto-lp-of-tendsto-ae-of-meas--32010274dcd89fc9d28a0ad6",
  "source": {
    "blob": "6e891a5aed639042759ae1e0754704392cd00f26",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 318,
    "line": 245,
    "path": "GRWTSK/Topology/GeneralTopology/UnifTight/Variant399bc4c84285554fe1451fd2e5737c92484262ba9ee850aedc1fc94848908dc0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:32010274dcd89fc9d28a0ad6a4d6ed3c87487cd09cc893304a2376d173069a5c",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/UnifTight/Variant399bc4c84285554fe1451fd2e5737c92484262ba9ee850aedc1fc94848908dc0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6bbfdad4-ff47-8b59-0db0-a767ca83bcdf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 245–318.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem tendsto_Lp_of_tendsto_ae_of_meas (hp : 1 ≤ p) (hp' : p ≠ ∞)
    {f : ℕ → α → β} {g : α → β} (hf : ∀ n, StronglyMeasurable (f n)) (hg : StronglyMeasurable g)
    (hg' : MemLp g p μ) (hui : UnifIntegrable f p μ) (hut : UnifTight f p μ)
    (hfg : ∀ᵐ x ∂μ, Tendsto (fun n => f n x) atTop (𝓝 (g x))) :
    Tendsto (fun n => eLpNorm (f n - g) p μ) atTop (𝓝 0) := by
  rw [ENNReal.tendsto_atTop_zero]
  intro ε hε
  by_cases hfinε : ε ≠ ∞; swap
  · rw [not_ne_iff.mp hfinε]; exact ⟨0, fun n _ => le_top⟩
  by_cases hμ : μ = 0
  · rw [hμ]; use 0; intro n _; rw [eLpNorm_measure_zero]; exact zero_le ε
  have hε' : 0 < ε / 3 := ENNReal.div_pos hε.ne' (ofNat_ne_top)
  -- use tightness to divide the domain into interior and exterior
  obtain ⟨Eg, hmEg, hμEg, hgε⟩ := MemLp.exists_eLpNorm_indicator_compl_lt hp' hg' hε'.ne'
  obtain ⟨Ef, hmEf, hμEf, hfε⟩ := hut.exists_measurableSet_indicator hε'.ne'
  have hmE := hmEf.union hmEg
  have hfmE := (measure_union_le Ef Eg).trans_lt (add_lt_top.mpr ⟨hμEf, hμEg⟩)
  set E : Set α := Ef ∪ Eg
  -- use uniform integrability to get control on the limit over E
  have hgE' := MemLp.restrict E hg'
  have huiE := hui.restrict  E
  have hfgE : (∀ᵐ x ∂(μ.restrict E), Tendsto (fun n => f n x) atTop (𝓝 (g x))) :=
    ae_restrict_of_ae hfg
  -- `tendsto_Lp_of_tendsto_ae_of_meas` needs to
  -- synthesize an argument `[IsFiniteMeasure (μ.restrict E)]`.
  -- It is enough to have in the context a term of `Fact (μ E < ∞)`, which is our `ffmE` below,
  -- which is automatically fed into `Restrict.isFiniteInstance`.
  have ffmE := Fact.mk hfmE
  have hInner := tendsto_Lp_finite_of_tendsto_ae_of_meas hp hp' hf hg hgE' huiE hfgE
  rw [ENNReal.tendsto_atTop_zero] at hInner
  -- get a sufficiently large N for given ε, and consider any n ≥ N
  obtain ⟨N, hfngε⟩ := hInner (ε / 3) hε'
  use N; intro n hn
  -- get interior estimates
  have hmfngE : AEStronglyMeasurable _ μ := (((hf n).sub hg).indicator hmE).aestronglyMeasurable
  have hfngEε := calc
    eLpNorm (E.indicator (f n - g)) p μ
      = eLpNorm (f n - g) p (μ.restrict E) := eLpNorm_indicator_eq_eLpNorm_restrict hmE
    _ ≤ ε / 3                            := hfngε n hn
  -- get exterior estimates
  have hmgEc : AEStronglyMeasurable _ μ := (hg.indicator hmE.compl).aestronglyMeasurable
  have hgEcε := calc
    eLpNorm (Eᶜ.indicator g) p μ
      ≤ eLpNorm (Efᶜ.indicator (Egᶜ.indicator g)) p μ := by
        unfold E; rw [compl_union, ← indicator_indicator]
    _ ≤ eLpNorm (Egᶜ.indicator g) p μ := eLpNorm_indicator_le _
    _ ≤ ε / 3 := hgε.le
  have hmfnEc : AEStronglyMeasurable _ μ := ((hf n).indicator hmE.compl).aestronglyMeasurable
  have hfnEcε : eLpNorm (Eᶜ.indicator (f n)) p μ ≤ ε / 3 := calc
    eLpNorm (Eᶜ.indicator (f n)) p μ
      ≤ eLpNorm (Egᶜ.indicator (Efᶜ.indicator (f n))) p μ := by
        unfold E; rw [compl_union, inter_comm, ← indicator_indicator]
    _ ≤ eLpNorm (Efᶜ.indicator (f n)) p μ := eLpNorm_indicator_le _
    _ ≤ ε / 3 := hfε n
  have hmfngEc : AEStronglyMeasurable _ μ :=
    (((hf n).sub hg).indicator hmE.compl).aestronglyMeasurable
  have hfngEcε := calc
    eLpNorm (Eᶜ.indicator (f n - g)) p μ
      = eLpNorm (Eᶜ.indicator (f n) - Eᶜ.indicator g) p μ := by
        rw [(Eᶜ.indicator_sub' _ _)]
    _ ≤ eLpNorm (Eᶜ.indicator (f n)) p μ + eLpNorm (Eᶜ.indicator g) p μ := by
        apply eLpNorm_sub_le (by assumption) (by assumption) hp
    _ ≤ ε / 3 + ε / 3 := add_le_add hfnEcε hgEcε
  -- finally, combine interior and exterior estimates
  calc
    eLpNorm (f n - g) p μ
      = eLpNorm (Eᶜ.indicator (f n - g) + E.indicator (f n - g)) p μ := by
        congr; exact (E.indicator_compl_add_self _).symm
    _ ≤ eLpNorm (indicator Eᶜ (f n - g)) p μ + eLpNorm (indicator E (f n - g)) p μ := by
        apply eLpNorm_add_le (by assumption) (by assumption) hp
    _ ≤ (ε / 3 + ε / 3) + ε / 3 := add_le_add hfngEcε hfngEε
    _ = ε := by simp only [ENNReal.add_thirds]

/-- Lemma used in `tendsto_Lp_of_tendsto_ae`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/UnifTight/Variant399bc4c84285554fe1451fd2e5737c92484262ba9ee850aedc1fc94848908dc0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/UnifTight/Variant399bc4c84285554fe1451fd2e5737c92484262ba9ee850aedc1fc94848908dc0.lean#L245).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6e891a5aed639042759ae1e0754704392cd00f26` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
