# setLIntegral_nnnorm_condExpL2_indicator_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4da90dc5-2012-e949-03cb-e028cbc41663",
  "kind": "theorem",
  "lexical_name": "setLIntegral_nnnorm_condExpL2_indicator_le",
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
  "slug": "setlintegral-nnnorm-condexpl2-indicator-le--e02c2e7fe7a7ce9d16bedea7",
  "source": {
    "blob": "cdabb6f6a5f2f247f40ce2d7eaf3d2b0f495e527",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 387,
    "line": 369,
    "path": "GRWTSK/Analysis/MeasureTheory/CondexpL2/Variantda08459d94bf224f9e622b3ec77df51f4d687f116c80c24b26d569ab22e1b71e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e02c2e7fe7a7ce9d16bedea76a8f9543880168d07e2f9a01053b7890d04b7428",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/CondexpL2/Variantda08459d94bf224f9e622b3ec77df51f4d687f116c80c24b26d569ab22e1b71e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4da90dc5-2012-e949-03cb-e028cbc41663`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 369–387.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem setLIntegral_nnnorm_condExpL2_indicator_le (hm : m ≤ m0) (hs : MeasurableSet s)
    (hμs : μ s ≠ ∞) (x : E') {t : Set α} (ht : MeasurableSet[m] t) (hμt : μ t ≠ ∞) :
    ∫⁻ a in t, ‖(condExpL2 E' 𝕜 hm (indicatorConstLp 2 hs hμs x) : α → E') a‖₊ ∂μ ≤
    μ (s ∩ t) * ‖x‖₊ :=
  calc
    ∫⁻ a in t, ‖(condExpL2 E' 𝕜 hm (indicatorConstLp 2 hs hμs x) : α → E') a‖₊ ∂μ =
        ∫⁻ a in t, ‖(condExpL2 ℝ ℝ hm (indicatorConstLp 2 hs hμs 1) : α → ℝ) a • x‖₊ ∂μ :=
      setLIntegral_congr_fun (hm t ht)
        ((condExpL2_indicator_ae_eq_smul 𝕜 hm hs hμs x).mono fun a ha _ => by rw [ha])
    _ = (∫⁻ a in t, ‖(condExpL2 ℝ ℝ hm (indicatorConstLp 2 hs hμs 1) : α → ℝ) a‖₊ ∂μ) * ‖x‖₊ := by
      simp_rw [nnnorm_smul, ENNReal.coe_mul]
      rw [lintegral_mul_const]
      exact (Lp.stronglyMeasurable _).enorm (ε := ℝ)
    _ ≤ μ (s ∩ t) * ‖x‖₊ :=
      mul_le_mul_right' (lintegral_nnnorm_condExpL2_indicator_le_real hs hμs ht hμt) _

@[deprecated (since := "2025-01-21")]
alias setLIntegral_nnnorm_condexpL2_indicator_le := setLIntegral_nnnorm_condExpL2_indicator_le

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/CondexpL2/Variantda08459d94bf224f9e622b3ec77df51f4d687f116c80c24b26d569ab22e1b71e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/CondexpL2/Variantda08459d94bf224f9e622b3ec77df51f4d687f116c80c24b26d569ab22e1b71e.lean#L369).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cdabb6f6a5f2f247f40ce2d7eaf3d2b0f495e527` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
