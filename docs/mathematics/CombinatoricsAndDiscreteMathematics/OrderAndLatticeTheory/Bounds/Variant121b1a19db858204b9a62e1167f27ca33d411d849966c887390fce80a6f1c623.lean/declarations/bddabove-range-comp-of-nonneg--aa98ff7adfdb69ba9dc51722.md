# BddAbove.range_comp_of_nonneg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:94def10f-f137-4e9e-5bda-174b88161bfe",
  "kind": "lemma",
  "lexical_name": "BddAbove.range_comp_of_nonneg",
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
  "slug": "bddabove-range-comp-of-nonneg--aa98ff7adfdb69ba9dc51722",
  "source": {
    "blob": "27d501075b0e3c6876e086a3f57734d465a8de31",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 37,
    "line": 26,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Bounds/Variant121b1a19db858204b9a62e1167f27ca33d411d849966c887390fce80a6f1c623.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:aa98ff7adfdb69ba9dc51722646efec13e20ac815a90410d5fab2f02173298a6",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Bounds/Variant121b1a19db858204b9a62e1167f27ca33d411d849966c887390fce80a6f1c623.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:94def10f-f137-4e9e-5bda-174b88161bfe`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 26–37.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma BddAbove.range_comp_of_nonneg {α β γ : Type*} [Nonempty α] [Preorder β] [Zero β] [Preorder γ]
    {f : α → β} {g : β → γ} (hf : BddAbove (range f)) (hf0 : 0 ≤ f)
    (hg : MonotoneOn g {x : β | 0 ≤ x}) : BddAbove (range (fun x => g (f x))) := by
  suffices hg' : BddAbove (g '' range f) by
    rwa [← Function.comp_def, Set.range_comp]
  apply hg.map_bddAbove (by rintro x ⟨a, rfl⟩; exact hf0 a)
  obtain ⟨b, hb⟩ := hf
  use b, hb
  simp only [mem_upperBounds, mem_range, forall_exists_index, forall_apply_eq_imp_iff] at hb
  exact le_trans (hf0 Classical.ofNonempty) (hb Classical.ofNonempty)

/-- If `u v : α → β` are nonnegative and bounded above, then `u * v` is bounded above. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Bounds/Variant121b1a19db858204b9a62e1167f27ca33d411d849966c887390fce80a6f1c623.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Bounds/Variant121b1a19db858204b9a62e1167f27ca33d411d849966c887390fce80a6f1c623.lean#L26).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `27d501075b0e3c6876e086a3f57734d465a8de31` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
