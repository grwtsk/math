# ContinuousOn.sdiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5b87a0b5-6294-fdb3-2951-1df15ad4bb7a",
  "kind": "theorem",
  "lexical_name": "ContinuousOn.sdiv",
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
  "slug": "continuouson-sdiv--ccb892f4fbc01bb11fae4804",
  "source": {
    "blob": "9bc59cc00ceb4c555ed8a84da9019d5204c7d272",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 92,
    "line": 83,
    "path": "GRWTSK/Topology/GeneralTopology/Torsor/Variant2873d5fa9ceab1695a549d7087b8f7a30418aa2cd97ce209fa9a5566d0cdff61.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ccb892f4fbc01bb11fae48048525327978a576c56fd680c06696e651ae663f94",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Torsor/Variant2873d5fa9ceab1695a549d7087b8f7a30418aa2cd97ce209fa9a5566d0cdff61.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5b87a0b5-6294-fdb3-2951-1df15ad4bb7a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 83–92.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ContinuousOn.sdiv {f g : α → P} {s : Set α} (hf : ContinuousOn f s)
    (hg : ContinuousOn g s) : ContinuousOn (fun x ↦ f x /ₛ g x) s := fun x hx ↦
  (hf x hx).sdiv (hg x hx)

include P in
variable (V P) in
/-- The underlying group of a topological torsor is a topological group. This is not an instance, as
`P` cannot be inferred. -/
@[to_additive /-- The underlying group of a topological additive torsor is a topological additive
group. This is not an instance, as `P` cannot be inferred. -/]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Torsor/Variant2873d5fa9ceab1695a549d7087b8f7a30418aa2cd97ce209fa9a5566d0cdff61.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Torsor/Variant2873d5fa9ceab1695a549d7087b8f7a30418aa2cd97ce209fa9a5566d0cdff61.lean#L83).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9bc59cc00ceb4c555ed8a84da9019d5204c7d272` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
