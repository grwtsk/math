# C0_projOrd

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
      "line": 203,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a0/a0487183bbe9d3d0abc8b07e077a23494413e984415250a620ead205f7ee960b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:08f1e243-8adf-29e1-461d-f96e4bbc1102",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:caed2917-8039-9bbf-4741-0910f07661b6",
  "kind": "theorem",
  "lexical_name": "C0_projOrd",
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
  "slug": "c0-projord--429cc1e7bd3bfa628d51a8dd",
  "source": {
    "blob": "82708c8da58af4765325ed46578dc2389e289121",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 216,
    "line": 203,
    "path": "GRWTSK/Topology/GeneralTopology/Successor/Varianta0487183bbe9d3d0abc8b07e077a23494413e984415250a620ead205f7ee960b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:429cc1e7bd3bfa628d51a8dd36b67bb5c6c00d7ffbd0850097b906421ff1d4af",
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

Occurrence: `result:caed2917-8039-9bbf-4741-0910f07661b6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 203–216.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem C0_projOrd {x : I → Bool} (hx : x ∈ C0 C ho) : Proj (ord I · < o) x = x := by
  ext i
  simp only [Proj, Set.mem_setOf, ite_eq_left_iff, not_lt]
  intro hi
  rcases hi.lt_or_eq with hi | hi
  · specialize hsC x hx.1 i
    rw [← not_imp_not] at hsC
    simp only [not_lt, Bool.not_eq_true, Order.succ_le_iff] at hsC
    exact (hsC hi).symm
  · simp only [C0, Set.mem_inter_iff, Set.mem_setOf_eq] at hx
    rw [eq_comm, ord_term ho] at hi
    rw [← hx.2, hi]

include hsC in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Successor/Varianta0487183bbe9d3d0abc8b07e077a23494413e984415250a620ead205f7ee960b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Successor/Varianta0487183bbe9d3d0abc8b07e077a23494413e984415250a620ead205f7ee960b.lean#L203).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `82708c8da58af4765325ed46578dc2389e289121` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
