# neighborSet_eq_of_equiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6655eb7ff5da76cf20409673705ca83fff2be164",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 861,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b1/b137eb55796eeaedc832cf8a5e30bfdc9576fc442ffc98ebe1e2b2bc642d76b6.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b488ede3-424c-e339-080e-c82c740820b0",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2a0151eb-a168-e7c9-ccca-a8571860b88c",
  "kind": "lemma",
  "lexical_name": "neighborSet_eq_of_equiv",
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
  "slug": "neighborset-eq-of-equiv--22fb321f0671a7b340e57124",
  "source": {
    "blob": "6655eb7ff5da76cf20409673705ca83fff2be164",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 869,
    "line": 861,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Subgraph/Variantb137eb55796eeaedc832cf8a5e30bfdc9576fc442ffc98ebe1e2b2bc642d76b6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:22fb321f0671a7b340e571249898c604a27a0503d73fb3a07679ea8c63da42fd",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/GraphTheory/Subgraph/Variantb137eb55796eeaedc832cf8a5e30bfdc9576fc442ffc98ebe1e2b2bc642d76b6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2a0151eb-a168-e7c9-ccca-a8571860b88c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 861–869.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma neighborSet_eq_of_equiv {v : V} {H : Subgraph G}
    (h : G.neighborSet v ≃ H.neighborSet v) (hfin : (G.neighborSet v).Finite) :
    H.neighborSet v = G.neighborSet v := by
  lift H.neighborSet v to Finset V using h.set_finite_iff.mp hfin with s hs
  lift G.neighborSet v to Finset V using hfin with t ht
  refine congrArg _ <| Finset.eq_of_subset_of_card_le ?_ (Finset.card_eq_of_equiv h).le
  rw [← Finset.coe_subset, hs, ht]
  exact H.neighborSet_subset _

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/GraphTheory/Subgraph/Variantb137eb55796eeaedc832cf8a5e30bfdc9576fc442ffc98ebe1e2b2bc642d76b6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Subgraph/Variantb137eb55796eeaedc832cf8a5e30bfdc9576fc442ffc98ebe1e2b2bc642d76b6.lean#L861).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6655eb7ff5da76cf20409673705ca83fff2be164` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
