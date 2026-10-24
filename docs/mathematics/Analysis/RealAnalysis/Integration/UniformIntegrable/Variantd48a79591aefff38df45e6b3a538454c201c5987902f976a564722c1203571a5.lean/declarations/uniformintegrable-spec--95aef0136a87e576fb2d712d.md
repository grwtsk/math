# UniformIntegrable.spec'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5a497116-2fb0-af74-9bd5-b9f05ebf8314",
  "kind": "theorem",
  "lexical_name": "UniformIntegrable.spec'",
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
  "slug": "uniformintegrable-spec--95aef0136a87e576fb2d712d",
  "source": {
    "blob": "313652b796b799acabeca063febbf5151bb2cc3a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 897,
    "line": 859,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/UniformIntegrable/Variantd48a79591aefff38df45e6b3a538454c201c5987902f976a564722c1203571a5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:95aef0136a87e576fb2d712df664ebb3d198defffb7992870ca290fc67c77a31",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/UniformIntegrable/Variantd48a79591aefff38df45e6b3a538454c201c5987902f976a564722c1203571a5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5a497116-2fb0-af74-9bd5-b9f05ebf8314`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 859–897.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem UniformIntegrable.spec' (hp : p ≠ 0) (hp' : p ≠ ∞) (hf : ∀ i, StronglyMeasurable (f i))
    (hfu : UniformIntegrable f p μ) {ε : ℝ≥0∞} (hε : 0 < ε) :
    ∃ C : ℝ≥0, ∀ i, eLpNorm ({ x | C ≤ ‖f i x‖₊ }.indicator (f i)) p μ ≤ ε := by
  obtain ⟨hfu, M, hM⟩ := hfu
  obtain ⟨δ, hδpos, hδ⟩ := (unifIntegrable_iff.1 hfu) ε hε
  obtain ⟨C, hC⟩ : ∃ C : ℝ≥0, ∀ i, μ { x | C ≤ ‖f i x‖₊ } ≤ δ := by
    by_contra! hcon
    choose ℐ hℐ using hcon
    have : ∀ C : ℝ≥0, (ofNNReal C) * δ ^ (1 / p.toReal) ≤ eLpNorm (f (ℐ C)) p μ := by
      intro C
      calc
        C • (δ : ℝ≥0∞) ^ (1 / p.toReal) ≤ C • μ { x | C ≤ ‖f (ℐ C) x‖₊ } ^ (1 / p.toReal) := by
          rw [smul_def, smul_def, smul_eq_mul, smul_eq_mul]
          refine mul_le_mul' le_rfl
            (rpow_le_rpow (hℐ C).le (one_div_nonneg.2 toReal_nonneg))
        _ ≤ eLpNorm ({ x | C ≤ ‖f (ℐ C) x‖₊ }.indicator (f (ℐ C))) p μ := by
          refine le_eLpNorm_of_bddBelow hp hp' _
            (measurableSet_le measurable_const (hf _).nnnorm.measurable)
            ((hf _).indicator
              (measurableSet_le measurable_const (hf _).nnnorm.measurable)).aestronglyMeasurable
            (Eventually.of_forall fun x hx => ?_)
          rwa [nnnorm_indicator_eq_indicator_nnnorm, Set.indicator_of_mem hx]
        _ ≤ eLpNorm (f (ℐ C)) p μ :=
          eLpNorm_indicator_le _ (measurableSet_le measurable_const (hf _).nnnorm.measurable)
    specialize this (2 * max M 1 * δ⁻¹ ^ (1 / p.toReal)).toNNReal
    replace this := this.trans (hM _)
    rw [toNNReal_mul, toNNReal_mul, coe_mul, coe_mul, toNNReal_coe (max M 1),
      coe_toNNReal ofNat_ne_top, coe_toNNReal _] at this; swap
    · exact rpow_ne_top_of_nonneg (by positivity) (by finiteness)
    rw [mul_assoc, ← mul_rpow_of_nonneg δ⁻¹ δ (by positivity),
      ENNReal.inv_mul_cancel hδpos.ne' (ne_top_of_lt (hℐ 0)), one_rpow, mul_one,
      ← coe_two, ← coe_mul, coe_le_coe, two_mul] at this
    replace this := (add_le_add (le_max_left M 1) (le_max_right M 1)).trans this
    exact not_lt_of_ge this (lt_add_one M)
  refine ⟨C, fun i ↦ (hδ i { x | C ≤ ‖f i x‖₊ } (hC i)).trans_eq' ?_⟩
  have hs : MeasurableSet {x | C ≤ ‖f i x‖₊} :=
    measurableSet_le measurable_const (hf i).nnnorm.measurable
  exact (eLpNorm_indicator_eq_eLpNorm_restrict hs).symm

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/UniformIntegrable/Variantd48a79591aefff38df45e6b3a538454c201c5987902f976a564722c1203571a5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/UniformIntegrable/Variantd48a79591aefff38df45e6b3a538454c201c5987902f976a564722c1203571a5.lean#L859).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `313652b796b799acabeca063febbf5151bb2cc3a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
