# hasProd_iff_tendsto_nat

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "068846239a74b9cff04c456bcba142809ac58eca",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 92,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/bb/bb9cfc34434d5c37f0085ca0d64a01bfc4afed88bab0fe1961dc496f7a30e5c1.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ea822b91-494c-c450-9035-cfdc90563446",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:36ea0388-bff1-5035-9f26-3db6fc491f65",
  "kind": "theorem",
  "lexical_name": "hasProd_iff_tendsto_nat",
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
  "slug": "hasprod-iff-tendsto-nat--2ff7d071b032687a8484098f",
  "source": {
    "blob": "068846239a74b9cff04c456bcba142809ac58eca",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 102,
    "line": 92,
    "path": "GRWTSK/Topology/GeneralTopology/NatInt/Variantbb9cfc34434d5c37f0085ca0d64a01bfc4afed88bab0fe1961dc496f7a30e5c1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2ff7d071b032687a8484098fcb46232d74bcdb60004cd416282ed6bfa77ef74e",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/NatInt/Variantbb9cfc34434d5c37f0085ca0d64a01bfc4afed88bab0fe1961dc496f7a30e5c1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:36ea0388-bff1-5035-9f26-3db6fc491f65`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 92–102.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem hasProd_iff_tendsto_nat [T2Space M] {f : ℕ → M} (hf : Multipliable f) :
    HasProd f m ↔ Tendsto (fun n : ℕ ↦ ∏ i ∈ range n, f i) atTop (𝓝 m) := by
  refine ⟨fun h ↦ h.tendsto_prod_nat, fun h ↦ ?_⟩
  rw [tendsto_nhds_unique h hf.hasProd.tendsto_prod_nat]
  exact hf.hasProd

section ContinuousMul

variable [ContinuousMul M]

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/NatInt/Variantbb9cfc34434d5c37f0085ca0d64a01bfc4afed88bab0fe1961dc496f7a30e5c1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/NatInt/Variantbb9cfc34434d5c37f0085ca0d64a01bfc4afed88bab0fe1961dc496f7a30e5c1.lean#L92).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `068846239a74b9cff04c456bcba142809ac58eca` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
