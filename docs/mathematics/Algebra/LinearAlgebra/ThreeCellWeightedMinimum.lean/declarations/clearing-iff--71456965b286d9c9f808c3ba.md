# clearing_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:55905ad4-7e7d-1ab3-6623-9cb1b329c9ea",
  "kind": "theorem",
  "lexical_name": "clearing_iff",
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
  "slug": "clearing-iff--71456965b286d9c9f808c3ba",
  "source": {
    "blob": "2cb004651c3bd9e4104a9b2eef001abdae44f9e2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 249,
    "line": 221,
    "path": "GRWTSK/LinearAlgebra/ThreeCellWeightedMinimum.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:71456965b286d9c9f808c3bad019f37cd7637614a5dfbf53f013786d16cdbf48",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/ThreeCellWeightedMinimum.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:55905ad4-7e7d-1ab3-6623-9cb1b329c9ea`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 221–249.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem clearing_iff (e : Equiv.Perm ι) (w : ι → ℤ) (d : ℤ) :
    (∀ r : Data ι, ∃ q, composite e w q = d • r) ↔ ∀ i, 12*w i ∣ d := by
  have hf : (∀ r : Data ι, ∃ q, composite e w q = d • r) ↔
      ∀ u : Slots ι → ℤ, ∃ q,
        WeightedPermutationIntegral.transport (slotPerm e) (combinedWeight w) q = d • u := by
    constructor
    · intro h u
      obtain ⟨q, hq⟩ := h (frame.symm u)
      refine ⟨q, ?_⟩
      rw [← frame_composite, hq, map_smul, LinearEquiv.apply_symm_apply]
    · intro h r
      obtain ⟨q, hq⟩ := h (frame r)
      exact ⟨q, frame.injective (by rw [frame_composite, map_smul, hq])⟩
  rw [hf, WeightedPermutationIntegral.uniformClearing_iff]
  constructor
  · intro h i
    apply (three_four_dvd (w i) d).mp
    exact ⟨by simpa [combinedWeight, baseWeight, mul_comm] using h (i,0),
      by simpa [combinedWeight, baseWeight, mul_comm] using h (i,2)⟩
  · intro h s
    rcases s with ⟨i,j⟩
    obtain ⟨v, hv⟩ := h i
    fin_cases j
    · exact ⟨4*v, by simp [combinedWeight, baseWeight]; rw [hv]; ring⟩
    · exact ⟨12*v, by simp [combinedWeight, baseWeight]; rw [hv]; ring⟩
    · exact ⟨3*v, by simp [combinedWeight, baseWeight]; rw [hv]; ring⟩
    · exact ⟨3*v, by simp [combinedWeight, baseWeight]; rw [hv]; ring⟩

end GRWTSK.LinearAlgebra.ThreeCellWeightedMinimum
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/LinearAlgebra/ThreeCellWeightedMinimum.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/LinearAlgebra/ThreeCellWeightedMinimum.lean#L221).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2cb004651c3bd9e4104a9b2eef001abdae44f9e2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
