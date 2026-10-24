# Fintype.all_card_le_filter_rel_iff_exists_injective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6ccde56b92dfd7af39fcedbe8d2a12ec795db85b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 198,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/8a/8a48b3a4aecd1e76eeefe3858fd0df919ce3140c42340914f60201c9caee911b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:644382ab-03be-9244-8a70-2204830ca387",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:492d29e0-c3d3-8757-9d28-e5e17e4e745f",
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
  "slug": "fintype-all-card-le-filter-rel-iff-exists-injective--ddfd98bbfb2ea58cfb484505",
  "source": {
    "blob": "6ccde56b92dfd7af39fcedbe8d2a12ec795db85b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 209,
    "line": 198,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variant8a48b3a4aecd1e76eeefe3858fd0df919ce3140c42340914f60201c9caee911b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ddfd98bbfb2ea58cfb484505c09f10b1bf1ea00a6ec9c8767d17710cbe1fb463",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Basic/Variant8a48b3a4aecd1e76eeefe3858fd0df919ce3140c42340914f60201c9caee911b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:492d29e0-c3d3-8757-9d28-e5e17e4e745f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 198–209.

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

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Basic/Variant8a48b3a4aecd1e76eeefe3858fd0df919ce3140c42340914f60201c9caee911b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variant8a48b3a4aecd1e76eeefe3858fd0df919ce3140c42340914f60201c9caee911b.lean#L198).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6ccde56b92dfd7af39fcedbe8d2a12ec795db85b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
