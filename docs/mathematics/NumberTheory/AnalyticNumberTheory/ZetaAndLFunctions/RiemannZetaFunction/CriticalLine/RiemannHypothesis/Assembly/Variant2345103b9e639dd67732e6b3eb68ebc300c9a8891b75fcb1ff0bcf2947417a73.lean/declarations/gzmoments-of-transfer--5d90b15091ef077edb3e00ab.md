# gzMoments_of_transfer

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ba90f83e-0ca0-82de-4295-95bd45a07e8e",
  "kind": "theorem",
  "lexical_name": "gzMoments_of_transfer",
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
  "slug": "gzmoments-of-transfer--5d90b15091ef077edb3e00ab",
  "source": {
    "blob": "800f4ced3575e62484eaaef1af4a74a32d280f0f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 77,
    "line": 45,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Assembly/Variant2345103b9e639dd67732e6b3eb68ebc300c9a8891b75fcb1ff0bcf2947417a73.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5d90b15091ef077edb3e00ab0fccc7817d449e614781790bd6a7b3456ab55be1",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Assembly/Variant2345103b9e639dd67732e6b3eb68ebc300c9a8891b75fcb1ff0bcf2947417a73.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ba90f83e-0ca0-82de-4295-95bd45a07e8e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 45–77.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem gzMoments_of_transfer (Z : ZeroConfig) (Pf : ℝ → Params) (F : CoeffFamily) {κ : ℝ}
    (hκ : 0 ≤ κ) (hCM : CoeffMoments Z Pf F κ) (hTT : XiTraceTransfer Z Pf F) :
    GzMoments Z Pf κ := by
  obtain ⟨hMtr, hMfr⟩ := hCM
  obtain ⟨hTtr, hTfr⟩ := hTT
  refine ⟨fun δ hδ => ?_, fun δ hδ => ?_⟩
  · have hδ2 : 0 < δ / 2 := by linarith
    filter_upwards [hMtr (δ / 2) hδ2, hTtr (δ / 2) hδ2] with T hM hT
    have h1 := hM.1
    have h2 := (abs_le.mp hT).1
    linarith
  · -- choose η with (1+η)(κ+η) + η ≤ κ + δ: η := min 1 (δ / (κ + 3)) works since
    -- (1+η)(κ+η)+η = κ + η(κ + 1 + η) + η ≤ κ + η(κ+3) for η ≤ 1.
    set η : ℝ := min 1 (δ / (κ + 3)) with hη
    have hη0 : 0 < η := lt_min zero_lt_one (div_pos hδ (by linarith))
    have hη1 : η ≤ 1 := min_le_left _ _
    have hηδ : η * (κ + 3) ≤ δ := by
      have : η ≤ δ / (κ + 3) := min_le_right _ _
      rwa [le_div_iff₀ (by linarith)] at this
    filter_upwards [hMfr η hη0, hTfr η hη0, hMtr 1 zero_lt_one] with T hM hT hpos
    have hN0 : 0 ≤ (Z.N T (2 * T) : ℝ) := Nat.cast_nonneg _
    have hfrM0 : 0 ≤ frobSq ((Pf T).hat T ((Pf T).GpC T (F.c T))) := frobSq_nonneg _
    calc frobSq ((Pf T).hat T (Z.Gz (Pf T) T))
        ≤ (1 + η) * frobSq ((Pf T).hat T ((Pf T).GpC T (F.c T))) + η * (Z.N T (2 * T) : ℝ) := hT
      _ ≤ (1 + η) * ((κ + η) * (Z.N T (2 * T) : ℝ)) + η * (Z.N T (2 * T) : ℝ) := by
          gcongr
      _ = (κ + (η * (κ + 1 + η) + η)) * (Z.N T (2 * T) : ℝ) := by ring
      _ ≤ (κ + δ) * (Z.N T (2 * T) : ℝ) := by
          apply mul_le_mul_of_nonneg_right _ hN0
          nlinarith

/-- κ in CoeffMoments is automatically ≥ 0: ‖M̂ᵀ‖_F² ≥ 0 and N(T,2T) → ∞ (H-RvM), so (κ+δ)N ≥ 0 for
every δ > 0 at some large T.  (Removes the "0 ≤ κ" side input of gzMoments_of_transfer downstream.) -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Assembly/Variant2345103b9e639dd67732e6b3eb68ebc300c9a8891b75fcb1ff0bcf2947417a73.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Assembly/Variant2345103b9e639dd67732e6b3eb68ebc300c9a8891b75fcb1ff0bcf2947417a73.lean#L45).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `800f4ced3575e62484eaaef1af4a74a32d280f0f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
