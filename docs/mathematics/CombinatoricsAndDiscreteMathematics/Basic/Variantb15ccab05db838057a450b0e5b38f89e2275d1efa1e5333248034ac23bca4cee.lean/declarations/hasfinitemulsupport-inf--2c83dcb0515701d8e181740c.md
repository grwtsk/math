# HasFiniteMulSupport.inf'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "616bc499cbce3ca6810a89517267eb41d4fe7f5e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 158,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b1/b15ccab05db838057a450b0e5b38f89e2275d1efa1e5333248034ac23bca4cee.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:fdd1ae9a-6b64-b3b9-e169-abddc34735ef",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:53c82375-89f7-2f19-3a09-f4f9ac0f9f5c",
  "kind": "lemma",
  "lexical_name": "HasFiniteMulSupport.inf'",
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
  "slug": "hasfinitemulsupport-inf--2c83dcb0515701d8e181740c",
  "source": {
    "blob": "616bc499cbce3ca6810a89517267eb41d4fe7f5e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 169,
    "line": 158,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variantb15ccab05db838057a450b0e5b38f89e2275d1efa1e5333248034ac23bca4cee.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2c83dcb0515701d8e181740cb5cd11df497e386801d65f141bec2e0785b3059f",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Basic/Variantb15ccab05db838057a450b0e5b38f89e2275d1efa1e5333248034ac23bca4cee.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:53c82375-89f7-2f19-3a09-f4f9ac0f9f5c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 158–169.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma HasFiniteMulSupport.inf' [SemilatticeInf M] {ι : Type*} {f : ι → α → M}
    (s : Finset ι) (hf : ∀ i ∈ s, HasFiniteMulSupport (f i)) (hs : s.Nonempty) :
    HasFiniteMulSupport fun a ↦ s.inf' hs (f · a) := by
  simp only [HasFiniteMulSupport] at hf ⊢
  refine (s.finite_toSet.biUnion hf).subset fun a ha ↦ ?_
  simp only [mem_mulSupport, SetLike.mem_coe, Set.mem_iUnion, exists_prop] at ha ⊢
  contrapose! ha
  exact Finset.inf'_eq_of_forall hs (fun x ↦ f x a) ha

variable {β : Type*} {f : β → M} {g : α → β}

@[to_additive (attr := fun_prop)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Basic/Variantb15ccab05db838057a450b0e5b38f89e2275d1efa1e5333248034ac23bca4cee.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variantb15ccab05db838057a450b0e5b38f89e2275d1efa1e5333248034ac23bca4cee.lean#L158).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `616bc499cbce3ca6810a89517267eb41d4fe7f5e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
