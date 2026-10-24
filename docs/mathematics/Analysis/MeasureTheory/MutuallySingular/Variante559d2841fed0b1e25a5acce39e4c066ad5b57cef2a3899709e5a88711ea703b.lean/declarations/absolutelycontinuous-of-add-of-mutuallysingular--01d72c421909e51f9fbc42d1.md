# absolutelyContinuous_of_add_of_mutuallySingular

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bb4b82de-b73d-9195-2730-77c99b412a5f",
  "kind": "lemma",
  "lexical_name": "absolutelyContinuous_of_add_of_mutuallySingular",
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
  "slug": "absolutelycontinuous-of-add-of-mutuallysingular--01d72c421909e51f9fbc42d1",
  "source": {
    "blob": "49ec7d49b0b1d2fcfb39c474478a828b6f3a3f30",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 177,
    "line": 161,
    "path": "GRWTSK/Analysis/MeasureTheory/MutuallySingular/Variante559d2841fed0b1e25a5acce39e4c066ad5b57cef2a3899709e5a88711ea703b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:01d72c421909e51f9fbc42d1719dddef8c5f08b4d13ed71a2bbb6bab65b6e4a2",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/MutuallySingular/Variante559d2841fed0b1e25a5acce39e4c066ad5b57cef2a3899709e5a88711ea703b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bb4b82de-b73d-9195-2730-77c99b412a5f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 161–177.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma absolutelyContinuous_of_add_of_mutuallySingular {ν₁ ν₂ : Measure α}
    (h : μ ≪ ν₁ + ν₂) (h_ms : μ ⟂ₘ ν₂) : μ ≪ ν₁ := by
  refine AbsolutelyContinuous.mk fun s hs hs_zero ↦ ?_
  let t := h_ms.nullSet
  have ht : MeasurableSet t := h_ms.measurableSet_nullSet
  have htμ : μ t = 0 := h_ms.measure_nullSet
  have htν₂ : ν₂ tᶜ = 0 := h_ms.measure_compl_nullSet
  have : μ s = μ (s ∩ tᶜ) := by
    conv_lhs => rw [← inter_union_compl s t]
    rw [measure_union, measure_inter_null_of_null_right _ htμ, zero_add]
    · exact (disjoint_compl_right.inter_right' _ ).inter_left' _
    · exact hs.inter ht.compl
  rw [this]
  refine h ?_
  simp only [Measure.coe_add, Pi.add_apply, add_eq_zero]
  exact ⟨measure_inter_null_of_null_left _ hs_zero, measure_inter_null_of_null_right _ htν₂⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/MutuallySingular/Variante559d2841fed0b1e25a5acce39e4c066ad5b57cef2a3899709e5a88711ea703b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/MutuallySingular/Variante559d2841fed0b1e25a5acce39e4c066ad5b57cef2a3899709e5a88711ea703b.lean#L161).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `49ec7d49b0b1d2fcfb39c474478a828b6f3a3f30` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
