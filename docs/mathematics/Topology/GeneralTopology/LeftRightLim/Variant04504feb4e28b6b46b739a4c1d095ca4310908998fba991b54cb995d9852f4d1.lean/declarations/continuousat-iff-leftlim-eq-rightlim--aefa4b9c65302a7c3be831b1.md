# continuousAt_iff_leftLim_eq_rightLim

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:94f72259-5ec3-0f3c-4e75-ff8e76e93b84",
  "kind": "theorem",
  "lexical_name": "continuousAt_iff_leftLim_eq_rightLim",
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
  "slug": "continuousat-iff-leftlim-eq-rightlim--aefa4b9c65302a7c3be831b1",
  "source": {
    "blob": "a138060bebf654b31e51e47f85e50a17e2bb74ee",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 401,
    "line": 378,
    "path": "GRWTSK/Topology/GeneralTopology/LeftRightLim/Variant04504feb4e28b6b46b739a4c1d095ca4310908998fba991b54cb995d9852f4d1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:aefa4b9c65302a7c3be831b1d51ea32cb2935d9860de7505c632ae530cb9c904",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/LeftRightLim/Variant04504feb4e28b6b46b739a4c1d095ca4310908998fba991b54cb995d9852f4d1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:94f72259-5ec3-0f3c-4e75-ff8e76e93b84`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 378–401.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem continuousAt_iff_leftLim_eq_rightLim : ContinuousAt f x ↔ leftLim f x = rightLim f x := by
  refine ⟨fun h => ?_, fun h => ?_⟩
  · have A : leftLim f x = f x :=
      hf.continuousWithinAt_Iio_iff_leftLim_eq.1 h.continuousWithinAt
    have B : rightLim f x = f x :=
      hf.continuousWithinAt_Ioi_iff_rightLim_eq.1 h.continuousWithinAt
    exact A.trans B.symm
  · have h' : leftLim f x = f x := by
      apply le_antisymm (leftLim_le hf (le_refl _))
      rw [h]
      exact le_rightLim hf (le_refl _)
    refine continuousAt_iff_continuous_left'_right'.2 ⟨?_, ?_⟩
    · exact hf.continuousWithinAt_Iio_iff_leftLim_eq.2 h'
    · rw [h] at h'
      exact hf.continuousWithinAt_Ioi_iff_rightLim_eq.2 h'

end Monotone

namespace Antitone

variable {α β : Type*} [LinearOrder α] [ConditionallyCompleteLinearOrder β] [TopologicalSpace β]
  [OrderTopology β] {f : α → β} (hf : Antitone f) {x y : α}
include hf

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/LeftRightLim/Variant04504feb4e28b6b46b739a4c1d095ca4310908998fba991b54cb995d9852f4d1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/LeftRightLim/Variant04504feb4e28b6b46b739a4c1d095ca4310908998fba991b54cb995d9852f4d1.lean#L378).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a138060bebf654b31e51e47f85e50a17e2bb74ee` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
