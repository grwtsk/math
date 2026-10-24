# comap_mul_comap_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b83118fa-5941-02df-714e-fff7c55d74ea",
  "kind": "theorem",
  "lexical_name": "comap_mul_comap_le",
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
  "slug": "comap-mul-comap-le--0d18e0b0653114b4e9f32d23",
  "source": {
    "blob": "f44f14855a7cceda6219b62385caf571a591ca77",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 518,
    "line": 513,
    "path": "GRWTSK/Topology/GeneralTopology/Pointwise/Variant1755cea992130c83d5c9d0d55fe3e3b894dba2889dfe7b1b03bae8fab735e2bf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0d18e0b0653114b4e9f32d230e3bfaf693ccf80cd2d8ba6172dc7625543e8884",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Pointwise/Variant1755cea992130c83d5c9d0d55fe3e3b894dba2889dfe7b1b03bae8fab735e2bf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b83118fa-5941-02df-714e-fff7c55d74ea`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 513–518.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem comap_mul_comap_le [MulHomClass F α β] (m : F) {f g : Filter β} :
    f.comap m * g.comap m ≤ (f * g).comap m := fun _ ⟨_, ⟨t₁, ht₁, t₂, ht₂, t₁t₂⟩, mt⟩ =>
  ⟨m ⁻¹' t₁, ⟨t₁, ht₁, Subset.rfl⟩, m ⁻¹' t₂, ⟨t₂, ht₂, Subset.rfl⟩,
    (preimage_mul_preimage_subset _).trans <| (preimage_mono t₁t₂).trans mt⟩

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Pointwise/Variant1755cea992130c83d5c9d0d55fe3e3b894dba2889dfe7b1b03bae8fab735e2bf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Pointwise/Variant1755cea992130c83d5c9d0d55fe3e3b894dba2889dfe7b1b03bae8fab735e2bf.lean#L513).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f44f14855a7cceda6219b62385caf571a591ca77` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
