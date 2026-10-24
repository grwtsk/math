# MonotoneOn.exists_monotone_extension

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "35c7c9830130452806e29df4c0d80df743245199",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 23,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/80/80ed0579ed1b80daf1be26526651b58a7f519b7ddf5f83ed1e893f3a8c09126d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:01640946-5e25-8944-64a6-3c2a8aeb7502",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:15721098-5daa-acd6-58d5-182ad2ddcb8a",
  "kind": "theorem",
  "lexical_name": "MonotoneOn.exists_monotone_extension",
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
  "slug": "monotoneon-exists-monotone-extension--8af7e2612a7a6717dfd572f9",
  "source": {
    "blob": "35c7c9830130452806e29df4c0d80df743245199",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 49,
    "line": 23,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Extension/Variant80ed0579ed1b80daf1be26526651b58a7f519b7ddf5f83ed1e893f3a8c09126d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8af7e2612a7a6717dfd572f9063356d9b53378c11bb34384bc2a31f1589d0a80",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Extension/Variant80ed0579ed1b80daf1be26526651b58a7f519b7ddf5f83ed1e893f3a8c09126d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:15721098-5daa-acd6-58d5-182ad2ddcb8a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 23–49.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem MonotoneOn.exists_monotone_extension (h : MonotoneOn f s) (hl : BddBelow (f '' s))
    (hu : BddAbove (f '' s)) : ∃ g : α → β, Monotone g ∧ EqOn f g s := by
  classical
    /- The extension is defined by `f x = f a` for `x ≤ a`, and `f x` is the supremum of the values
      of `f` to the left of `x` for `x ≥ a`. -/
    rcases hl with ⟨a, ha⟩
    have hu' : ∀ x, BddAbove (f '' (Iic x ∩ s)) := fun x =>
      hu.mono (image_subset _ inter_subset_right)
    let g : α → β := fun x => if Disjoint (Iic x) s then a else sSup (f '' (Iic x ∩ s))
    have hgs : EqOn f g s := by
      intro x hx
      simp only [g]
      have : IsGreatest (Iic x ∩ s) x := ⟨⟨right_mem_Iic, hx⟩, fun y hy => hy.1⟩
      rw [if_neg this.nonempty.not_disjoint,
        ((h.mono inter_subset_right).map_isGreatest this).csSup_eq]
    refine ⟨g, fun x y hxy => ?_, hgs⟩
    by_cases hx : Disjoint (Iic x) s <;> by_cases hy : Disjoint (Iic y) s <;>
      simp only [g, if_pos, if_neg, not_false_iff, *, refl]
    · rcases not_disjoint_iff_nonempty_inter.1 hy with ⟨z, hz⟩
      exact le_csSup_of_le (hu' _) (mem_image_of_mem _ hz) (ha <| mem_image_of_mem _ hz.2)
    · exact (hx <| hy.mono_left <| Iic_subset_Iic.2 hxy).elim
    · rw [not_disjoint_iff_nonempty_inter] at hx hy
      refine csSup_le_csSup (hu' _) (hx.image _) (image_subset _ ?_)
      exact inter_subset_inter_left _ (Iic_subset_Iic.2 hxy)

/-- If a function is antitone and is bounded on a set `s`, then it admits an antitone extension to
the whole space. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Extension/Variant80ed0579ed1b80daf1be26526651b58a7f519b7ddf5f83ed1e893f3a8c09126d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Extension/Variant80ed0579ed1b80daf1be26526651b58a7f519b7ddf5f83ed1e893f3a8c09126d.lean#L23).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `35c7c9830130452806e29df4c0d80df743245199` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
