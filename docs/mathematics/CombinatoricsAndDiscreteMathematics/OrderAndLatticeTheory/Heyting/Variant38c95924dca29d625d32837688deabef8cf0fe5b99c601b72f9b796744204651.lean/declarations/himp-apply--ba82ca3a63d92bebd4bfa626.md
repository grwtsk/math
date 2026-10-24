# himp_apply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3244a3b8-2702-21ba-4089-91bc8bf8d3ed",
  "kind": "theorem",
  "lexical_name": "himp_apply",
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
  "slug": "himp-apply--ba82ca3a63d92bebd4bfa626",
  "source": {
    "blob": "79e0116105e6149423190d7a7f73f5b7997ea978",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 116,
    "line": 88,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Heyting/Variant38c95924dca29d625d32837688deabef8cf0fe5b99c601b72f9b796744204651.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ba82ca3a63d92bebd4bfa626216e36002f0040c52ec0c43cc34e996e8c047cac",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Heyting/Variant38c95924dca29d625d32837688deabef8cf0fe5b99c601b72f9b796744204651.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3244a3b8-2702-21ba-4089-91bc8bf8d3ed`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 88–116.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simp] theorem himp_apply
    {σ : Type v} {β : Type u} [CompleteLattice β]
    (a b : σ → β) (s : σ) :
    (a ⇨ b) s = (a s ⇨ b s) := by
  classical
  unfold himp PreservesSup.upperAdjoint
  rw [sup_apply]
  apply PartialOrder.rel_antisymm
  · apply sup_le
    intro y ⟨f, hf, hfs⟩
    rw [← hfs]
    have hsf : a s ⊓ f s ⊑ b s := by
      simpa [meet_apply] using (hf s)
    exact le_sup (c := fun z : β => a s ⊓ z ⊑ b s) hsf
  · apply sup_le
    intro y hy
    let f : σ → β := fun t => if t = s then y else ⊥
    have hf : a ⊓ f ⊑ b := by
      intro t
      simp only [meet_apply, f]
      split
      · next h => subst h; exact hy
      · exact PartialOrder.rel_trans (meet_le_right ..) (bot_le ..)
    have hs : f s = y := by simp [f]
    exact le_sup (c := fun z => ∃ g, (a ⊓ g ⊑ b) ∧ g s = z) ⟨f, hf, hs⟩

end Lean.Order

end -- public section
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Heyting/Variant38c95924dca29d625d32837688deabef8cf0fe5b99c601b72f9b796744204651.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Heyting/Variant38c95924dca29d625d32837688deabef8cf0fe5b99c601b72f9b796744204651.lean#L88).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `79e0116105e6149423190d7a7f73f5b7997ea978` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
