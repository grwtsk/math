# tendsto_integral_inv_smul_of_tendsto_uniform

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4f3cfd6d-bd3e-1278-7874-d8917079a2ae",
  "kind": "lemma",
  "lexical_name": "tendsto_integral_inv_smul_of_tendsto_uniform",
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
  "slug": "tendsto-integral-inv-smul-of-tendsto-uniform--1042a9f2f37d61af196bee40",
  "source": {
    "blob": "6949aa03505a1c311f4958a50424faa58050f557",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 129,
    "line": 109,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/FrullaniIntegral/Variantfc2d410f0602067a0eecdc37bd4f6c3a2572149b1969ddaf61b4fdbeb5aace6f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1042a9f2f37d61af196bee40de8c8d72f0c34ef00f9cecaa12229d20779f7a71",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/FrullaniIntegral/Variantfc2d410f0602067a0eecdc37bd4f6c3a2572149b1969ddaf61b4fdbeb5aace6f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4f3cfd6d-bd3e-1278-7874-d8917079a2ae`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 109–129.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma tendsto_integral_inv_smul_of_tendsto_uniform (hf : LocallyIntegrableOn f (Ioi 0)) (ha : 0 < a)
    (hb : 0 < b) {F : Filter ℝ} (hpos : ∀ᶠ t in F, 0 < t) {V : E}
    (huni : ∀ δ > 0, ∀ᶠ t in F, ∀ x ∈ uIoc (a * t) (b * t), ‖f x - V‖ ≤ δ) :
    Tendsto (fun t ↦ ∫ x in (a * t)..(b * t), x⁻¹ • f x) F (𝓝 (log (b / a) • V)) := by
  rw [Metric.tendsto_nhds]
  intro δ hδ
  set C := |log (b / a)| with hC_def
  set δ' := δ / (C + 1)
  filter_upwards [hpos, huni δ' (by positivity)] with t ht_pos hbound
  have hlog_eq : log (b * t / (a * t)) = log (b / a) := by
    rw [mul_div_mul_right b a (ne_of_gt ht_pos)]
  calc dist (∫ x in a * t..b * t, x⁻¹ • f x) (log (b / a) • V)
    _ = ‖(∫ x in a * t..b * t, x⁻¹ • f x) - log (b / a) • V‖ := dist_eq_norm _ _
    _ = ‖(∫ x in a * t..b * t, x⁻¹ • f x) - log (b * t / (a * t)) • V‖ := by rw [hlog_eq]
    _ ≤ δ' * |log (b * t / (a * t))| :=
        norm_integral_inv_smul_sub_le hf (by positivity) (by positivity) (by positivity) hbound
    _ = δ' * C := by rw [hlog_eq]
    _ = δ * (C / (C + 1)) := by ring
    _ < δ * 1 := mul_lt_mul_of_pos_left ((div_lt_one (by positivity)).2 (lt_add_one C)) hδ
    _ = δ := mul_one δ

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/FrullaniIntegral/Variantfc2d410f0602067a0eecdc37bd4f6c3a2572149b1969ddaf61b4fdbeb5aace6f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/FrullaniIntegral/Variantfc2d410f0602067a0eecdc37bd4f6c3a2572149b1969ddaf61b4fdbeb5aace6f.lean#L109).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6949aa03505a1c311f4958a50424faa58050f557` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
