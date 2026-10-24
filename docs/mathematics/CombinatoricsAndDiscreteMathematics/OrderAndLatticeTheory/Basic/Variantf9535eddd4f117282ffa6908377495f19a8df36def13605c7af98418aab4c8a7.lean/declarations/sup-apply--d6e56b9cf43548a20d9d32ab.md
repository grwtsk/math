# sup_apply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8b1d8380-b858-d224-6956-1436a1f40984",
  "kind": "theorem",
  "lexical_name": "sup_apply",
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
  "slug": "sup-apply--d6e56b9cf43548a20d9d32ab",
  "source": {
    "blob": "e69d8da3ab2463268c43951929f63e1768099926",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 187,
    "line": 168,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variantf9535eddd4f117282ffa6908377495f19a8df36def13605c7af98418aab4c8a7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d6e56b9cf43548a20d9d32ab1061d4c61d8ba5470506b683662b49ee6610341c",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variantf9535eddd4f117282ffa6908377495f19a8df36def13605c7af98418aab4c8a7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8b1d8380-b858-d224-6956-1436a1f40984`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 168–187.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sup_apply
    {σ : Type v} {β : σ → Type w} [∀ s, CompleteLattice (β s)]
    (c : (∀ s, β s) → Prop) (s : σ) :
    CompleteLattice.sup c s = CompleteLattice.sup (fun y => ∃ f, c f ∧ f s = y) := by
  apply PartialOrder.rel_antisymm
  · -- sup c s ⊑ sup {y | ∃ f ∈ c, f s = y}
    let g : ∀ t, β t := fun t => CompleteLattice.sup (fun y => ∃ f, c f ∧ f t = y)
    have hg : CompleteLattice.sup c ⊑ g := by
      apply sup_le
      intro f hf t
      apply le_sup
      exact ⟨f, hf, rfl⟩
    exact hg s
  · -- sup {y | ∃ f ∈ c, f s = y} ⊑ sup c s
    apply sup_le
    intro y ⟨f, hf, hfs⟩
    rw [← hfs]
    exact (le_sup (c := c) hf) s

/-- Pointwise characterization of binary meet on function lattices. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variantf9535eddd4f117282ffa6908377495f19a8df36def13605c7af98418aab4c8a7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variantf9535eddd4f117282ffa6908377495f19a8df36def13605c7af98418aab4c8a7.lean#L168).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e69d8da3ab2463268c43951929f63e1768099926` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
