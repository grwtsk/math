# exists_pos_forall_lt_edist

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5c33b296-c2ff-54c9-dba5-3f79d5a9ce11",
  "kind": "theorem",
  "lexical_name": "exists_pos_forall_lt_edist",
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
  "slug": "exists-pos-forall-lt-edist--820443659eee1323bbc25fce",
  "source": {
    "blob": "58cd97ea1567cab3e19f1cd95c79eda3a9517db7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 274,
    "line": 245,
    "path": "GRWTSK/Topology/GeneralTopology/HausdorffDistance/Variantf9348b0db1bc40bc42bb70a901906672a11e7ad7005a85694dbe61a7a295e458.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:820443659eee1323bbc25fcea81c7eed47597fa7f2e8bcd8fbe925ab1d281565",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/HausdorffDistance/Variantf9348b0db1bc40bc42bb70a901906672a11e7ad7005a85694dbe61a7a295e458.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5c33b296-c2ff-54c9-dba5-3f79d5a9ce11`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 245–274.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_pos_forall_lt_edist (hs : IsCompact s) (ht : IsClosed t) (hst : Disjoint s t) :
    ∃ r : ℝ≥0, 0 < r ∧ ∀ x ∈ s, ∀ y ∈ t, (r : ℝ≥0∞) < edist x y := by
  rcases s.eq_empty_or_nonempty with (rfl | hne)
  · use 1
    simp
  obtain ⟨x, hx, h⟩ : ∃ x ∈ s, ∀ y ∈ s, infEdist x t ≤ infEdist y t :=
    hs.exists_forall_le hne continuous_infEdist.continuousOn
  have : 0 < infEdist x t :=
    pos_iff_ne_zero.2 fun H => hst.le_bot ⟨hx, (mem_iff_infEdist_zero_of_closed ht).mpr H⟩
  rcases ENNReal.lt_iff_exists_nnreal_btwn.1 this with ⟨r, h₀, hr⟩
  exact ⟨r, ENNReal.coe_pos.mp h₀, fun y hy z hz => hr.trans_le <| le_infEdist.1 (h y hy) z hz⟩
#align emetric.exists_pos_forall_lt_edist EMetric.exists_pos_forall_lt_edist

end InfEdist

/-! ### The Hausdorff distance as a function into `ℝ≥0∞`. -/

/-- The Hausdorff edistance between two sets is the smallest `r` such that each set
is contained in the `r`-neighborhood of the other one -/
irreducible_def hausdorffEdist {α : Type u} [PseudoEMetricSpace α] (s t : Set α) : ℝ≥0∞ :=
  (⨆ x ∈ s, infEdist x t) ⊔ ⨆ y ∈ t, infEdist y s
#align emetric.Hausdorff_edist EMetric.hausdorffEdist
#align emetric.Hausdorff_edist_def EMetric.hausdorffEdist_def

section HausdorffEdist

variable [PseudoEMetricSpace α] [PseudoEMetricSpace β] {x y : α} {s t u : Set α} {Φ : α → β}

/-- The Hausdorff edistance of a set to itself vanishes -/
@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/HausdorffDistance/Variantf9348b0db1bc40bc42bb70a901906672a11e7ad7005a85694dbe61a7a295e458.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/HausdorffDistance/Variantf9348b0db1bc40bc42bb70a901906672a11e7ad7005a85694dbe61a7a295e458.lean#L245).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `58cd97ea1567cab3e19f1cd95c79eda3a9517db7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
