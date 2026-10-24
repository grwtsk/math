# congr_cylinder

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:59145c16-481a-97a5-aa09-15941654743e",
  "kind": "lemma",
  "lexical_name": "congr_cylinder",
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
  "slug": "congr-cylinder--3fcb78cf6fcd1de991100f0d",
  "source": {
    "blob": "52b3d3887508ef8a4318d1e2a202862d171f71ce",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 124,
    "line": 105,
    "path": "GRWTSK/Analysis/MeasureTheory/Projective/Variant143f24dccfc65026dddd5ba63f9bdf4a4b7b1afc0e74415e84e050a0eb81a7bd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3fcb78cf6fcd1de991100f0d24ae7958c39b55e18b3cf640462486bae52f0af3",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Projective/Variant143f24dccfc65026dddd5ba63f9bdf4a4b7b1afc0e74415e84e050a0eb81a7bd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:59145c16-481a-97a5-aa09-15941654743e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 105–124.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma congr_cylinder (hP : IsProjectiveMeasureFamily P)
    {S : Set (∀ i : I, α i)} {T : Set (∀ i : J, α i)} (hS : MeasurableSet S) (hT : MeasurableSet T)
    (h_eq : cylinder I S = cylinder J T) :
    P I S = P J T := by
  classical
  let U := Finset.restrict₂ Finset.subset_union_left ⁻¹' S ∩
      Finset.restrict₂ Finset.subset_union_right ⁻¹' T
  suffices P (I ∪ J) U = P I S ∧ P (I ∪ J) U = P J T from this.1.symm.trans this.2
  constructor
  · have h_eq_union : cylinder I S = cylinder (I ∪ J) U := by
      rw [← inter_cylinder, h_eq, inter_self]
    exact hP.congr_cylinder_of_subset hS h_eq_union.symm Finset.subset_union_left
  · have h_eq_union : cylinder J T = cylinder (I ∪ J) U := by
      rw [← inter_cylinder, h_eq, inter_self]
    exact hP.congr_cylinder_of_subset hT h_eq_union.symm Finset.subset_union_right

end IsProjectiveMeasureFamily

/-- A measure `μ` is the projective limit of a family of measures indexed by finite sets of `ι` if
for all `I : Finset ι`, the projection from `∀ i, α i` to `∀ i : I, α i` maps `μ` to `P I`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Projective/Variant143f24dccfc65026dddd5ba63f9bdf4a4b7b1afc0e74415e84e050a0eb81a7bd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Projective/Variant143f24dccfc65026dddd5ba63f9bdf4a4b7b1afc0e74415e84e050a0eb81a7bd.lean#L105).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `52b3d3887508ef8a4318d1e2a202862d171f71ce` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
