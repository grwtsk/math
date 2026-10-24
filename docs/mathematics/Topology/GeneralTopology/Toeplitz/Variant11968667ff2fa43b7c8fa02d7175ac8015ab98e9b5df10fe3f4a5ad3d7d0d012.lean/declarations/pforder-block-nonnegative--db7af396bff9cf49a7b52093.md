# PFOrder.block_nonnegative

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "090c2e08a9f0a54fe16e0b9a7c9116710c16ecda",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 81,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/11/11968667ff2fa43b7c8fa02d7175ac8015ab98e9b5df10fe3f4a5ad3d7d0d012.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:fd318d64-fe5d-c501-d01c-63ff63fa42fd",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:cd471029-71dc-b499-20c8-388fc678d4af",
  "kind": "theorem",
  "lexical_name": "PFOrder.block_nonnegative",
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
  "slug": "pforder-block-nonnegative--db7af396bff9cf49a7b52093",
  "source": {
    "blob": "090c2e08a9f0a54fe16e0b9a7c9116710c16ecda",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 88,
    "line": 81,
    "path": "GRWTSK/Topology/GeneralTopology/Toeplitz/Variant11968667ff2fa43b7c8fa02d7175ac8015ab98e9b5df10fe3f4a5ad3d7d0d012.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:db7af396bff9cf49a7b52093d8458afbd8e9db53e7bbd0712b6de9c2a265997b",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Toeplitz/Variant11968667ff2fa43b7c8fa02d7175ac8015ab98e9b5df10fe3f4a5ad3d7d0d012.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cd471029-71dc-b499-20c8-388fc678d4af`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 81–88.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem PFOrder.block_nonnegative {R N : ℕ} {a : ℕ → ℝ}
    (ha : PFOrder R a) (hN : N ≤ R) : FiniteNonnegative (block a N) := by
  intro k r c
  have hk : k ≤ N := by
    simpa using Fintype.card_le_of_injective r r.injective
  exact (pfOrder_iff_blocks R a).mp ha N k (hk.trans hN) r c

/-- Positive amplitude changes preserve and reflect bounded-order nonnegativity. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Toeplitz/Variant11968667ff2fa43b7c8fa02d7175ac8015ab98e9b5df10fe3f4a5ad3d7d0d012.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Toeplitz/Variant11968667ff2fa43b7c8fa02d7175ac8015ab98e9b5df10fe3f4a5ad3d7d0d012.lean#L81).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `090c2e08a9f0a54fe16e0b9a7c9116710c16ecda` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
