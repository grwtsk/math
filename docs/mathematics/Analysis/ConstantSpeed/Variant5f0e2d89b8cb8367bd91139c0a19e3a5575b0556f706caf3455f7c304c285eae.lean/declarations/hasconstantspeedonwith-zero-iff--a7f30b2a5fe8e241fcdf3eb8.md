# hasConstantSpeedOnWith_zero_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c939c34fae203312fa993792a7bf7c0f3a9cf809",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 157,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/5f/5f0e2d89b8cb8367bd91139c0a19e3a5575b0556f706caf3455f7c304c285eae.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:dc010e3c-4565-6ec0-e5d9-12081d469799",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:37498fe2-5805-9c66-e1e4-3c2ccb00e65b",
  "kind": "theorem",
  "lexical_name": "hasConstantSpeedOnWith_zero_iff",
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
  "slug": "hasconstantspeedonwith-zero-iff--a7f30b2a5fe8e241fcdf3eb8",
  "source": {
    "blob": "c939c34fae203312fa993792a7bf7c0f3a9cf809",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 176,
    "line": 157,
    "path": "GRWTSK/Analysis/ConstantSpeed/Variant5f0e2d89b8cb8367bd91139c0a19e3a5575b0556f706caf3455f7c304c285eae.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a7f30b2a5fe8e241fcdf3eb89c2f19c72a0aa003da5be4c63243fb1a893808c8",
  "verification": {
    "reference": "docs/verification/Analysis/ConstantSpeed/Variant5f0e2d89b8cb8367bd91139c0a19e3a5575b0556f706caf3455f7c304c285eae.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:37498fe2-5805-9c66-e1e4-3c2ccb00e65b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 157–176.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem hasConstantSpeedOnWith_zero_iff :
    HasConstantSpeedOnWith f s 0 ↔ ∀ (x) (_ : x ∈ s) (y) (_ : y ∈ s), edist (f x) (f y) = 0 := by
  dsimp [HasConstantSpeedOnWith]
  simp only [zero_mul, ENNReal.ofReal_zero, ← eVariationOn.eq_zero_iff]
  constructor
  · by_contra'
    obtain ⟨h, hfs⟩ := this
    simp_rw [ne_eq, eVariationOn.eq_zero_iff] at hfs h
    push_neg at hfs
    obtain ⟨x, xs, y, ys, hxy⟩ := hfs
    rcases le_total x y with (xy | yx)
    · exact hxy (h xs ys x ⟨xs, le_rfl, xy⟩ y ⟨ys, xy, le_rfl⟩)
    · rw [edist_comm] at hxy
      exact hxy (h ys xs y ⟨ys, le_rfl, yx⟩ x ⟨xs, yx, le_rfl⟩)
  · rintro h x _ y _
    refine' le_antisymm _ zero_le'
    rw [← h]
    exact eVariationOn.mono f (inter_subset_left s (Icc x y))
#align has_constant_speed_on_with_zero_iff hasConstantSpeedOnWith_zero_iff

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/ConstantSpeed/Variant5f0e2d89b8cb8367bd91139c0a19e3a5575b0556f706caf3455f7c304c285eae.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ConstantSpeed/Variant5f0e2d89b8cb8367bd91139c0a19e3a5575b0556f706caf3455f7c304c285eae.lean#L157).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c939c34fae203312fa993792a7bf7c0f3a9cf809` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
