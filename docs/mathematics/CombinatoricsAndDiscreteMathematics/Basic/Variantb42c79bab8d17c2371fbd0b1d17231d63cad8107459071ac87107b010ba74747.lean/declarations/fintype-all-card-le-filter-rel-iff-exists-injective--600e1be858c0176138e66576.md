# Fintype.all_card_le_filter_rel_iff_exists_injective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d2b979e1-13ab-e1d8-703a-68ece6bee018",
  "kind": "theorem",
  "lexical_name": "Fintype.all_card_le_filter_rel_iff_exists_injective",
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
  "slug": "fintype-all-card-le-filter-rel-iff-exists-injective--600e1be858c0176138e66576",
  "source": {
    "blob": "68bd4ad43f5b695c3bd1eef3af7a1f8d36928c0d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 217,
    "line": 206,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variantb42c79bab8d17c2371fbd0b1d17231d63cad8107459071ac87107b010ba74747.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:600e1be858c0176138e665765fb67901428cadaa2fd8e4fad2aef50a60425733",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Basic/Variantb42c79bab8d17c2371fbd0b1d17231d63cad8107459071ac87107b010ba74747.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d2b979e1-13ab-e1d8-703a-68ece6bee018`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 206–217.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Fintype.all_card_le_filter_rel_iff_exists_injective {α : Type u} {β : Type v} [Fintype β]
    (r : α → β → Prop) [DecidableRel r] :
    (∀ A : Finset α, #A ≤ #{b | ∃ a ∈ A, r a b}) ↔ ∃ f : α → β, Injective f ∧ ∀ x, r x (f x) := by
  have := Classical.decEq β
  let r' a : Finset β := {b | r a b}
  have h : ∀ A : Finset α, ({b | ∃ a ∈ A, r a b} : Finset _) = A.biUnion r' := by
    intro A
    ext b
    simp [r']
  have h' : ∀ (f : α → β) (x), r x (f x) ↔ f x ∈ r' x := by simp [r']
  simp_rw [h, h']
  apply Finset.all_card_le_biUnion_card_iff_exists_injective
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Basic/Variantb42c79bab8d17c2371fbd0b1d17231d63cad8107459071ac87107b010ba74747.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variantb42c79bab8d17c2371fbd0b1d17231d63cad8107459071ac87107b010ba74747.lean#L206).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `68bd4ad43f5b695c3bd1eef3af7a1f8d36928c0d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
