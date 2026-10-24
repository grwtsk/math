# continuousAt_sub

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "17dc7c5ba2e0aeaaed8582d74506f91decc53f2f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 88,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/1b/1baa7c01aa9f8e62077e44564eb13349d86049644afebf869ded0df9d602efe1.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ea1e80ff-01ad-4f1f-84be-c9251ccffc19",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1206f1aa-b5b4-9f76-4784-6c18d0ddb6f3",
  "kind": "theorem",
  "lexical_name": "continuousAt_sub",
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
  "slug": "continuousat-sub--9b5233ffe8419efbf6657613",
  "source": {
    "blob": "17dc7c5ba2e0aeaaed8582d74506f91decc53f2f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 102,
    "line": 88,
    "path": "GRWTSK/Topology/GeneralTopology/ENat/Variant1baa7c01aa9f8e62077e44564eb13349d86049644afebf869ded0df9d602efe1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9b5233ffe8419efbf66576136e2728600aad2309c99870347b50e315fab8d66e",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ENat/Variant1baa7c01aa9f8e62077e44564eb13349d86049644afebf869ded0df9d602efe1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1206f1aa-b5b4-9f76-4784-6c18d0ddb6f3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 88–102.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem continuousAt_sub {a b : ℕ∞} (h : a ≠ ⊤ ∨ b ≠ ⊤) :
    ContinuousAt (· - ·).uncurry (a, b) := by
  match a, b, h with
  | (a : ℕ), (b : ℕ), _ => simp [ContinuousAt, nhds_prod_eq]
  | (a : ℕ), ⊤, _ =>
    suffices ∀ᶠ b in 𝓝 ⊤, (a - b : ℕ∞) = 0 by
      simpa [ContinuousAt, nhds_prod_eq, tsub_eq_zero_of_le]
    filter_upwards [le_mem_nhds (WithTop.coe_lt_top a)] with b using tsub_eq_zero_of_le
  | ⊤, (b : ℕ), _ =>
    suffices ∀ n : ℕ, ∀ᶠ a : ℕ∞ in 𝓝 ⊤, b + n < a by
      simpa [ContinuousAt, nhds_prod_eq, (· ∘ ·), lt_tsub_iff_left, tendsto_nhds_top_iff_natCast_lt]
    exact fun n ↦ lt_mem_nhds <| WithTop.coe_lt_top (b + n)

end ENat

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ENat/Variant1baa7c01aa9f8e62077e44564eb13349d86049644afebf869ded0df9d602efe1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ENat/Variant1baa7c01aa9f8e62077e44564eb13349d86049644afebf869ded0df9d602efe1.lean#L88).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `17dc7c5ba2e0aeaaed8582d74506f91decc53f2f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
