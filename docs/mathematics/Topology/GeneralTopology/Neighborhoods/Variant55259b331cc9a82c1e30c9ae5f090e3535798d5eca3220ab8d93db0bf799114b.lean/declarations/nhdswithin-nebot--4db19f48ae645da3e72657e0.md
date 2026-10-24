# nhdsWithin_neBot

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:df99da5d-7650-7870-c8fa-9d34cb975901",
  "kind": "lemma",
  "lexical_name": "nhdsWithin_neBot",
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
  "slug": "nhdswithin-nebot--4db19f48ae645da3e72657e0",
  "source": {
    "blob": "ca0ac51f8beb426a650cc41325bd66a688f4ed2f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 292,
    "line": 287,
    "path": "GRWTSK/Topology/GeneralTopology/Neighborhoods/Variant55259b331cc9a82c1e30c9ae5f090e3535798d5eca3220ab8d93db0bf799114b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4db19f48ae645da3e72657e0f1c6aa6b91a254c2a9c51efc297ddc947ea275a2",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Neighborhoods/Variant55259b331cc9a82c1e30c9ae5f090e3535798d5eca3220ab8d93db0bf799114b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:df99da5d-7650-7870-c8fa-9d34cb975901`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 287–292.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma nhdsWithin_neBot : (𝓝[s] x).NeBot ↔ ∀ ⦃t⦄, t ∈ 𝓝 x → (t ∩ s).Nonempty := by
  rw [nhdsWithin, inf_neBot_iff]
  exact forall₂_congr fun U _ ↦
    ⟨fun h ↦ h (mem_principal_self _), fun h u hsu ↦ h.mono <| inter_subset_inter_right _ hsu⟩

@[gcongr]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Neighborhoods/Variant55259b331cc9a82c1e30c9ae5f090e3535798d5eca3220ab8d93db0bf799114b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Neighborhoods/Variant55259b331cc9a82c1e30c9ae5f090e3535798d5eca3220ab8d93db0bf799114b.lean#L287).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ca0ac51f8beb426a650cc41325bd66a688f4ed2f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
