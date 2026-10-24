# ae_bdd_liminf_atTop_rpow_of_eLpNorm_bdd

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "db81327ad7a9cc78cdb2684da7668ca57deea373",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1039,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/9b/9bb036aeeeb005874d4ebcac5af8a96e01b2b74ddc653ce582984204b20df735.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:90d21e96-e894-f4e4-5e39-7dedbe6bcbd5",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c13c3105-5568-cc40-052f-8b269ea71f15",
  "kind": "theorem",
  "lexical_name": "ae_bdd_liminf_atTop_rpow_of_eLpNorm_bdd",
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
  "slug": "ae-bdd-liminf-attop-rpow-of-elpnorm-bdd--5402464b554eff2d942060f4",
  "source": {
    "blob": "db81327ad7a9cc78cdb2684da7668ca57deea373",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1063,
    "line": 1039,
    "path": "GRWTSK/Analysis/MeasureTheory/Basic/Variant9bb036aeeeb005874d4ebcac5af8a96e01b2b74ddc653ce582984204b20df735.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5402464b554eff2d942060f4cbc8df23b19309d9731c1bbcee9f99bc2a948649",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Basic/Variant9bb036aeeeb005874d4ebcac5af8a96e01b2b74ddc653ce582984204b20df735.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c13c3105-5568-cc40-052f-8b269ea71f15`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1039–1063.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ae_bdd_liminf_atTop_rpow_of_eLpNorm_bdd {p : ℝ≥0∞} {f : ℕ → α → E}
    (hbdd : ∀ n, eLpNorm (f n) p μ ≤ R) :
    ∀ᵐ x ∂μ, liminf (fun n => ‖f n x‖ₑ ^ p.toReal) atTop < ∞ := by
  have hfae n : AEStronglyMeasurable (f n) μ :=
    aestronglyMeasurable_of_eLpNorm_ne_top ((hbdd n).trans_lt (by simp)).ne
  by_cases hp0 : p.toReal = 0
  · simp only [hp0, ENNReal.rpow_zero]
    filter_upwards with _
    rw [liminf_const (1 : ℝ≥0∞)]
    exact ENNReal.one_lt_top
  have hp : p ≠ 0 := fun h => by simp [h] at hp0
  have hp' : p ≠ ∞ := fun h => by simp [h] at hp0
  refine
    ae_lt_top' (.liminf fun n => (hfae n).nnnorm.aemeasurable.coe_nnreal_ennreal.pow_const p.toReal)
      (lt_of_le_of_lt
          (lintegral_liminf_le' fun n => (hfae n).nnnorm.aemeasurable.coe_nnreal_ennreal.pow_const
            p.toReal)
          (lt_of_le_of_lt ?_ (by finiteness : (R : ℝ≥0∞) ^ p.toReal < ∞))).ne
  simp_rw [eLpNorm_eq_lintegral_rpow_enorm_toReal hp hp'
    (hfae _), one_div] at hbdd
  simp_rw [liminf_eq, eventually_atTop]
  exact
    sSup_le fun b ⟨a, ha⟩ =>
      (ha a le_rfl).trans ((ENNReal.rpow_inv_le_iff (ENNReal.toReal_pos hp hp')).1 (hbdd _))

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Basic/Variant9bb036aeeeb005874d4ebcac5af8a96e01b2b74ddc653ce582984204b20df735.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Basic/Variant9bb036aeeeb005874d4ebcac5af8a96e01b2b74ddc653ce582984204b20df735.lean#L1039).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `db81327ad7a9cc78cdb2684da7668ca57deea373` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
