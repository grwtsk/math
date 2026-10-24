# tendsto_card_le_div

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7f3ba34c-9be1-2544-540f-0a6b7718fe37",
  "kind": "theorem",
  "lexical_name": "tendsto_card_le_div",
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
  "slug": "tendsto-card-le-div--d88a8732dab1173679270484",
  "source": {
    "blob": "27d6e0d0b791b553ec941145a34af57a38708e06",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 311,
    "line": 282,
    "path": "GRWTSK/Topology/GeneralTopology/Covolume/Variant8435becabc9826359ba40e3970c5fb95d3446832d963d6b761dc58e538c3354d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d88a8732dab1173679270484200267c0b3970c94bfd9bd1b4877822ef13b0a7d",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Covolume/Variant8435becabc9826359ba40e3970c5fb95d3446832d963d6b761dc58e538c3354d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7f3ba34c-9be1-2544-540f-0a6b7718fe37`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 282–311.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tendsto_card_le_div {X : Set (ι → ℝ)} (hX : ∀ ⦃x⦄ ⦃r : ℝ⦄, x ∈ X → 0 < r → r • x ∈ X)
    {F : (ι → ℝ) → ℝ} (h₁ : ∀ x ⦃r : ℝ⦄, 0 ≤ r → F (r • x) = r ^ card ι * (F x))
    (h₂ : IsBounded {x ∈ X | F x ≤ 1}) (h₃ : MeasurableSet {x ∈ X | F x ≤ 1})
    (h₄ : volume (frontier {x | x ∈ X ∧ F x ≤ 1}) = 0) [Nonempty ι] :
    Tendsto (fun c : ℝ ↦
      Nat.card ({x ∈ X | F x ≤ c} ∩ L : Set (ι → ℝ)) / (c : ℝ))
        atTop (𝓝 (volume.real {x ∈ X | F x ≤ 1} / covolume L)) := by
  classical
  let e : Free.ChooseBasisIndex ℤ ↥L ≃ ι := by
    refine Fintype.equivOfCardEq ?_
    rw [← finrank_eq_card_chooseBasisIndex, ZLattice.rank ℝ, finrank_fintype_fun_eq_card]
  let b := (Module.Free.chooseBasis ℤ L).reindex e
  convert tendsto_card_le_div'' b hX h₁ h₂ h₃ ?_
  · simp only [measureReal_def]
    rw [volume_image_eq_volume_div_covolume L b, ENNReal.toReal_div,
      ENNReal.toReal_ofReal (covolume_pos L volume).le]
  · rw [frontier_equivFun, volume_image_eq_volume_div_covolume, h₄, ENNReal.zero_div]

end Pi

section InnerProductSpace

open Filter Pointwise Topology Bornology

variable {E : Type*} [NormedAddCommGroup E] [InnerProductSpace ℝ E] [FiniteDimensional ℝ E]
  [MeasurableSpace E] [BorelSpace E]
variable (L : Submodule ℤ E) [DiscreteTopology L] [IsZLattice ℝ L]

/-- A version of `ZLattice.covolume.tendsto_card_div_pow` for the `InnerProductSpace` case;
see the `Naming convention` section in the introduction. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Covolume/Variant8435becabc9826359ba40e3970c5fb95d3446832d963d6b761dc58e538c3354d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Covolume/Variant8435becabc9826359ba40e3970c5fb95d3446832d963d6b761dc58e538c3354d.lean#L282).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `27d6e0d0b791b553ec941145a34af57a38708e06` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
