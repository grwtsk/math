# union_succ

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "82708c8da58af4765325ed46578dc2389e289121",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 292,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a0/a0487183bbe9d3d0abc8b07e077a23494413e984415250a620ead205f7ee960b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:fe2f0d80-c0e9-7e64-f1e8-b5ada6cc5f0a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0dbd9da3-5ffe-fd37-4670-55623e569994",
  "kind": "theorem",
  "lexical_name": "union_succ",
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
  "slug": "union-succ--061e0a470eb8ca90f4c67303",
  "source": {
    "blob": "82708c8da58af4765325ed46578dc2389e289121",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 317,
    "line": 292,
    "path": "GRWTSK/Topology/GeneralTopology/Successor/Varianta0487183bbe9d3d0abc8b07e077a23494413e984415250a620ead205f7ee960b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:061e0a470eb8ca90f4c67303e628fec5cb97eba9c1e95e88e829927a39e3ff8d",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Successor/Varianta0487183bbe9d3d0abc8b07e077a23494413e984415250a620ead205f7ee960b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0dbd9da3-5ffe-fd37-4670-55623e569994`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 292–317.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem union_succ : GoodProducts C = GoodProducts (π C (ord I · < o)) ∪ MaxProducts C ho := by
  ext l
  simp only [GoodProducts, MaxProducts, Set.mem_union, Set.mem_setOf_eq]
  refine ⟨fun h ↦ ?_, fun h ↦ ?_⟩
  · by_cases hh : term I ho ∈ l.val
    · exact Or.inr ⟨h, hh⟩
    · left
      intro he
      apply h
      have h' := Products.prop_of_isGood_of_contained C _ h hsC
      simp only [Order.lt_succ_iff] at h'
      simp only [not_imp_not] at hh
      have hh' : ∀ a ∈ l.val, ord I a < o := by
        intro a ha
        refine (h' a ha).lt_of_ne ?_
        rw [ne_eq, ord_term ho a]
        rintro rfl
        contradiction
      rwa [Products.eval_πs_image C hh', ← Products.eval_πs C hh',
        Submodule.apply_mem_span_image_iff_mem_span (injective_πs _ _)]
  · refine h.elim (fun hh ↦ ?_) And.left
    have := Products.isGood_mono C (Order.lt_succ o).le hh
    rwa [contained_eq_proj C (Order.succ o) hsC]

/-- The inclusion map from the sum of `GoodProducts (π C (ord I · < o))` and
    `(MaxProducts C ho)` to `Products I`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Successor/Varianta0487183bbe9d3d0abc8b07e077a23494413e984415250a620ead205f7ee960b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Successor/Varianta0487183bbe9d3d0abc8b07e077a23494413e984415250a620ead205f7ee960b.lean#L292).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `82708c8da58af4765325ed46578dc2389e289121` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
