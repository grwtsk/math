# card_support_eq_two

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "29f56ab5db0ee4f25653b9e32a027c63beb9818e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 617,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/0d/0d627a7f69d8335f103c52dec089400fc27ec22ca38b14206d9b85239bb057d6.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ac1a0023-7479-7ff3-717f-65464a850700",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:44c9b5c7-0b5c-20ce-7236-4c5a36c9b1d0",
  "kind": "theorem",
  "lexical_name": "card_support_eq_two",
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
  "slug": "card-support-eq-two--d0d889ab9af76a7b056a64f0",
  "source": {
    "blob": "29f56ab5db0ee4f25653b9e32a027c63beb9818e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 635,
    "line": 617,
    "path": "GRWTSK/Algebra/GroupTheory/Support/Variant0d627a7f69d8335f103c52dec089400fc27ec22ca38b14206d9b85239bb057d6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d0d889ab9af76a7b056a64f042e336851b5e1a8068c3a149b9510e364828c175",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Support/Variant0d627a7f69d8335f103c52dec089400fc27ec22ca38b14206d9b85239bb057d6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:44c9b5c7-0b5c-20ce-7236-4c5a36c9b1d0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 617–635.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem card_support_eq_two {f : Perm α} : f.support.card = 2 ↔ IsSwap f := by
  constructor <;> intro h
  · obtain ⟨x, t, hmem, hins, ht⟩ := card_eq_succ.1 h
    obtain ⟨y, rfl⟩ := card_eq_one.1 ht
    rw [mem_singleton] at hmem
    refine' ⟨x, y, hmem, _⟩
    ext a
    have key : ∀ b, f b ≠ b ↔ _ := fun b => by rw [← mem_support, ← hins, mem_insert, mem_singleton]
    by_cases ha : f a = a
    · have ha' := not_or.mp (mt (key a).mpr (not_not.mpr ha))
      rw [ha, swap_apply_of_ne_of_ne ha'.1 ha'.2]
    · have ha' := (key (f a)).mp (mt f.apply_eq_iff_eq.mp ha)
      obtain rfl | rfl := (key a).mp ha
      · rw [Or.resolve_left ha' ha, swap_apply_left]
      · rw [Or.resolve_right ha' ha, swap_apply_right]
  · obtain ⟨x, y, hxy, rfl⟩ := h
    exact card_support_swap hxy
#align equiv.perm.card_support_eq_two Equiv.Perm.card_support_eq_two

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Support/Variant0d627a7f69d8335f103c52dec089400fc27ec22ca38b14206d9b85239bb057d6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Support/Variant0d627a7f69d8335f103c52dec089400fc27ec22ca38b14206d9b85239bb057d6.lean#L617).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `29f56ab5db0ee4f25653b9e32a027c63beb9818e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
