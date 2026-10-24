# exists_across

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "dcd3b17b5cd06c739512ef9ba00a4f48af355372",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 94,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/29/2994efa8ac349b5f58cf15c64a2d574efc8a1bbe9a4e19972732b20c137cf4e5.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b02859e5-f6ad-e742-4f29-26c57ad9fca0",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e15c9038-f513-1565-15f0-1cdb9db3ced5",
  "kind": "theorem",
  "lexical_name": "exists_across",
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
  "slug": "exists-across--8103268c0c5c38c7beb418c4",
  "source": {
    "blob": "dcd3b17b5cd06c739512ef9ba00a4f48af355372",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 125,
    "line": 94,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/CountableDenseLinearOrder/Variant2994efa8ac349b5f58cf15c64a2d574efc8a1bbe9a4e19972732b20c137cf4e5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8103268c0c5c38c7beb418c4c27c5c7f4205cdefba1c5284d99a045480578765",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/CountableDenseLinearOrder/Variant2994efa8ac349b5f58cf15c64a2d574efc8a1bbe9a4e19972732b20c137cf4e5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e15c9038-f513-1565-15f0-1cdb9db3ced5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 94–125.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_across [DenselyOrdered β] [NoMinOrder β] [NoMaxOrder β] [Nonempty β]
    (f : PartialIso α β) (a : α) :
    ∃ b : β, ∀ p ∈ f.val, cmp (Prod.fst p) a = cmp (Prod.snd p) b := by
  by_cases h : ∃ b, (a, b) ∈ f.val
  · cases' h with b hb
    exact ⟨b, fun p hp ↦ f.prop _ hp _ hb⟩
  have :
    ∀ x ∈ (f.val.filter fun p : α × β ↦ p.fst < a).image Prod.snd,
      ∀ y ∈ (f.val.filter fun p : α × β ↦ a < p.fst).image Prod.snd, x < y := by
    intro x hx y hy
    rw [Finset.mem_image] at hx hy
    rcases hx with ⟨p, hp1, rfl⟩
    rcases hy with ⟨q, hq1, rfl⟩
    rw [Finset.mem_filter] at hp1 hq1
    rw [← lt_iff_lt_of_cmp_eq_cmp (f.prop _ hp1.1 _ hq1.1)]
    exact lt_trans hp1.right hq1.right
  cases' exists_between_finsets _ _ this with b hb
  use b
  rintro ⟨p1, p2⟩ hp
  have : p1 ≠ a := fun he ↦ h ⟨p2, he ▸ hp⟩
  cases' lt_or_gt_of_ne this with hl hr
  · have : p1 < a ∧ p2 < b :=
      ⟨hl, hb.1 _ (Finset.mem_image.mpr ⟨(p1, p2), Finset.mem_filter.mpr ⟨hp, hl⟩, rfl⟩)⟩
    rw [← cmp_eq_lt_iff, ← cmp_eq_lt_iff] at this
    exact this.1.trans this.2.symm
  · have : a < p1 ∧ b < p2 :=
      ⟨hr, hb.2 _ (Finset.mem_image.mpr ⟨(p1, p2), Finset.mem_filter.mpr ⟨hp, hr⟩, rfl⟩)⟩
    rw [← cmp_eq_gt_iff, ← cmp_eq_gt_iff] at this
    exact this.1.trans this.2.symm
#align order.partial_iso.exists_across Order.PartialIso.exists_across

/-- A partial isomorphism between `α` and `β` is also a partial isomorphism between `β` and `α`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/CountableDenseLinearOrder/Variant2994efa8ac349b5f58cf15c64a2d574efc8a1bbe9a4e19972732b20c137cf4e5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/CountableDenseLinearOrder/Variant2994efa8ac349b5f58cf15c64a2d574efc8a1bbe9a4e19972732b20c137cf4e5.lean#L94).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dcd3b17b5cd06c739512ef9ba00a4f48af355372` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
