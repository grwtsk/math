# measurableSet_inter_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:49cb0b4c-be1a-dbc3-42b5-c418ea9c6d7f",
  "kind": "theorem",
  "lexical_name": "measurableSet_inter_le",
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
  "slug": "measurableset-inter-le--dfc8084c8ae7e5f511601463",
  "source": {
    "blob": "b25a083f6a1b210f988357fb835770c3f90b68da",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 723,
    "line": 707,
    "path": "GRWTSK/Analysis/MeasureTheory/Stopping/Variant38d608b4f30295c1fe84e336ecc0e5ee90c064a531bf7e142bbd73d5100a8c39.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dfc8084c8ae7e5f511601463bfb1a5f5c84e2d01c8ecdf525304c7b7d2110ff1",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Stopping/Variant38d608b4f30295c1fe84e336ecc0e5ee90c064a531bf7e142bbd73d5100a8c39.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:49cb0b4c-be1a-dbc3-42b5-c418ea9c6d7f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 707–723.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem measurableSet_inter_le [TopologicalSpace ι] [SecondCountableTopology ι] [OrderTopology ι]
    (hτ : IsStoppingTime f τ) (hπ : IsStoppingTime f π)
    (s : Set Ω) (hs : MeasurableSet[hτ.measurableSpace] s) :
    MeasurableSet[(hτ.min hπ).measurableSpace] (s ∩ {ω | τ ω ≤ π ω}) := by
  simp_rw [IsStoppingTime.measurableSet] at hs ⊢
  have h_eq i : s ∩ {ω | τ ω ≤ π ω} ∩ {ω | min (τ ω) (π ω) ≤ i} =
      s ∩ {ω | τ ω ≤ i} ∩ {ω | min (τ ω) (π ω) ≤ i} ∩
        {ω | min (τ ω) i ≤ min (min (τ ω) (π ω)) i} := by
    ext ω
    by_cases hτi : τ ω ≤ i <;> grind
  simp_rw [h_eq]
  refine ⟨hs.1.inter (measurableSet_le hτ.measurable_iSup hπ.measurable_iSup), fun i ↦ ?_⟩
  refine ((hs.2 i).inter ((hτ.min hπ) i)).inter ?_
  apply @measurableSet_le _ _ _ _ _ (Filtration.seq f i) _ _ _ _ _ ?_ ?_
  · exact (hτ.min_const i).measurable_of_le fun _ => min_le_right _ _
  · exact ((hτ.min hπ).min_const i).measurable_of_le fun _ => min_le_right _ _

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Stopping/Variant38d608b4f30295c1fe84e336ecc0e5ee90c064a531bf7e142bbd73d5100a8c39.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Stopping/Variant38d608b4f30295c1fe84e336ecc0e5ee90c064a531bf7e142bbd73d5100a8c39.lean#L707).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b25a083f6a1b210f988357fb835770c3f90b68da` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
