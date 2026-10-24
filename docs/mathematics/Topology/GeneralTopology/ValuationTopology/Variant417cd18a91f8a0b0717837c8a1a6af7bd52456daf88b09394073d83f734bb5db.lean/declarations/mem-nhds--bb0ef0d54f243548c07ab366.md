# mem_nhds

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5e6f007ddb26082c407620e6c91a0521cb94a755",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 127,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/41/417cd18a91f8a0b0717837c8a1a6af7bd52456daf88b09394073d83f734bb5db.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:fb59aefa-f2a9-5470-534a-c0ef1e37ed6a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6a09f36c-4dae-b49c-9b05-4e1c90dd811b",
  "kind": "theorem",
  "lexical_name": "mem_nhds",
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
  "slug": "mem-nhds--bb0ef0d54f243548c07ab366",
  "source": {
    "blob": "5e6f007ddb26082c407620e6c91a0521cb94a755",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 130,
    "line": 127,
    "path": "GRWTSK/Topology/GeneralTopology/ValuationTopology/Variant417cd18a91f8a0b0717837c8a1a6af7bd52456daf88b09394073d83f734bb5db.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bb0ef0d54f243548c07ab366133a5effc6fc20bf85b3d6d6b95c7ac1ed859bb5",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ValuationTopology/Variant417cd18a91f8a0b0717837c8a1a6af7bd52456daf88b09394073d83f734bb5db.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6a09f36c-4dae-b49c-9b05-4e1c90dd811b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 127–130.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mem_nhds {s : Set R} {x : R} : s ∈ 𝓝 x ↔ ∃ γ : Γ₀ˣ, { y | (v (y - x) : Γ₀) < γ } ⊆ s := by
  simp only [← nhds_translation_add_neg x, ← sub_eq_add_neg, preimage_setOf_eq, true_and,
    ((hasBasis_nhds_zero R Γ₀).comap fun y => y - x).mem_iff]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ValuationTopology/Variant417cd18a91f8a0b0717837c8a1a6af7bd52456daf88b09394073d83f734bb5db.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ValuationTopology/Variant417cd18a91f8a0b0717837c8a1a6af7bd52456daf88b09394073d83f734bb5db.lean#L127).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5e6f007ddb26082c407620e6c91a0521cb94a755` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
