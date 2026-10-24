# tendsto_nhds_top_mono

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "55a7510276f30c2bbe70b43993143d137ed0ed25",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 333,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/7a/7abbc2255c0efe89274b440c3401ef7f707e39b498e092152e924dc48d23e639.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4f933dcb-f997-2230-cb29-dba48fc4e812",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6dddbeb3-0a3e-3161-1f01-ad49e58886f5",
  "kind": "theorem",
  "lexical_name": "tendsto_nhds_top_mono",
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
  "slug": "tendsto-nhds-top-mono--f4ad9fc9073f24712576f772",
  "source": {
    "blob": "55a7510276f30c2bbe70b43993143d137ed0ed25",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 338,
    "line": 333,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant7abbc2255c0efe89274b440c3401ef7f707e39b498e092152e924dc48d23e639.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f4ad9fc9073f24712576f77266000b193a5556e99da5c4a8150f60acc95a8475",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variant7abbc2255c0efe89274b440c3401ef7f707e39b498e092152e924dc48d23e639.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6dddbeb3-0a3e-3161-1f01-ad49e58886f5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 333–338.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tendsto_nhds_top_mono [TopologicalSpace β] [Preorder β] [OrderTop β] [OrderTopology β]
    {l : Filter α} {f g : α → β} (hf : Tendsto f l (𝓝 ⊤)) (hg : f ≤ᶠ[l] g) : Tendsto g l (𝓝 ⊤) := by
  simp only [nhds_top_order, tendsto_iInf, tendsto_principal] at hf ⊢
  intro x hx
  filter_upwards [hf x hx, hg] with _ using lt_of_lt_of_le

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant7abbc2255c0efe89274b440c3401ef7f707e39b498e092152e924dc48d23e639.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant7abbc2255c0efe89274b440c3401ef7f707e39b498e092152e924dc48d23e639.lean#L333).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `55a7510276f30c2bbe70b43993143d137ed0ed25` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
