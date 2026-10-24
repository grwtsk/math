# IsCompact.mem_nhdsSet_inf_of_forall

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9518f2ce-484b-20bb-03c9-554708ceb250",
  "kind": "theorem",
  "lexical_name": "IsCompact.mem_nhdsSet_inf_of_forall",
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
  "slug": "iscompact-mem-nhdsset-inf-of-forall--bd306a8eb96a5d5bd5b44ece",
  "source": {
    "blob": "50faf667b485e24757b73ff5809b3fb7d2f4a5ba",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 424,
    "line": 418,
    "path": "GRWTSK/Topology/GeneralTopology/Compact/Variantf4afc5d05c1ad4a4cd2e2bf530b09036091528166b6644659aef1924ac27f683.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bd306a8eb96a5d5bd5b44ecec30e71f7b496fcde75706e7d220f27a4c3a82845",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Compact/Variantf4afc5d05c1ad4a4cd2e2bf530b09036091528166b6644659aef1924ac27f683.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9518f2ce-484b-20bb-03c9-554708ceb250`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 418–424.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsCompact.mem_nhdsSet_inf_of_forall {K : Set X} {l : Filter X} {s : Set X}
    (hK : IsCompact K) (hs : ∀ x ∈ K, s ∈ 𝓝 x ⊓ l) : s ∈ (𝓝ˢ K) ⊓ l :=
  (hK.nhdsSet_inf_eq_biSup l).symm ▸ by simpa using hs

/-- If `s : Set S` belongs to `l ⊓ 𝓝 x` for all `x` from a compact set `K`,
then it belongs to `l ⊓ (𝓝ˢ K)`,
i.e., there exist `T ∈ l` and an open `U ⊇ K` such that `T ∩ U ⊆ s`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Compact/Variantf4afc5d05c1ad4a4cd2e2bf530b09036091528166b6644659aef1924ac27f683.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Compact/Variantf4afc5d05c1ad4a4cd2e2bf530b09036091528166b6644659aef1924ac27f683.lean#L418).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `50faf667b485e24757b73ff5809b3fb7d2f4a5ba` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
