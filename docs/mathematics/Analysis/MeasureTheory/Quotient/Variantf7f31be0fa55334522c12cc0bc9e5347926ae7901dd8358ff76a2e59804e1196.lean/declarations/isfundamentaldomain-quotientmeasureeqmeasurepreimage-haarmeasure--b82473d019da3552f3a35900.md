# IsFundamentalDomain.QuotientMeasureEqMeasurePreimage_HaarMeasure

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b71e0a3f773b720ae422a48d3a93e44211f79906",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 264,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f7/f7f31be0fa55334522c12cc0bc9e5347926ae7901dd8358ff76a2e59804e1196.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3a8576b3-c2e1-4c29-dab7-ac09e5cba54a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8f595472-b0f7-6fc3-1cf0-3578653c5c27",
  "kind": "theorem",
  "lexical_name": "IsFundamentalDomain.QuotientMeasureEqMeasurePreimage_HaarMeasure",
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
  "slug": "isfundamentaldomain-quotientmeasureeqmeasurepreimage-haarmeasure--b82473d019da3552f3a35900",
  "source": {
    "blob": "b71e0a3f773b720ae422a48d3a93e44211f79906",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 292,
    "line": 264,
    "path": "GRWTSK/Analysis/MeasureTheory/Quotient/Variantf7f31be0fa55334522c12cc0bc9e5347926ae7901dd8358ff76a2e59804e1196.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b82473d019da3552f3a3590092d23c25ef18d8030ca452381ca30540690baee0",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Quotient/Variantf7f31be0fa55334522c12cc0bc9e5347926ae7901dd8358ff76a2e59804e1196.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8f595472-b0f7-6fc3-1cf0-3578653c5c27`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 264–292.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsFundamentalDomain.QuotientMeasureEqMeasurePreimage_HaarMeasure {𝓕 : Set G}
    (h𝓕 : IsFundamentalDomain Γ.op 𝓕 ν) [IsMulLeftInvariant μ] [SigmaFinite μ]
    {V : Set (G ⧸ Γ)} (hV : (interior V).Nonempty) (meas_V : MeasurableSet V)
    (hμK : μ V = ν ((π ⁻¹' V) ∩ 𝓕)) (neTopV : μ V ≠ ⊤) :
    QuotientMeasureEqMeasurePreimage ν μ := by
  apply IsMulLeftInvariant.quotientMeasureEqMeasurePreimage_of_set (fund_dom_s := h𝓕)
    (meas_V := meas_V)
  · rw [hμK]
    intro c_eq_zero
    apply IsOpenPosMeasure.open_pos (interior (π ⁻¹' V)) (μ := ν)
    · simp
    · apply Set.Nonempty.mono (preimage_interior_subset_interior_preimage continuous_coinduced_rng)
      apply hV.preimage'
      simp
    · apply measure_mono_null (h := interior_subset)
      apply h𝓕.measure_zero_of_invariant (ht := fun g ↦ QuotientGroup.sound _ _ g)
      exact c_eq_zero
  · exact hμK
  · exact neTopV

variable (K : PositiveCompacts (G ⧸ Γ))

/-- Given a normal subgroup `Γ` of a topological group `G` with Haar measure `μ`, which is also
  right-invariant, and a finite volume fundamental domain `𝓕`, the quotient map to `G ⧸ Γ`,
  properly normalized, satisfies `QuotientMeasureEqMeasurePreimage`. -/
@[to_additive "Given a
normal subgroup `Γ` of an additive topological group `G` with Haar measure `μ`, which is also
right-invariant, and a finite volume fundamental domain `𝓕`, the quotient map to `G ⧸ Γ`,
properly normalized, satisfies `AddQuotientMeasureEqMeasurePreimage`."]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Quotient/Variantf7f31be0fa55334522c12cc0bc9e5347926ae7901dd8358ff76a2e59804e1196.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Quotient/Variantf7f31be0fa55334522c12cc0bc9e5347926ae7901dd8358ff76a2e59804e1196.lean#L264).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b71e0a3f773b720ae422a48d3a93e44211f79906` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
