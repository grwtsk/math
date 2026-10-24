# preStoneCechCompat

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bace07a2-64f4-4bb0-5c28-81fc75b14535",
  "kind": "lemma",
  "lexical_name": "preStoneCechCompat",
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
  "slug": "prestonecechcompat--2a981249ec9de134f3b38baa",
  "source": {
    "blob": "ea428a12b0c1a513c2275631d0c002d000e39fd2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 288,
    "line": 280,
    "path": "GRWTSK/Topology/GeneralTopology/StoneCech/Variant94b4b6022e31e1162d2b8c2f68b23bf0120b9054bef114b62ffd8842263fae70.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2a981249ec9de134f3b38baa1e62d8cdc4ed219e09d90049980b0291fd95d2d7",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/StoneCech/Variant94b4b6022e31e1162d2b8c2f68b23bf0120b9054bef114b62ffd8842263fae70.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bace07a2-64f4-4bb0-5c28-81fc75b14535`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 280–288.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma preStoneCechCompat {F G : Ultrafilter α} {x : α} (hF : ↑F ≤ 𝓝 x) (hG : ↑G ≤ 𝓝 x) :
    Ultrafilter.extend g F = Ultrafilter.extend g G := by
  replace hF := (map_mono hF).trans hg.continuousAt
  replace hG := (map_mono hG).trans hg.continuousAt
  rwa [show Ultrafilter.extend g G = g x by rwa [ultrafilter_extend_eq_iff, G.coe_map],
       ultrafilter_extend_eq_iff, F.coe_map]

/-- The extension of a continuous function from `α` to a compact
  Hausdorff space `β` to the pre-Stone-Čech compactification of `α`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/StoneCech/Variant94b4b6022e31e1162d2b8c2f68b23bf0120b9054bef114b62ffd8842263fae70.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/StoneCech/Variant94b4b6022e31e1162d2b8c2f68b23bf0120b9054bef114b62ffd8842263fae70.lean#L280).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ea428a12b0c1a513c2275631d0c002d000e39fd2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
