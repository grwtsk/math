# Set.finite_iff_bddBelow_bddAbove

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9c82a71432b7919bb33f2899f9140dfbd0dd6330",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1213,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/48/4887e4c52fc4466e6c7f61e361cf4b771bb5054106e1c9e8bd4aa1805c40e5cc.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:fe592446-8aed-38aa-cdea-3c660005d80e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:30153055-e31e-f4aa-c275-ebaddc581b5f",
  "kind": "theorem",
  "lexical_name": "Set.finite_iff_bddBelow_bddAbove",
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
  "slug": "set-finite-iff-bddbelow-bddabove--ff37f8438f9c7a288598a7f8",
  "source": {
    "blob": "9c82a71432b7919bb33f2899f9140dfbd0dd6330",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1229,
    "line": 1213,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Defs/Variant4887e4c52fc4466e6c7f61e361cf4b771bb5054106e1c9e8bd4aa1805c40e5cc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ff37f8438f9c7a288598a7f8e2fc2dab616c1a2a4727440ef1f82047deac4332",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Defs/Variant4887e4c52fc4466e6c7f61e361cf4b771bb5054106e1c9e8bd4aa1805c40e5cc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:30153055-e31e-f4aa-c275-ebaddc581b5f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1213–1229.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Set.finite_iff_bddBelow_bddAbove [Nonempty α] [Lattice α] [LocallyFiniteOrder α] :
    s.Finite ↔ BddBelow s ∧ BddAbove s := by
  obtain (rfl | hs) := s.eq_empty_or_nonempty
  · simp only [Set.finite_empty, bddBelow_empty, bddAbove_empty, and_self]
  exact ⟨fun h ↦ ⟨⟨h.toFinset.inf' ((Finite.toFinset_nonempty h).mpr hs) id,
    fun x hx ↦ Finset.inf'_le id ((Finite.mem_toFinset h).mpr hx)⟩,
    ⟨h.toFinset.sup' ((Finite.toFinset_nonempty h).mpr hs) id, fun x hx ↦ Finset.le_sup' id
    ((Finite.mem_toFinset h).mpr hx)⟩⟩,
    fun ⟨h₀, h₁⟩ ↦ BddBelow.finite_of_bddAbove h₀ h₁⟩

end Finite

/-! We make the instances below low priority
so when alternative constructions are available they are preferred. -/

variable {y : α}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Defs/Variant4887e4c52fc4466e6c7f61e361cf4b771bb5054106e1c9e8bd4aa1805c40e5cc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Defs/Variant4887e4c52fc4466e6c7f61e361cf4b771bb5054106e1c9e8bd4aa1805c40e5cc.lean#L1213).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9c82a71432b7919bb33f2899f9140dfbd0dd6330` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
