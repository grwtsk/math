# mapEquiv_inf_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "fad80db455e7b17eabc5d29bc151685d38f37cc1",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 344,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/2b/2b74757713293f31406acf56ece32a1d22345d8521c60da11b4b03a8971de1e6.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8e1704d1-292e-0ff8-e966-147e8a8ec148",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:957e9bb3-b7dc-86f7-9917-5a5c8d916418",
  "kind": "lemma",
  "lexical_name": "mapEquiv_inf_eq",
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
  "slug": "mapequiv-inf-eq--7cca8c351f96a914ec922e0c",
  "source": {
    "blob": "fad80db455e7b17eabc5d29bc151685d38f37cc1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 352,
    "line": 344,
    "path": "GRWTSK/Topology/GeneralTopology/ClosedSubmodule/Variant2b74757713293f31406acf56ece32a1d22345d8521c60da11b4b03a8971de1e6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7cca8c351f96a914ec922e0cfb64778b613a41e62cd46a487706f284974e8bee",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ClosedSubmodule/Variant2b74757713293f31406acf56ece32a1d22345d8521c60da11b4b03a8971de1e6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:957e9bb3-b7dc-86f7-9917-5a5c8d916418`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 344–352.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma mapEquiv_inf_eq (f : M ≃L[R] N) {s t : ClosedSubmodule R M} :
    (s ⊓ t).mapEquiv f = s.mapEquiv f ⊓ t.mapEquiv f := by
  ext x
  simp only [Submodule.carrier_eq_coe, coe_toSubmodule, SetLike.mem_coe, toSubmodule_inf,
    Submodule.coe_inf, Set.mem_inter_iff, mem_mapEquiv_iff, mem_inf]

variable [ContinuousAdd N] [ContinuousConstSMul R N] [ContinuousAdd M] [ContinuousConstSMul R M]

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ClosedSubmodule/Variant2b74757713293f31406acf56ece32a1d22345d8521c60da11b4b03a8971de1e6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ClosedSubmodule/Variant2b74757713293f31406acf56ece32a1d22345d8521c60da11b4b03a8971de1e6.lean#L344).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fad80db455e7b17eabc5d29bc151685d38f37cc1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
