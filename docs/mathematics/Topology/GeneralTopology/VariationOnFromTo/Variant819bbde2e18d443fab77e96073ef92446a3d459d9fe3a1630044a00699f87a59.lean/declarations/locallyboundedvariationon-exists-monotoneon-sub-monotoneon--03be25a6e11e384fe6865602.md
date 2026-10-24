# LocallyBoundedVariationOn.exists_monotoneOn_sub_monotoneOn'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6a85feeb-2539-6758-ebf7-fb1c82c7c018",
  "kind": "theorem",
  "lexical_name": "LocallyBoundedVariationOn.exists_monotoneOn_sub_monotoneOn'",
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
  "slug": "locallyboundedvariationon-exists-monotoneon-sub-monotoneon--03be25a6e11e384fe6865602",
  "source": {
    "blob": "3b6fcc1488eb89f563380a91eb64f578780d3815",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 411,
    "line": 386,
    "path": "GRWTSK/Topology/GeneralTopology/VariationOnFromTo/Variant819bbde2e18d443fab77e96073ef92446a3d459d9fe3a1630044a00699f87a59.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:03be25a6e11e384fe68656022fd76c0f449027907fbdf41550c4a64a0a075056",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/VariationOnFromTo/Variant819bbde2e18d443fab77e96073ef92446a3d459d9fe3a1630044a00699f87a59.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6a85feeb-2539-6758-ebf7-fb1c82c7c018`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 386–411.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem LocallyBoundedVariationOn.exists_monotoneOn_sub_monotoneOn' {f : α → ℝ} {s : Set α}
    (h : LocallyBoundedVariationOn f s) :
    ∃ p q : α → ℝ, MonotoneOn p s ∧ MonotoneOn q s ∧ f = p - q ∧
      ∀ x ∈ s, ∀ y ∈ s, (p y - p x) + (q y - q x) = variationOnFromTo f s x y := by
  rcases eq_empty_or_nonempty s with (rfl | ⟨c, cs⟩)
  · refine ⟨f, 0, subsingleton_empty.monotoneOn _, subsingleton_empty.monotoneOn _,
      (sub_zero f).symm, fun x hx y hy ↦ by simp at hx⟩
  refine ⟨fun x ↦ (variationOnFromTo f s c x + f x) / 2,
    fun x ↦ (variationOnFromTo f s c x - f x) / 2, ?_, ?_, ?_, ?_⟩
  · intro x hx y hy hxy
    dsimp
    gcongr 1
    simpa using variationOnFromTo.add_self_monotoneOn h cs hx hy hxy
  · intro x hx y hy hxy
    dsimp
    gcongr 1
    simpa using variationOnFromTo.sub_self_monotoneOn h cs hx hy hxy
  · ext
    simp
    ring
  · intro x hx y hy
    rw [← variationOnFromTo.add h hx cs hy, variationOnFromTo.eq_neg_swap]
    ring

/-- If a real-valued function has bounded variation on a set, then it is a difference of monotone
functions there. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/VariationOnFromTo/Variant819bbde2e18d443fab77e96073ef92446a3d459d9fe3a1630044a00699f87a59.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/VariationOnFromTo/Variant819bbde2e18d443fab77e96073ef92446a3d459d9fe3a1630044a00699f87a59.lean#L386).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3b6fcc1488eb89f563380a91eb64f578780d3815` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
