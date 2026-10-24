# lintegral_iSup_ae

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:55b82d2c-9337-9bb0-9389-651e150a8e57",
  "kind": "theorem",
  "lexical_name": "lintegral_iSup_ae",
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
  "slug": "lintegral-isup-ae--42b01fc0b5e9e88acdec35eb",
  "source": {
    "blob": "27cbbc11f6a2ea41bbb1db79ef0f4b1796f03a4e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 161,
    "line": 138,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Add/Variantf40f2d172f84a2c9d4f864b32637cb38926e1f56ce2745f7d7ea261e743e037d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:42b01fc0b5e9e88acdec35ebf65a955213b06b29db00569223cfc7ea03e14db9",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Add/Variantf40f2d172f84a2c9d4f864b32637cb38926e1f56ce2745f7d7ea261e743e037d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:55b82d2c-9337-9bb0-9389-651e150a8e57`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 138–161.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem lintegral_iSup_ae {f : ℕ → α → ℝ≥0∞} (hf : ∀ n, Measurable (f n))
    (h_mono : ∀ n, ∀ᵐ a ∂μ, f n a ≤ f n.succ a) : ∫⁻ a, ⨆ n, f n a ∂μ = ⨆ n, ∫⁻ a, f n a ∂μ := by
  classical
  let ⟨s, hs⟩ := exists_measurable_superset_of_null (ae_iff.1 (ae_all_iff.2 h_mono))
  let g n a := if a ∈ s then 0 else f n a
  have g_eq_f : ∀ᵐ a ∂μ, ∀ n, g n a = f n a :=
    (measure_eq_zero_iff_ae_notMem.1 hs.2.2).mono fun a ha n => ite_eq_right ha
  calc
    ∫⁻ a, ⨆ n, f n a ∂μ = ∫⁻ a, ⨆ n, g n a ∂μ :=
      lintegral_congr_ae <| g_eq_f.mono fun a ha => by simp only [ha]
    _ = ⨆ n, ∫⁻ a, g n a ∂μ :=
      (lintegral_iSup (fun n => measurable_const.piecewise hs.2.1 (hf n))
        (monotone_nat_of_le_succ fun n a => ?_))
    _ = ⨆ n, ∫⁻ a, f n a ∂μ := by simp only [lintegral_congr_ae (g_eq_f.mono fun _a ha => ha _)]
  simp only [g]
  split_ifs with h
  · rfl
  · have := Set.notMem_subset hs.1 h
    simp only [not_forall, not_le, mem_ofPred_eq, not_exists, not_lt] at this
    exact this n

open Encodable in
/-- **Monotone convergence theorem** for a supremum over a directed family and indexed by a
countable type. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Add/Variantf40f2d172f84a2c9d4f864b32637cb38926e1f56ce2745f7d7ea261e743e037d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Add/Variantf40f2d172f84a2c9d4f864b32637cb38926e1f56ce2745f7d7ea261e743e037d.lean#L138).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `27cbbc11f6a2ea41bbb1db79ef0f4b1796f03a4e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
