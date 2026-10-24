# finprod_mem_inter_mul_sdiff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "41d0601cb61b9c27d36e50613b852e7515f6eb2f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1007,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/0a/0a222810fd6aa6fa55745406c300714a925fc5c3a8adcb9fcfaecdb6a8564718.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:52e374a1-cc91-e48f-1614-948656e56747",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e5452dba-bd56-1679-d692-67d7f1a3a52d",
  "kind": "theorem",
  "lexical_name": "finprod_mem_inter_mul_sdiff",
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
  "slug": "finprod-mem-inter-mul-sdiff--48937ef583d5b1591386dd81",
  "source": {
    "blob": "41d0601cb61b9c27d36e50613b852e7515f6eb2f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1018,
    "line": 1007,
    "path": "GRWTSK/Algebra/GroupTheory/Finprod/Variant0a222810fd6aa6fa55745406c300714a925fc5c3a8adcb9fcfaecdb6a8564718.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:48937ef583d5b1591386dd81055de7138c508ce8a9660291ffbf098f7804c56c",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Finprod/Variant0a222810fd6aa6fa55745406c300714a925fc5c3a8adcb9fcfaecdb6a8564718.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e5452dba-bd56-1679-d692-67d7f1a3a52d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1007–1018.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem finprod_mem_inter_mul_sdiff (t : Set α) (h : s.Finite) :
    ((∏ᶠ i ∈ s ∩ t, f i) * ∏ᶠ i ∈ s \ t, f i) = ∏ᶠ i ∈ s, f i :=
  finprod_mem_inter_mul_sdiff' _ <| h.inter_of_left _

@[deprecated (since := "2026-06-03")]
alias finprod_mem_inter_mul_diff := finprod_mem_inter_mul_sdiff

/-- A more general version of `finprod_mem_mul_diff` that requires `t ∩ mulSupport f` rather than
`t` to be finite. -/
@[to_additive
      /-- A more general version of `finsum_mem_add_diff` that requires `t ∩ support f` rather
      than `t` to be finite. -/]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Finprod/Variant0a222810fd6aa6fa55745406c300714a925fc5c3a8adcb9fcfaecdb6a8564718.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Finprod/Variant0a222810fd6aa6fa55745406c300714a925fc5c3a8adcb9fcfaecdb6a8564718.lean#L1007).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `41d0601cb61b9c27d36e50613b852e7515f6eb2f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
