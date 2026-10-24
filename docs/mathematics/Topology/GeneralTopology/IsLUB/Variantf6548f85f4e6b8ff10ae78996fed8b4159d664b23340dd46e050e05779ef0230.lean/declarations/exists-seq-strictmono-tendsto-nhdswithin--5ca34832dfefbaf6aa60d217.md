# exists_seq_strictMono_tendsto_nhdsWithin

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b38f0860ef0fc467c0c7e0a81ebcea53fd9fb251",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 326,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f6/f6548f85f4e6b8ff10ae78996fed8b4159d664b23340dd46e050e05779ef0230.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c4698ad1-e4f0-fab6-4052-fb2e0f04dd9c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ba705e00-c6e0-b27d-3498-09874d72ee3e",
  "kind": "theorem",
  "lexical_name": "exists_seq_strictMono_tendsto_nhdsWithin",
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
  "slug": "exists-seq-strictmono-tendsto-nhdswithin--5ca34832dfefbaf6aa60d217",
  "source": {
    "blob": "b38f0860ef0fc467c0c7e0a81ebcea53fd9fb251",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 331,
    "line": 326,
    "path": "GRWTSK/Topology/GeneralTopology/IsLUB/Variantf6548f85f4e6b8ff10ae78996fed8b4159d664b23340dd46e050e05779ef0230.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5ca34832dfefbaf6aa60d2177b554c0923ca7e02d144dfd8e7cf8b288e4e83a8",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/IsLUB/Variantf6548f85f4e6b8ff10ae78996fed8b4159d664b23340dd46e050e05779ef0230.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ba705e00-c6e0-b27d-3498-09874d72ee3e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 326–331.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_seq_strictMono_tendsto_nhdsWithin [DenselyOrdered α] [NoMinOrder α]
    [FirstCountableTopology α] (x : α) :
    ∃ u : ℕ → α, StrictMono u ∧ (∀ n, u n < x) ∧ Tendsto u atTop (𝓝[<] x) :=
  let ⟨u, hu, hx, h⟩ := exists_seq_strictMono_tendsto x
  ⟨u, hu, hx, tendsto_nhdsWithin_mono_right (range_subset_iff.2 hx) <| tendsto_nhdsWithin_range.2 h⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/IsLUB/Variantf6548f85f4e6b8ff10ae78996fed8b4159d664b23340dd46e050e05779ef0230.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/IsLUB/Variantf6548f85f4e6b8ff10ae78996fed8b4159d664b23340dd46e050e05779ef0230.lean#L326).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b38f0860ef0fc467c0c7e0a81ebcea53fd9fb251` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
