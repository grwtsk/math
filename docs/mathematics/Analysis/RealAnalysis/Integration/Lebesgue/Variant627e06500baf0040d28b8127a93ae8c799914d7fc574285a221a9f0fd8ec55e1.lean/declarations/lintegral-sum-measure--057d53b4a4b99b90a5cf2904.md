# lintegral_sum_measure

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8fc3239b-77e4-a3ab-1c2c-6edb7d7c895f",
  "kind": "theorem",
  "lexical_name": "lintegral_sum_measure",
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
  "slug": "lintegral-sum-measure--057d53b4a4b99b90a5cf2904",
  "source": {
    "blob": "36852aae1b786e2c3955ba9e963b7eae7ca6e3f3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 599,
    "line": 583,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Lebesgue/Variant627e06500baf0040d28b8127a93ae8c799914d7fc574285a221a9f0fd8ec55e1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:057d53b4a4b99b90a5cf2904163573790e2d90bb77a3963a640797021429d198",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Lebesgue/Variant627e06500baf0040d28b8127a93ae8c799914d7fc574285a221a9f0fd8ec55e1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8fc3239b-77e4-a3ab-1c2c-6edb7d7c895f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 583–599.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem lintegral_sum_measure {m : MeasurableSpace α} {ι} (f : α → ℝ≥0∞) (μ : ι → Measure α) :
    ∫⁻ a, f a ∂Measure.sum μ = ∑' i, ∫⁻ a, f a ∂μ i := by
  simp only [lintegral, iSup_subtype', SimpleFunc.lintegral_sum, ENNReal.tsum_eq_iSup_sum]
  rw [iSup_comm]
  congr; funext s
  induction' s using Finset.induction_on with i s hi hs;
  · apply bot_unique
    simp
  simp only [Finset.sum_insert hi, ← hs]
  refine' (ENNReal.iSup_add_iSup _).symm
  intro φ ψ
  exact
    ⟨⟨φ ⊔ ψ, fun x => sup_le (φ.2 x) (ψ.2 x)⟩,
      add_le_add (SimpleFunc.lintegral_mono le_sup_left le_rfl)
        (Finset.sum_le_sum fun j _ => SimpleFunc.lintegral_mono le_sup_right le_rfl)⟩
#align measure_theory.lintegral_sum_measure MeasureTheory.lintegral_sum_measure

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Lebesgue/Variant627e06500baf0040d28b8127a93ae8c799914d7fc574285a221a9f0fd8ec55e1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Lebesgue/Variant627e06500baf0040d28b8127a93ae8c799914d7fc574285a221a9f0fd8ec55e1.lean#L583).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `36852aae1b786e2c3955ba9e963b7eae7ca6e3f3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
