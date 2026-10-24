# C1_projOrd

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
      "line": 217,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a0/a0487183bbe9d3d0abc8b07e077a23494413e984415250a620ead205f7ee960b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6e518c7a-c83f-9046-e447-a7942be29677",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:576f21dc-ccaf-6cc7-661c-026d1b4358c8",
  "kind": "theorem",
  "lexical_name": "C1_projOrd",
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
  "slug": "c1-projord--d7ac63f7ba235c153cdaea4a",
  "source": {
    "blob": "82708c8da58af4765325ed46578dc2389e289121",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 232,
    "line": 217,
    "path": "GRWTSK/Topology/GeneralTopology/Successor/Varianta0487183bbe9d3d0abc8b07e077a23494413e984415250a620ead205f7ee960b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d7ac63f7ba235c153cdaea4a5740721c0c331a02c4647381afc9156bc5c948c8",
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

Occurrence: `result:576f21dc-ccaf-6cc7-661c-026d1b4358c8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 217–232.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem C1_projOrd {x : I → Bool} (hx : x ∈ C1 C ho) : SwapTrue o (Proj (ord I · < o) x) = x := by
  ext i
  dsimp [SwapTrue, Proj]
  split_ifs with hi h
  · rw [ord_term ho] at hi
    rw [← hx.2, hi]
  · rfl
  · simp only [not_lt] at h
    have h' : o < ord I i := lt_of_le_of_ne h (Ne.symm hi)
    specialize hsC x hx.1 i
    rw [← not_imp_not] at hsC
    simp only [not_lt, Bool.not_eq_true, Order.succ_le_iff] at hsC
    exact (hsC h').symm

include hC in
open scoped Classical in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Successor/Varianta0487183bbe9d3d0abc8b07e077a23494413e984415250a620ead205f7ee960b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Successor/Varianta0487183bbe9d3d0abc8b07e077a23494413e984415250a620ead205f7ee960b.lean#L217).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `82708c8da58af4765325ed46578dc2389e289121` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
