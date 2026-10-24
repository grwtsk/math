# iSup_induction'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7f00b08027bb80dcd65b1b146532c39195bce6b8",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 133,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/6e/6e2003bb7c6a8b7e38a34d4112967ef4b626b2b2dfdb8a0caec7867567cf1924.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:54d389e8-e33f-f499-5838-7c48e79b07c2",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:60488a5a-bc3c-f8bf-527e-b7ff7a11a230",
  "kind": "theorem",
  "lexical_name": "iSup_induction'",
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
  "slug": "isup-induction--b6037f50d248f51dfc31a4ad",
  "source": {
    "blob": "7f00b08027bb80dcd65b1b146532c39195bce6b8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 148,
    "line": 133,
    "path": "GRWTSK/Algebra/GroupTheory/Membership/Variant6e2003bb7c6a8b7e38a34d4112967ef4b626b2b2dfdb8a0caec7867567cf1924.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b6037f50d248f51dfc31a4ad5674bbb19c03ee93c6a9276008e2389c165423ef",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Membership/Variant6e2003bb7c6a8b7e38a34d4112967ef4b626b2b2dfdb8a0caec7867567cf1924.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:60488a5a-bc3c-f8bf-527e-b7ff7a11a230`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 133–148.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem iSup_induction' (S : ι → Subsemigroup M) {C : ∀ x, (x ∈ ⨆ i, S i) → Prop}
    (hp : ∀ (i) (x) (hxS : x ∈ S i), C x (mem_iSup_of_mem i ‹_›))
    (hmul : ∀ x y hx hy, C x hx → C y hy → C (x * y) (mul_mem ‹_› ‹_›)) {x₁ : M}
    (hx₁ : x₁ ∈ ⨆ i, S i) : C x₁ hx₁ := by
  refine Exists.elim ?_ fun (hx₁' : x₁ ∈ ⨆ i, S i) (hc : C x₁ hx₁') => hc
  refine @iSup_induction _ _ _ S (fun x' => ∃ hx'', C x' hx'') _ hx₁
      (fun i x₂ hx₂ => ?_) fun x₃ y => ?_
  · exact ⟨_, hp _ _ hx₂⟩
  · rintro ⟨_, Cx⟩ ⟨_, Cy⟩
    exact ⟨_, hmul _ _ _ _ Cx Cy⟩
#align subsemigroup.supr_induction' Subsemigroup.iSup_induction'
#align add_subsemigroup.supr_induction' AddSubsemigroup.iSup_induction'

end Subsemigroup

end NonAssoc
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Membership/Variant6e2003bb7c6a8b7e38a34d4112967ef4b626b2b2dfdb8a0caec7867567cf1924.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Membership/Variant6e2003bb7c6a8b7e38a34d4112967ef4b626b2b2dfdb8a0caec7867567cf1924.lean#L133).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7f00b08027bb80dcd65b1b146532c39195bce6b8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
