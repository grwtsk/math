# LowerHemicontinuous.exists_continuous_selection_refine

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7b63865b-bf49-47d6-c392-e04de8ce7d39",
  "kind": "lemma",
  "lexical_name": "LowerHemicontinuous.exists_continuous_selection_refine",
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
  "slug": "lowerhemicontinuous-exists-continuous-selection-refine--fda4e0bad8d8c569f90446da",
  "source": {
    "blob": "2c501780b484f8bb7f7f33bed382a8a4895d89ba",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 114,
    "line": 87,
    "path": "GRWTSK/Topology/GeneralTopology/Michael/Variantf193ac1b86a3c7f35811f8ba7f8c5b1c437decd34acbb002acd008fe05ecbcb5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fda4e0bad8d8c569f90446da51d01f3ead4a2393ebd4ba2e68ca117b0e8e319d",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Michael/Variantf193ac1b86a3c7f35811f8ba7f8c5b1c437decd34acbb002acd008fe05ecbcb5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7b63865b-bf49-47d6-c392-e04de8ce7d39`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 87–114.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma LowerHemicontinuous.exists_continuous_selection_refine [IsTopologicalAddGroup β]
    (hf : LowerHemicontinuous f) (hf_convex : ∀ x, Convex ℝ (f x))
    {g : α → β} (hg : Continuous g) {W V : Set β} (hW_open : IsOpen W) (hW_convex : Convex ℝ W)
    (hV_open : IsOpen V) (hV_convex : Convex ℝ V) (hW_zero : 0 ∈ W) (hV_symm : V = -V)
    (hgV : ∀ x, g x ∈ f x + V) :
      ∃ h : α → β, Continuous h ∧ (∀ x, h x ∈ f x + W) ∧ (∀ x, h x ∈ {g x} + V) := by
  have h₁ : HasOpenLowerSections fun x ↦ (f x + W) ∩ ({g x} + V) := by
    apply hf.hasOpenCGraph_of_add_hasOpenCGraph (.const hW_open) |>.hasOpenLowerSections.inter
    exact hg.lowerHemicontinuous.hasOpenCGraph_of_add_hasOpenCGraph (.const hV_open)
      |>.hasOpenLowerSections
  have h₂ (x : α) : ((f x + W) ∩ ({g x} + V)).Nonempty := by
    obtain ⟨a, ha, b, hb, hab⟩ := hgV x
    refine ⟨g x + (-b), ?_, ?_⟩
    · refine ⟨a, ha, 0, by grind⟩
    · refine ⟨g x, rfl, -b, by rw [hV_symm]; simpa, by simp⟩
  have h₃ (x : α) : Convex ℝ ((f x + W) ∩ ({g x} + V)) := by
    apply_rules [Convex.add, Convex.inter, convex_singleton]
  grind [h₁.exists_continuous_selection h₂ h₃]

end approximate

section michael

variable [UniformSpace β] [IsUniformAddGroup β] [ContinuousSMul ℝ β]
  [LocallyConvexSpace ℝ β] [FirstCountableTopology β] [CompleteSpace β]

/-- **Michael's selection theorem**: A lower hemicontinuous function from a paracompact normal
space to a Fréchet space with nonempty convex closed values admits a continuous selection -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Michael/Variantf193ac1b86a3c7f35811f8ba7f8c5b1c437decd34acbb002acd008fe05ecbcb5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Michael/Variantf193ac1b86a3c7f35811f8ba7f8c5b1c437decd34acbb002acd008fe05ecbcb5.lean#L87).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2c501780b484f8bb7f7f33bed382a8a4895d89ba` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
