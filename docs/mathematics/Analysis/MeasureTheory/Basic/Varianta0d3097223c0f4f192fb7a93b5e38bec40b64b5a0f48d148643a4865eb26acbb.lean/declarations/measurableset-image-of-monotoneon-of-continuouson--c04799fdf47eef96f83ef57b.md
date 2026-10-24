# MeasurableSet.image_of_monotoneOn_of_continuousOn

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4ef22850-7b3a-bc8b-98b2-9bf288acf929",
  "kind": "theorem",
  "lexical_name": "MeasurableSet.image_of_monotoneOn_of_continuousOn",
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
  "slug": "measurableset-image-of-monotoneon-of-continuouson--c04799fdf47eef96f83ef57b",
  "source": {
    "blob": "a992dd64a895591bbde7cc6456a1648546ef2862",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 963,
    "line": 934,
    "path": "GRWTSK/Analysis/MeasureTheory/Basic/Varianta0d3097223c0f4f192fb7a93b5e38bec40b64b5a0f48d148643a4865eb26acbb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c04799fdf47eef96f83ef57b34cb8e54001dbc3c126cd26e82391ecc9b2a1498",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Basic/Varianta0d3097223c0f4f192fb7a93b5e38bec40b64b5a0f48d148643a4865eb26acbb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4ef22850-7b3a-bc8b-98b2-9bf288acf929`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 934–963.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem MeasurableSet.image_of_monotoneOn_of_continuousOn
    (ht : MeasurableSet t) (hg : MonotoneOn g t) (h'g : ContinuousOn g t) :
    MeasurableSet (g '' t) := by
  /- We use that the image of a measurable set by a continuous injective map is measurable.
  Therefore, we need to remove the points where the map is not injective. There are only countably
  many points that have several preimages, so this set is also measurable. -/
  let u : Set β := {c | ∃ x, ∃ y, x ∈ t ∧ y ∈ t ∧ x < y ∧ g x = c ∧ g y = c}
  have hu : Set.Countable u := MonotoneOn.countable_setOfPred_two_preimages hg
  let t' := t ∩ g ⁻¹' u
  have ht' : MeasurableSet t' := by
    have : t' = ⋃ c ∈ u, t ∩ g ⁻¹' {c} := by ext; simp [t']
    rw [this]
    apply MeasurableSet.biUnion hu (fun c hc ↦ ?_)
    obtain ⟨v, hv, tv⟩ : ∃ v, OrdConnected v ∧ t ∩ g ⁻¹' {c} = t ∩ v :=
      ordConnected_singleton.preimage_monotoneOn hg
    exact tv ▸ ht.inter hv.measurableSet
  have : g '' t = g '' (t \ t') ∪ g '' t' := by simp [← image_union, t']
  rw [this]
  apply MeasurableSet.union
  · apply (ht.diff ht').image_of_continuousOn_injOn (h'g.mono sdiff_subset)
    intro x hx y hy hxy
    contrapose! hxy
    wlog! H : x < y generalizing x y with h
    · have : y < x := lt_of_le_of_ne H hxy.symm
      exact (h hy hx hxy.symm this).symm
    intro h
    exact hx.2 ⟨hx.1, x, y, hx.1, hy.1, H, rfl, h.symm⟩
  · exact hu.mono (by simp [t']) |>.measurableSet

/-- The image of a measurable set under a monotone map is measurable. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Basic/Varianta0d3097223c0f4f192fb7a93b5e38bec40b64b5a0f48d148643a4865eb26acbb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Basic/Varianta0d3097223c0f4f192fb7a93b5e38bec40b64b5a0f48d148643a4865eb26acbb.lean#L934).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a992dd64a895591bbde7cc6456a1648546ef2862` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
