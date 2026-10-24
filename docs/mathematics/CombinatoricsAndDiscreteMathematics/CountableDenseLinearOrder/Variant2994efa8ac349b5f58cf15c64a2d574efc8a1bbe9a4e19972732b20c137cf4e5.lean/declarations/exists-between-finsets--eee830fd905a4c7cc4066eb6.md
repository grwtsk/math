# exists_between_finsets

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
      "line": 44,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/29/2994efa8ac349b5f58cf15c64a2d574efc8a1bbe9a4e19972732b20c137cf4e5.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c0aac554-0dea-644e-d671-d230896a483b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8f9a3403-ef56-dd0f-94ae-f473d8811bb9",
  "kind": "theorem",
  "lexical_name": "exists_between_finsets",
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
  "slug": "exists-between-finsets--eee830fd905a4c7cc4066eb6",
  "source": {
    "blob": "dcd3b17b5cd06c739512ef9ba00a4f48af355372",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 74,
    "line": 44,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/CountableDenseLinearOrder/Variant2994efa8ac349b5f58cf15c64a2d574efc8a1bbe9a4e19972732b20c137cf4e5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:eee830fd905a4c7cc4066eb6b0bfc50426435e8393ac95b16d85870e82469104",
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

Occurrence: `result:8f9a3403-ef56-dd0f-94ae-f473d8811bb9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 44–74.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_between_finsets {α : Type*} [LinearOrder α] [DenselyOrdered α] [NoMinOrder α]
    [NoMaxOrder α] [nonem : Nonempty α] (lo hi : Finset α) (lo_lt_hi : ∀ x ∈ lo, ∀ y ∈ hi, x < y) :
    ∃ m : α, (∀ x ∈ lo, x < m) ∧ ∀ y ∈ hi, m < y :=
  if nlo : lo.Nonempty then
    if nhi : hi.Nonempty then
      -- both sets are nonempty, use densely_ordered
        Exists.elim
        (exists_between (lo_lt_hi _ (Finset.max'_mem _ nlo) _ (Finset.min'_mem _ nhi))) fun m hm ↦
        ⟨m, fun x hx ↦ lt_of_le_of_lt (Finset.le_max' lo x hx) hm.1, fun y hy ↦
          lt_of_lt_of_le hm.2 (Finset.min'_le hi y hy)⟩
    else-- upper set is empty, use `NoMaxOrder`
        Exists.elim
        (exists_gt (Finset.max' lo nlo)) fun m hm ↦
        ⟨m, fun x hx ↦ lt_of_le_of_lt (Finset.le_max' lo x hx) hm, fun y hy ↦ (nhi ⟨y, hy⟩).elim⟩
  else
    if nhi : hi.Nonempty then
      -- lower set is empty, use `NoMinOrder`
        Exists.elim
        (exists_lt (Finset.min' hi nhi)) fun m hm ↦
        ⟨m, fun x hx ↦ (nlo ⟨x, hx⟩).elim, fun y hy ↦ lt_of_lt_of_le hm (Finset.min'_le hi y hy)⟩
    else-- both sets are empty, use nonempty
          nonem.elim
        fun m ↦ ⟨m, fun x hx ↦ (nlo ⟨x, hx⟩).elim, fun y hy ↦ (nhi ⟨y, hy⟩).elim⟩
#align order.exists_between_finsets Order.exists_between_finsets

variable (α β : Type*) [LinearOrder α] [LinearOrder β]

-- Porting note: Mathport warning: expanding binder collection (p q «expr ∈ » f)
/-- The type of partial order isomorphisms between `α` and `β` defined on finite subsets.
    A partial order isomorphism is encoded as a finite subset of `α × β`, consisting
    of pairs which should be identified. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/CountableDenseLinearOrder/Variant2994efa8ac349b5f58cf15c64a2d574efc8a1bbe9a4e19972732b20c137cf4e5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/CountableDenseLinearOrder/Variant2994efa8ac349b5f58cf15c64a2d574efc8a1bbe9a4e19972732b20c137cf4e5.lean#L44).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dcd3b17b5cd06c739512ef9ba00a4f48af355372` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
