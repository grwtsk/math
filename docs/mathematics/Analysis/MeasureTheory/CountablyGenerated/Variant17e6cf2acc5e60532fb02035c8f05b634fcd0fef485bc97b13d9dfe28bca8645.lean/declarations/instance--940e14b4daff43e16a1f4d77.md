# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:bc8d5dab561fa360994aaee625e12f2ee2a210e298139d822d7db0b0a6524af1",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--940e14b4daff43e16a1f4d77",
  "source": {
    "blob": "0395b56ee9675553e0ef9df1c6f8f254d8a6810e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 125,
    "line": 109,
    "path": "GRWTSK/Analysis/MeasureTheory/CountablyGenerated/Variant17e6cf2acc5e60532fb02035c8f05b634fcd0fef485bc97b13d9dfe28bca8645.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:940e14b4daff43e16a1f4d771fb1591e1941200210a02ee7ea9c745999c79374",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/CountablyGenerated/Variant17e6cf2acc5e60532fb02035c8f05b634fcd0fef485bc97b13d9dfe28bca8645.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:bc8d5dab561fa360994aaee625e12f2ee2a210e298139d822d7db0b0a6524af1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 109–125.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance (priority := 100) [MeasurableSpace α] [Countable α] : CountablyGenerated α where
  isCountablyGenerated := by
    refine ⟨⋃ y, {measurableAtom y}, countable_iUnion (fun i ↦ countable_singleton _), ?_⟩
    refine le_antisymm ?_ (generateFrom_le (by simp [MeasurableSet.measurableAtom_of_countable]))
    intro s hs
    have : s = ⋃ y ∈ s, measurableAtom y := by
      apply Subset.antisymm
      · intro x hx
        simpa using ⟨x, hx, by simp⟩
      · simp only [iUnion_subset_iff]
        intro x hx
        exact measurableAtom_subset hs hx
    rw [this]
    apply MeasurableSet.biUnion (to_countable s) (fun x _hx ↦ ?_)
    apply measurableSet_generateFrom
    simp

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/CountablyGenerated/Variant17e6cf2acc5e60532fb02035c8f05b634fcd0fef485bc97b13d9dfe28bca8645.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/CountablyGenerated/Variant17e6cf2acc5e60532fb02035c8f05b634fcd0fef485bc97b13d9dfe28bca8645.lean#L109).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0395b56ee9675553e0ef9df1c6f8f254d8a6810e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
