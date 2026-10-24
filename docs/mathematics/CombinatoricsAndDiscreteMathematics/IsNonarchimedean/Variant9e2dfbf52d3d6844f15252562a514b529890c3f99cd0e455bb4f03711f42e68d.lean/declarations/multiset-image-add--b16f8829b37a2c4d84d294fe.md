# multiset_image_add

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1cd2b8f728b68784ac60ac031c370e2cb602c3aa",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 134,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/9e/9e2dfbf52d3d6844f15252562a514b529890c3f99cd0e455bb4f03711f42e68d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5c2eaf8e-c0f8-6cec-649b-7fe3c5beec53",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7f28332e-2d00-183a-e6cc-42bb600176a7",
  "kind": "theorem",
  "lexical_name": "multiset_image_add",
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
  "slug": "multiset-image-add--b16f8829b37a2c4d84d294fe",
  "source": {
    "blob": "1cd2b8f728b68784ac60ac031c370e2cb602c3aa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 146,
    "line": 134,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/IsNonarchimedean/Variant9e2dfbf52d3d6844f15252562a514b529890c3f99cd0e455bb4f03711f42e68d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b16f8829b37a2c4d84d294feeae57fbca28a4eabda41a0db24da4e2a58ad4b50",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/IsNonarchimedean/Variant9e2dfbf52d3d6844f15252562a514b529890c3f99cd0e455bb4f03711f42e68d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7f28332e-2d00-183a-e6cc-42bb600176a7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 134–146.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem multiset_image_add {F α β : Type*} [AddCommMonoid α] [FunLike F α R] [ZeroHomClass F α R]
    [NonnegHomClass F α R] [Nonempty β] {f : F} (hna : IsNonarchimedean f) (g : β → α)
    (s : Multiset β) : ∃ b : β, (s ≠ 0 → b ∈ s) ∧ f (Multiset.map g s).sum ≤ f (g b) := by
  induction s using Multiset.induction_on with
  | empty => simp
  | cons a s h =>
    obtain ⟨b, hb1, hb2⟩ := multiset_image_add_of_nonempty (s := a ::ₘ s)
      hna g Multiset.cons_ne_zero
    exact ⟨b, fun _ ↦ hb1, hb2⟩

/-- Given a nonegative nonarchimedean function `α → R` such that `f 0 = 0`, a function `g : β → α`
  and a finset `t : Finset β`, we can always find `b : β`, belonging to `t` if `t` is nonempty,
  such that `f (t.sum g) ≤ f (g b)` . -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/IsNonarchimedean/Variant9e2dfbf52d3d6844f15252562a514b529890c3f99cd0e455bb4f03711f42e68d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/IsNonarchimedean/Variant9e2dfbf52d3d6844f15252562a514b529890c3f99cd0e455bb4f03711f42e68d.lean#L134).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1cd2b8f728b68784ac60ac031c370e2cb602c3aa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
