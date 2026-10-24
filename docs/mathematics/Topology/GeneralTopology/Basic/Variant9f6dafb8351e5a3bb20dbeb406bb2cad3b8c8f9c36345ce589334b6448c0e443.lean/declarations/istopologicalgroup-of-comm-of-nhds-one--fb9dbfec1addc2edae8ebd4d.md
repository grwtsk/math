# IsTopologicalGroup.of_comm_of_nhds_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8930608628edba125974e1607df70bc6228781c1",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 865,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/9f/9f6dafb8351e5a3bb20dbeb406bb2cad3b8c8f9c36345ce589334b6448c0e443.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:bcaf4c64-491d-0fad-2610-e1be23fec49a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:07bf2a44-65f1-52a3-a7a9-c3f2c0365f1c",
  "kind": "theorem",
  "lexical_name": "IsTopologicalGroup.of_comm_of_nhds_one",
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
  "slug": "istopologicalgroup-of-comm-of-nhds-one--fb9dbfec1addc2edae8ebd4d",
  "source": {
    "blob": "8930608628edba125974e1607df70bc6228781c1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 878,
    "line": 865,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant9f6dafb8351e5a3bb20dbeb406bb2cad3b8c8f9c36345ce589334b6448c0e443.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fb9dbfec1addc2edae8ebd4dc5153b45fbec0feb9e5672309402c112b79fb48d",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variant9f6dafb8351e5a3bb20dbeb406bb2cad3b8c8f9c36345ce589334b6448c0e443.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:07bf2a44-65f1-52a3-a7a9-c3f2c0365f1c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 865–878.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsTopologicalGroup.of_comm_of_nhds_one {G : Type u} [CommGroup G] [TopologicalSpace G]
    (hmul : Tendsto (uncurry ((· * ·) : G → G → G)) (𝓝 1 ×ˢ 𝓝 1) (𝓝 1))
    (hinv : Tendsto (fun x : G => x⁻¹) (𝓝 1) (𝓝 1))
    (hleft : ∀ x₀ : G, 𝓝 x₀ = map (x₀ * ·) (𝓝 1)) : IsTopologicalGroup G :=
  IsTopologicalGroup.of_nhds_one hmul hinv hleft (by simpa using tendsto_id)

variable (G) in
/-- Any first countable topological group has an antitone neighborhood basis `u : ℕ → Set G` for
which `(u (n + 1)) ^ 2 ⊆ u n`. The existence of such a neighborhood basis is a key tool for
`QuotientGroup.completeSpace` -/
@[to_additive
  "Any first countable topological additive group has an antitone neighborhood basis
  `u : ℕ → set G` for which `u (n + 1) + u (n + 1) ⊆ u n`.
  The existence of such a neighborhood basis is a key tool for `QuotientAddGroup.completeSpace`"]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant9f6dafb8351e5a3bb20dbeb406bb2cad3b8c8f9c36345ce589334b6448c0e443.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant9f6dafb8351e5a3bb20dbeb406bb2cad3b8c8f9c36345ce589334b6448c0e443.lean#L865).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8930608628edba125974e1607df70bc6228781c1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
