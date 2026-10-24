# zeroAtInftyContinuousMapClass.ofCompact

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8fd17112-9814-cbb3-8b5f-f57af64fdf8c",
  "kind": "lemma",
  "lexical_name": "zeroAtInftyContinuousMapClass.ofCompact",
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
  "slug": "zeroatinftycontinuousmapclass-ofcompact--a1a36ec6f13b000983524728",
  "source": {
    "blob": "4089472c158381f8a1b8843a0e92e9c6eab50f3c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 170,
    "line": 152,
    "path": "GRWTSK/Topology/GeneralTopology/ZeroAtInfty/Varianta7535ac0bf30f3343be14649d58d61161e2eb49749b7dcef7e4a15d5f0d58d52.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a1a36ec6f13b0009835247285bd0e8d3340bd1750084bc0f6d772c52b4c70492",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ZeroAtInfty/Varianta7535ac0bf30f3343be14649d58d61161e2eb49749b7dcef7e4a15d5f0d58d52.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8fd17112-9814-cbb3-8b5f-f57af64fdf8c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 152–170.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma zeroAtInftyContinuousMapClass.ofCompact {G : Type*} [FunLike G α β]
    [ContinuousMapClass G α β] [CompactSpace α] : ZeroAtInftyContinuousMapClass G α β where
  map_continuous := map_continuous
  zero_at_infty := by simp

end Basics

/-! ### Algebraic structure

Whenever `β` has suitable algebraic structure and a compatible topological structure, then
`C₀(α, β)` inherits a corresponding algebraic structure. The primary exception to this is that
`C₀(α, β)` will not have a multiplicative identity.
-/


section AlgebraicStructure

variable [TopologicalSpace β] (x : α)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ZeroAtInfty/Varianta7535ac0bf30f3343be14649d58d61161e2eb49749b7dcef7e4a15d5f0d58d52.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ZeroAtInfty/Varianta7535ac0bf30f3343be14649d58d61161e2eb49749b7dcef7e4a15d5f0d58d52.lean#L152).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4089472c158381f8a1b8843a0e92e9c6eab50f3c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
