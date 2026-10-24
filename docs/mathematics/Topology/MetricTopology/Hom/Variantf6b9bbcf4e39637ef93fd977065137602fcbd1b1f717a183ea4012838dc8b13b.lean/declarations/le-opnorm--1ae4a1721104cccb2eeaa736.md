# le_opNorm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "12f7c81f13026706600a5b1f77099ba6016a9b3f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 203,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f6/f6b9bbcf4e39637ef93fd977065137602fcbd1b1f717a183ea4012838dc8b13b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e746c327-5617-6347-d1b6-33739258402c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:40083a3e-1a90-dc61-fd13-cddb5c3f3364",
  "kind": "theorem",
  "lexical_name": "le_opNorm",
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
  "slug": "le-opnorm--1ae4a1721104cccb2eeaa736",
  "source": {
    "blob": "12f7c81f13026706600a5b1f77099ba6016a9b3f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 212,
    "line": 203,
    "path": "GRWTSK/Topology/MetricTopology/Hom/Variantf6b9bbcf4e39637ef93fd977065137602fcbd1b1f717a183ea4012838dc8b13b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1ae4a1721104cccb2eeaa7369cfd2668c2fb03b2e4ca59473738392b8d105929",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Hom/Variantf6b9bbcf4e39637ef93fd977065137602fcbd1b1f717a183ea4012838dc8b13b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:40083a3e-1a90-dc61-fd13-cddb5c3f3364`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 203–212.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem le_opNorm (x : V₁) : ‖f x‖ ≤ ‖f‖ * ‖x‖ := by
  obtain ⟨C, _Cpos, hC⟩ := f.bound
  replace hC := hC x
  by_cases h : ‖x‖ = 0
  · rwa [h, mul_zero] at hC ⊢
  have hlt : 0 < ‖x‖ := lt_of_le_of_ne (norm_nonneg x) (Ne.symm h)
  exact
    (div_le_iff₀ hlt).mp
      (le_csInf bounds_nonempty fun c ⟨_, hc⟩ => (div_le_iff₀ hlt).mpr <| by apply hc)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Hom/Variantf6b9bbcf4e39637ef93fd977065137602fcbd1b1f717a183ea4012838dc8b13b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Hom/Variantf6b9bbcf4e39637ef93fd977065137602fcbd1b1f717a183ea4012838dc8b13b.lean#L203).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `12f7c81f13026706600a5b1f77099ba6016a9b3f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
