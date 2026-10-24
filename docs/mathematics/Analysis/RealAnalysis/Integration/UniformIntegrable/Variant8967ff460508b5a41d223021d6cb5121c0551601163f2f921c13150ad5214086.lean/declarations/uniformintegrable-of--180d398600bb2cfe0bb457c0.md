# uniformIntegrable_of'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1fad813cfaa2d00abe57bfca784cc2b341f1b04f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 796,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/89/8967ff460508b5a41d223021d6cb5121c0551601163f2f921c13150ad5214086.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:416be429-32ad-a87a-5e14-dc3fb7627285",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1fa04e65-b244-14b4-4088-954dbea99b02",
  "kind": "theorem",
  "lexical_name": "uniformIntegrable_of'",
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
  "slug": "uniformintegrable-of--180d398600bb2cfe0bb457c0",
  "source": {
    "blob": "1fad813cfaa2d00abe57bfca784cc2b341f1b04f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 831,
    "line": 796,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/UniformIntegrable/Variant8967ff460508b5a41d223021d6cb5121c0551601163f2f921c13150ad5214086.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:180d398600bb2cfe0bb457c0ac5ce4b49f29f4d3f6fd9c02e237a057861a8b08",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/UniformIntegrable/Variant8967ff460508b5a41d223021d6cb5121c0551601163f2f921c13150ad5214086.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1fa04e65-b244-14b4-4088-954dbea99b02`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 796–831.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem uniformIntegrable_of' [IsFiniteMeasure μ] (hp : 1 ≤ p) (hp' : p ≠ ∞)
    (hf : ∀ i, StronglyMeasurable (f i))
    (h : ∀ ε > 0, ∃ C : ℝ≥0,
      ∀ i, eLpNorm ({ x | C ≤ ‖f i x‖₊ }.indicator (f i)) p μ ≤ ε) :
    UniformIntegrable f p μ := by
  refine ⟨unifIntegrable_of hp hp' (fun i => (hf i).aestronglyMeasurable) h, ?_⟩
  obtain ⟨C, hC⟩ := h 1 one_pos
  refine ⟨((C : ℝ≥0∞) * μ Set.univ ^ p.toReal⁻¹ + 1).toNNReal, fun i => ?_⟩
  calc
    eLpNorm (f i) p μ ≤
        eLpNorm ({ x : α | ‖f i x‖₊ < C }.indicator (f i)) p μ +
          eLpNorm ({ x : α | C ≤ ‖f i x‖₊ }.indicator (f i)) p μ := by
      refine le_trans (eLpNorm_mono_enorm (hf i).aestronglyMeasurable fun x => ?_)
        (eLpNorm_add_le hp)
      rw [Pi.add_apply, Set.indicator_apply]
      split_ifs with hx
      · rw [Set.indicator_of_notMem, add_zero]
        simpa using hx
      · rw [Set.indicator_of_mem, zero_add]
        simpa using hx
    _ ≤ (C : ℝ≥0∞) * μ Set.univ ^ p.toReal⁻¹ + 1 := by
      have : ∀ᵐ x ∂μ, ‖{ x : α | ‖f i x‖₊ < C }.indicator (f i) x‖₊ ≤ C := by
        filter_upwards
        simp_rw [nnnorm_indicator_eq_indicator_nnnorm]
        exact Set.indicator_le fun x (hx : _ < _) => hx.le
      refine add_le_add (le_trans (eLpNorm_le_of_ae_bound
        ((hf i).indicator
          ((hf i).nnnorm.measurableSet_lt stronglyMeasurable_const)).aestronglyMeasurable this) ?_)
        (ENNReal.ofReal_one ▸ hC i)
      simp_rw [NNReal.val_eq_coe, ENNReal.ofReal_coe_nnreal, mul_comm]
      exact le_rfl
    _ = ((C : ℝ≥0∞) * μ Set.univ ^ p.toReal⁻¹ + 1 : ℝ≥0∞).toNNReal := by
      rw [coe_toNNReal (by finiteness)]

/-- A sequence of functions `(fₙ)` is uniformly integrable in the probability sense if for all
`ε > 0`, there exists some `C` such that `∫ x in {|fₙ| ≥ C}, fₙ x ∂μ ≤ ε` for all `n`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/UniformIntegrable/Variant8967ff460508b5a41d223021d6cb5121c0551601163f2f921c13150ad5214086.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/UniformIntegrable/Variant8967ff460508b5a41d223021d6cb5121c0551601163f2f921c13150ad5214086.lean#L796).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1fad813cfaa2d00abe57bfca784cc2b341f1b04f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
