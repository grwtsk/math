# pfOrder_of_coefficientwise_limit

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
      "line": 110,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/11/11968667ff2fa43b7c8fa02d7175ac8015ab98e9b5df10fe3f4a5ad3d7d0d012.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:fa14dc7a-c76c-c49c-7d54-dcfdfe56696d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:934bbe85-79d9-adfa-8c63-38a624f2f808",
  "kind": "theorem",
  "lexical_name": "pfOrder_of_coefficientwise_limit",
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
  "slug": "pforder-of-coefficientwise-limit--02956559f4980efdebb43d8f",
  "source": {
    "blob": "090c2e08a9f0a54fe16e0b9a7c9116710c16ecda",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 120,
    "line": 110,
    "path": "GRWTSK/Topology/GeneralTopology/Toeplitz/Variant11968667ff2fa43b7c8fa02d7175ac8015ab98e9b5df10fe3f4a5ad3d7d0d012.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:02956559f4980efdebb43d8fc99f2180257373e700b618749d78a19cc1ad279c",
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

Occurrence: `result:934bbe85-79d9-adfa-8c63-38a624f2f808`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 110–120.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem pfOrder_of_coefficientwise_limit
    (R : ℕ) (a : ℕ → ℕ → ℝ) (b : ℕ → ℝ)
    (hlim : ∀ n, Tendsto (fun j => a j n) atTop (𝓝 (b n)))
    (hpos : ∀ j, PFOrder R (a j)) : PFOrder R b := by
  apply pfOrder_of_eventually_minor_nonnegative R a b hlim
  intro k hk r c
  exact Filter.Eventually.of_forall (fun j => hpos j k hk r c)

end

end FormalResearch.PositiveAtlas.Grassmannian.Toeplitz
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Toeplitz/Variant11968667ff2fa43b7c8fa02d7175ac8015ab98e9b5df10fe3f4a5ad3d7d0d012.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Toeplitz/Variant11968667ff2fa43b7c8fa02d7175ac8015ab98e9b5df10fe3f4a5ad3d7d0d012.lean#L110).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `090c2e08a9f0a54fe16e0b9a7c9116710c16ecda` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
