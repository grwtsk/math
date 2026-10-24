# Convex.combo_interior_closure_mem_interior

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3d4e5daf-e400-f18f-d454-e6fddfb9a202",
  "kind": "theorem",
  "lexical_name": "Convex.combo_interior_closure_mem_interior",
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
  "slug": "convex-combo-interior-closure-mem-interior--a92da68c1c36ff9582acbf57",
  "source": {
    "blob": "38b74213ab1394e19453e55f4bb690b054b34aa0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 177,
    "line": 172,
    "path": "GRWTSK/Topology/GeneralTopology/Topology/Variant8ba10e726f06b3dca6b085ba8f91feb0dbcc63d7c8015ca98fd7b2d81e43b6de.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a92da68c1c36ff9582acbf576db8c40ec2563ecbd75410b42e625434182dea3b",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Topology/Variant8ba10e726f06b3dca6b085ba8f91feb0dbcc63d7c8015ca98fd7b2d81e43b6de.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3d4e5daf-e400-f18f-d454-e6fddfb9a202`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 172–177.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Convex.combo_interior_closure_mem_interior {s : Set E} (hs : Convex 𝕜 s) {x y : E}
    (hx : x ∈ interior s) (hy : y ∈ closure s) {a b : 𝕜} (ha : 0 < a) (hb : 0 ≤ b)
    (hab : a + b = 1) : a • x + b • y ∈ interior s :=
  hs.combo_interior_closure_subset_interior ha hb hab <|
    add_mem_add (smul_mem_smul_set hx) (smul_mem_smul_set hy)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Topology/Variant8ba10e726f06b3dca6b085ba8f91feb0dbcc63d7c8015ca98fd7b2d81e43b6de.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Topology/Variant8ba10e726f06b3dca6b085ba8f91feb0dbcc63d7c8015ca98fd7b2d81e43b6de.lean#L172).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `38b74213ab1394e19453e55f4bb690b054b34aa0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
