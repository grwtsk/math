# IsCompactOperator.neg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c53119ad7127825fffda5d0df429d0284e8fd0ac",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 249,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/2b/2b83e756d8c12fd569eae9f2a519086f333e7407f4168f4ce188a7a95feba37f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1dd00c63-82cb-28e8-1166-1bc61983d4e9",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:526873b5-5cbc-cbf3-de37-1826fc3da423",
  "kind": "theorem",
  "lexical_name": "IsCompactOperator.neg",
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
  "slug": "iscompactoperator-neg--cce2ef49537ee34d491db184",
  "source": {
    "blob": "c53119ad7127825fffda5d0df429d0284e8fd0ac",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 253,
    "line": 249,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant2b83e756d8c12fd569eae9f2a519086f333e7407f4168f4ce188a7a95feba37f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cce2ef49537ee34d491db184e9c00b9005ef1abab6c957db7e973684a3d9ce2b",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variant2b83e756d8c12fd569eae9f2a519086f333e7407f4168f4ce188a7a95feba37f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:526873b5-5cbc-cbf3-de37-1826fc3da423`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 249–253.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsCompactOperator.neg [ContinuousNeg M₄] {f : M₁ → M₄} (hf : IsCompactOperator f) :
    IsCompactOperator (-f) :=
  let ⟨K, hK, hKf⟩ := hf
  ⟨-K, hK.neg, mem_of_superset hKf fun x (hx : f x ∈ K) => Set.neg_mem_neg.mpr hx⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant2b83e756d8c12fd569eae9f2a519086f333e7407f4168f4ce188a7a95feba37f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant2b83e756d8c12fd569eae9f2a519086f333e7407f4168f4ce188a7a95feba37f.lean#L249).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c53119ad7127825fffda5d0df429d0284e8fd0ac` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
