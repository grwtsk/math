# isCompact_closure_image_coe_of_bounded

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b9864a7dd2cf9a7f5dc10a732c5cc9fcd27dd2ae",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 88,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/1c/1c5414dc5f2bd00f9ff5b43ef1a5eaf567b136e88fcbf50b82d1468394c470dd.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9772d6ca-d4bb-821f-3ab3-9a7a098bdfba",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b3180b57-656e-8c76-9217-28aaa9fb48c4",
  "kind": "theorem",
  "lexical_name": "isCompact_closure_image_coe_of_bounded",
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
  "slug": "iscompact-closure-image-coe-of-bounded--e758ef92e7d6f452c5f1f2cf",
  "source": {
    "blob": "b9864a7dd2cf9a7f5dc10a732c5cc9fcd27dd2ae",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 99,
    "line": 88,
    "path": "GRWTSK/Topology/GeneralTopology/Completeness/Variant1c5414dc5f2bd00f9ff5b43ef1a5eaf567b136e88fcbf50b82d1468394c470dd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e758ef92e7d6f452c5f1f2cfb80c3b510f360b9b0ee95479db600bb6567dc359",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Completeness/Variant1c5414dc5f2bd00f9ff5b43ef1a5eaf567b136e88fcbf50b82d1468394c470dd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_SOURCE_DEPENDENCY"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b3180b57-656e-8c76-9217-28aaa9fb48c4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 88–99.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isCompact_closure_image_coe_of_bounded [ProperSpace F] {s : Set (E' →SL[σ₁₂] F)}
    (hb : IsBounded s) : IsCompact (closure (((↑) : (E' →SL[σ₁₂] F) → E' → F) '' s)) :=
  have : ∀ x, IsCompact (closure (apply' F σ₁₂ x '' s)) := fun x =>
    ((apply' F σ₁₂ x).lipschitz.isBounded_image hb).isCompact_closure
  (isCompact_pi_infinite this).closure_of_subset
    (image_subset_iff.2 fun _ hg _ => subset_closure <| mem_image_of_mem _ hg)

/-- Let `s` be a bounded set in the space of continuous (semi)linear maps `E →SL[σ] F` taking values
in a proper space. If `s` interpreted as a set in the space of maps `E → F` with topology of
pointwise convergence is closed, then it is compact.

TODO: reformulate this in terms of a type synonym with the right topology. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Completeness/Variant1c5414dc5f2bd00f9ff5b43ef1a5eaf567b136e88fcbf50b82d1468394c470dd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Completeness/Variant1c5414dc5f2bd00f9ff5b43ef1a5eaf567b136e88fcbf50b82d1468394c470dd.lean#L88).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b9864a7dd2cf9a7f5dc10a732c5cc9fcd27dd2ae` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
