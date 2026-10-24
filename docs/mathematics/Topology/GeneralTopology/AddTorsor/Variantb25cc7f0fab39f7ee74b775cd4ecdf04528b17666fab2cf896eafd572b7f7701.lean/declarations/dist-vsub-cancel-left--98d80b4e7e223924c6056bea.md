# dist_vsub_cancel_left

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:18020547-9168-2f92-091a-8587841928f9",
  "kind": "theorem",
  "lexical_name": "dist_vsub_cancel_left",
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
  "slug": "dist-vsub-cancel-left--98d80b4e7e223924c6056bea",
  "source": {
    "blob": "61c50c3373e7a00ad220da4766eb6143b6509407",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 155,
    "line": 150,
    "path": "GRWTSK/Topology/GeneralTopology/AddTorsor/Variantb25cc7f0fab39f7ee74b775cd4ecdf04528b17666fab2cf896eafd572b7f7701.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:98d80b4e7e223924c6056beaeed28c21ec6ddc39e33b55f09226e805351a601d",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/AddTorsor/Variantb25cc7f0fab39f7ee74b775cd4ecdf04528b17666fab2cf896eafd572b7f7701.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:18020547-9168-2f92-091a-8587841928f9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 150–155.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem dist_vsub_cancel_left (x y z : P) : dist (x -ᵥ y) (x -ᵥ z) = dist y z := by
  rw [dist_eq_norm, vsub_sub_vsub_cancel_left, dist_comm, dist_eq_norm_vsub V]
#align dist_vsub_cancel_left dist_vsub_cancel_left

-- porting note: new
@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/AddTorsor/Variantb25cc7f0fab39f7ee74b775cd4ecdf04528b17666fab2cf896eafd572b7f7701.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/AddTorsor/Variantb25cc7f0fab39f7ee74b775cd4ecdf04528b17666fab2cf896eafd572b7f7701.lean#L150).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `61c50c3373e7a00ad220da4766eb6143b6509407` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
