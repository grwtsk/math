# IsClosed.smul_right_of_isCompact

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1ac7ea41-74e0-4af1-b551-7d57eb11d6e3",
  "kind": "theorem",
  "lexical_name": "IsClosed.smul_right_of_isCompact",
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
  "slug": "isclosed-smul-right-of-iscompact--8f989b2b8d8c706a802c23a2",
  "source": {
    "blob": "c34a482cfd6b3439bead60cfde47c446842a781a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 277,
    "line": 249,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variantaac8b83b315c79de19e92504097e579a626e1962f9f4ceb306c91bee7033fbab.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8f989b2b8d8c706a802c23a24ef589d2c8844d64aadcc2aa2c77efff2ba8ccf8",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variantaac8b83b315c79de19e92504097e579a626e1962f9f4ceb306c91bee7033fbab.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1ac7ea41-74e0-4af1-b551-7d57eb11d6e3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 249–277.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsClosed.smul_right_of_isCompact [ProperSMul G X] {s : Set G} {t : Set X} (hs : IsClosed s)
    (ht : IsCompact t) : IsClosed (s • t) := by
  let Ψ : G × t → X × t := fun gx ↦ (gx.1 • gx.2, gx.2)
  have Ψ_proper : IsProperMap Ψ := ProperSMul.isProperMap_smul_pair_set
  have : s • t = (fst ∘ Ψ) '' fst ⁻¹' s :=
    subset_antisymm
      (smul_subset_iff.mpr fun g hg x hx ↦ mem_image_of_mem (fst ∘ Ψ) (x := ⟨g, ⟨x, hx⟩⟩) hg)
      (image_subset_iff.mpr fun ⟨g, ⟨x, hx⟩⟩ hg ↦ smul_mem_smul hg hx)
  rw [this]
  have : CompactSpace t := isCompact_iff_compactSpace.mp ht
  exact (isProperMap_fst_of_compactSpace.comp Ψ_proper).isClosedMap _ (hs.preimage continuous_fst)

/-! One may expect `IsClosed.smul_right_of_isCompact` to hold for arbitrary continuous actions,
but such a lemma can't be true in this level of generality. For a counterexample, consider
`ℚ` acting on `ℝ` by translation, and let `s : Set ℚ := univ`, `t : set ℝ := {0}`. Then `s` is
closed and `t` is compact, but `s +ᵥ t` is the set of all rationals, which is definitely not
closed in `ℝ`. -/

open scoped Pointwise in
/-- If `G` acts properly on `X`, then for each pair of compacts `U, V ⊆ X`,
the set of `g` such that `g • U` intersects `V` is compact.

See `MulAction.properSMul_iff_isCompact_setOfPred_inter_nonempty` for the two-way implication
under additional conditions on `G` and `X`. -/
@[to_additive /-- If `G` acts properly on `X`, then for each pair of compacts `U, V ⊆ X`,
the set of `g` such that `g +ᵥ U` intersects `V` is compact.

See `AddAction.properVAdd_iff_isCompact_setOfPred_inter_nonempty` for the two-way implication
under additional conditions on `G` and `X`. -/]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variantaac8b83b315c79de19e92504097e579a626e1962f9f4ceb306c91bee7033fbab.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variantaac8b83b315c79de19e92504097e579a626e1962f9f4ceb306c91bee7033fbab.lean#L249).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c34a482cfd6b3439bead60cfde47c446842a781a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
