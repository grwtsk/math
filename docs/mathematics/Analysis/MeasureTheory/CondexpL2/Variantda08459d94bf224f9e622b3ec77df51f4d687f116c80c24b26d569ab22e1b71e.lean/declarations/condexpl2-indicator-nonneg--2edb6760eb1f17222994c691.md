# condExpL2_indicator_nonneg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2d11291d-15db-eb14-30e3-54e30cb761ca",
  "kind": "theorem",
  "lexical_name": "condExpL2_indicator_nonneg",
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
  "slug": "condexpl2-indicator-nonneg--2edb6760eb1f17222994c691",
  "source": {
    "blob": "cdabb6f6a5f2f247f40ce2d7eaf3d2b0f495e527",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 567,
    "line": 544,
    "path": "GRWTSK/Analysis/MeasureTheory/CondexpL2/Variantda08459d94bf224f9e622b3ec77df51f4d687f116c80c24b26d569ab22e1b71e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2edb6760eb1f17222994c6911ac8c9f518d4f96fa505c06ec6553b379ef58549",
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

Occurrence: `result:2d11291d-15db-eb14-30e3-54e30cb761ca`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 544–567.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem condExpL2_indicator_nonneg (hm : m ≤ m0) (hs : MeasurableSet s) (hμs : μ s ≠ ∞)
    [SigmaFinite (μ.trim hm)] : (0 : α → ℝ) ≤ᵐ[μ]
    condExpL2 ℝ ℝ hm (indicatorConstLp 2 hs hμs 1) := by
  have h : AEStronglyMeasurable[m] (condExpL2 ℝ ℝ hm (indicatorConstLp 2 hs hμs 1) : α → ℝ) μ :=
    aestronglyMeasurable_condExpL2 _ _
  refine EventuallyLE.trans_eq ?_ h.ae_eq_mk.symm
  refine @ae_le_of_ae_le_trim _ _ _ _ _ _ hm (0 : α → ℝ) _ ?_
  refine ae_nonneg_of_forall_setIntegral_nonneg_of_sigmaFinite ?_ ?_
  · rintro t - -
    refine @Integrable.integrableOn _ _ m _ _ _ _ _ ?_
    refine Integrable.trim hm ?_ h.stronglyMeasurable_mk
    rw [integrable_congr h.ae_eq_mk.symm]
    exact integrable_condExpL2_indicator hm hs hμs _
  · intro t ht hμt
    rw [← setIntegral_trim hm h.stronglyMeasurable_mk ht]
    have h_ae :
        ∀ᵐ x ∂μ, x ∈ t → h.mk _ x = (condExpL2 ℝ ℝ hm (indicatorConstLp 2 hs hμs 1) : α → ℝ) x := by
      filter_upwards [h.ae_eq_mk] with x hx using fun _ => hx.symm
    rw [setIntegral_congr_ae (hm t ht) h_ae,
      setIntegral_condExpL2_indicator ht hs ((le_trim hm).trans_lt hμt).ne hμs]
    exact ENNReal.toReal_nonneg

@[deprecated (since := "2025-01-21")] alias condexpL2_indicator_nonneg := condExpL2_indicator_nonneg

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/CondexpL2/Variantda08459d94bf224f9e622b3ec77df51f4d687f116c80c24b26d569ab22e1b71e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/CondexpL2/Variantda08459d94bf224f9e622b3ec77df51f4d687f116c80c24b26d569ab22e1b71e.lean#L544).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cdabb6f6a5f2f247f40ce2d7eaf3d2b0f495e527` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
