# acc_oneStep_cons_of_acc_lt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4c17ed32960049cac87af313a67d426ebe825819",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 104,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/97/97743e2b6b82a28a6f13392d6ac2b97dc82696d33f7a0618781c455020ac6551.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3b010744-0099-1ae3-dace-478bd8987c0f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2f209859-90a4-066a-6f9e-635a0de56cfc",
  "kind": "lemma",
  "lexical_name": "acc_oneStep_cons_of_acc_lt",
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
  "slug": "acc-onestep-cons-of-acc-lt--b41ae637fcef2d61333aadf4",
  "source": {
    "blob": "4c17ed32960049cac87af313a67d426ebe825819",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 122,
    "line": 104,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/DershowitzManna/Variant97743e2b6b82a28a6f13392d6ac2b97dc82696d33f7a0618781c455020ac6551.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b41ae637fcef2d61333aadf4a98b3011280787a568b81007f89072fc4b343343",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/DershowitzManna/Variant97743e2b6b82a28a6f13392d6ac2b97dc82696d33f7a0618781c455020ac6551.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2f209859-90a4-066a-6f9e-635a0de56cfc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 104–122.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma acc_oneStep_cons_of_acc_lt (ha : Acc LT.lt a) :
    ∀ {M}, Acc OneStep M → Acc OneStep (a ::ₘ M) := by
  induction ha with | _ a _ ha
  rintro M hM
  induction hM with | _ M hM ihM
  refine .intro _ fun N hNM ↦ ?_
  obtain ⟨N, ⟨rfl, hNM'⟩ | ⟨rfl, hN⟩⟩ := isDershowitzMannaLT_singleton_insert hNM
  · exact ihM _ hNM'
  clear hNM
  induction N using Multiset.induction with
  | empty =>
    simpa using .intro _ hM
  | @cons b N ihN =>
    simp only [mem_cons, forall_eq_or_imp, add_cons] at hN ⊢
    obtain ⟨hba, hN⟩ := hN
    exact ha _ hba <| ihN hN

/-- If all elements of a multiset `M` are accessible with `<`, then the multiset `M` is
accessible given the `OneStep` relation. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/DershowitzManna/Variant97743e2b6b82a28a6f13392d6ac2b97dc82696d33f7a0618781c455020ac6551.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/DershowitzManna/Variant97743e2b6b82a28a6f13392d6ac2b97dc82696d33f7a0618781c455020ac6551.lean#L104).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4c17ed32960049cac87af313a67d426ebe825819` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
