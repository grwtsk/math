# finprod_mem_comm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5cd662e30609b370067171c320027600234b9496",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1142,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/8c/8c596b036f3d4c02eee7d553d9c8464ba02e9b94ad9389650f9da9669a4a45ed.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:da242875-a1cb-e6c8-8ce3-6b61f40ba068",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4804b3b1-0466-a972-94b8-381229729bc6",
  "kind": "theorem",
  "lexical_name": "finprod_mem_comm",
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
  "slug": "finprod-mem-comm--54606829bc725e3c0d0f6ddf",
  "source": {
    "blob": "5cd662e30609b370067171c320027600234b9496",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1154,
    "line": 1142,
    "path": "GRWTSK/Algebra/GroupTheory/Finprod/Variant8c596b036f3d4c02eee7d553d9c8464ba02e9b94ad9389650f9da9669a4a45ed.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:54606829bc725e3c0d0f6ddfab02abcca2666f00ee6a0ffc82c6b646d47bfc07",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Finprod/Variant8c596b036f3d4c02eee7d553d9c8464ba02e9b94ad9389650f9da9669a4a45ed.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4804b3b1-0466-a972-94b8-381229729bc6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1142–1154.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem finprod_mem_comm {s : Set α} {t : Set β} (f : α → β → M) (hs : s.Finite) (ht : t.Finite) :
    (∏ᶠ i ∈ s, ∏ᶠ j ∈ t, f i j) = ∏ᶠ j ∈ t, ∏ᶠ i ∈ s, f i j := by
  lift s to Finset α using hs; lift t to Finset β using ht
  simp only [finprod_mem_coe_finset]
  exact Finset.prod_comm
#align finprod_mem_comm finprod_mem_comm
#align finsum_mem_comm finsum_mem_comm

/-- To prove a property of a finite product, it suffices to prove that the property is
multiplicative and holds on factors. -/
@[to_additive
      "To prove a property of a finite sum, it suffices to prove that the property is
      additive and holds on summands."]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Finprod/Variant8c596b036f3d4c02eee7d553d9c8464ba02e9b94ad9389650f9da9669a4a45ed.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Finprod/Variant8c596b036f3d4c02eee7d553d9c8464ba02e9b94ad9389650f9da9669a4a45ed.lean#L1142).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5cd662e30609b370067171c320027600234b9496` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
