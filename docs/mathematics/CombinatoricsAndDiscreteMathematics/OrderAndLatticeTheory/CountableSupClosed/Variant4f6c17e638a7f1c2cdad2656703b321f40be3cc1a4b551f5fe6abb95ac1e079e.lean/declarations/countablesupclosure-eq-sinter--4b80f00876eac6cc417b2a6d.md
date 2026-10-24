# countableSupClosure_eq_sInter

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0a45dd6b280ea039ae5b4a66b87f60f2598302e4",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 227,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/4f/4f6c17e638a7f1c2cdad2656703b321f40be3cc1a4b551f5fe6abb95ac1e079e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:553af14e-ce1d-e190-c42a-0afd6361cb8d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:61b1ed83-865a-0041-2682-3ff8d2449a5e",
  "kind": "lemma",
  "lexical_name": "countableSupClosure_eq_sInter",
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
  "slug": "countablesupclosure-eq-sinter--4b80f00876eac6cc417b2a6d",
  "source": {
    "blob": "0a45dd6b280ea039ae5b4a66b87f60f2598302e4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 237,
    "line": 227,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CountableSupClosed/Variant4f6c17e638a7f1c2cdad2656703b321f40be3cc1a4b551f5fe6abb95ac1e079e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4b80f00876eac6cc417b2a6d72b5b5cd74323c6f6013e25c011dbcbf06cb12f9",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CountableSupClosed/Variant4f6c17e638a7f1c2cdad2656703b321f40be3cc1a4b551f5fe6abb95ac1e079e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:61b1ed83-865a-0041-2682-3ff8d2449a5e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 227–237.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma countableSupClosure_eq_sInter (s : Set α) :
    countableSupClosure s = ⋂₀ {t | s ⊆ t ∧ CountableSupClosed t} := by
  have : CountableSupClosed (⋂₀ {t | s ⊆ t ∧ CountableSupClosed t}) := by
    constructor
    simp only [Set.subset_sInter_iff, Set.mem_ofPred_eq, and_imp, Set.mem_sInter]
    intro t ht ht_ne ht_c x hx t' hst' ht'
    exact ht'.isLUB_mem t (ht t' hst' ht') ht_ne ht_c x hx
  refine le_antisymm (countableSupClosure_min (by grind) (by grind)) (Set.sInter_subset_of_mem ?_)
  exact ⟨subset_countableSupClosure, countableSupClosed_countableSupClosure⟩

@[to_dual]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CountableSupClosed/Variant4f6c17e638a7f1c2cdad2656703b321f40be3cc1a4b551f5fe6abb95ac1e079e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CountableSupClosed/Variant4f6c17e638a7f1c2cdad2656703b321f40be3cc1a4b551f5fe6abb95ac1e079e.lean#L227).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0a45dd6b280ea039ae5b4a66b87f60f2598302e4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
