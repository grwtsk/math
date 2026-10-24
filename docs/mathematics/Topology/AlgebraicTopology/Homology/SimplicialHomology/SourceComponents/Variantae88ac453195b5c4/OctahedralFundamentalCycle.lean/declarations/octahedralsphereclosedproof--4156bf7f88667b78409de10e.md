# octahedralSphereClosedProof

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a30afe23-2a1f-baef-cd31-2ae029d0a636",
  "kind": "theorem",
  "lexical_name": "octahedralSphereClosedProof",
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
  "slug": "octahedralsphereclosedproof--4156bf7f88667b78409de10e",
  "source": {
    "blob": "6e7e8254d2a480be66278b720b79ef44c035a111",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 67,
    "line": 61,
    "path": "GRWTSK/Topology/AlgebraicTopology/Homology/SimplicialHomology/SourceComponents/Variantae88ac453195b5c4/OctahedralFundamentalCycle.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4156bf7f88667b78409de10eb3e85c66046fc16cba9df83e8840e4242e8a272a",
  "verification": {
    "reference": "docs/verification/Topology/AlgebraicTopology/Homology/SimplicialHomology/SourceComponents/Variantae88ac453195b5c4/OctahedralFundamentalCycle.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a30afe23-2a1f-baef-cd31-2ae029d0a636`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 61–67.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem octahedralSphereClosedProof : OctahedralSphereClosed := by
  intro edge
  cases edge with
  | xy xSign ySign => cases xSign <;> cases ySign <;> rfl
  | xz xSign zSign => cases xSign <;> cases zSign <;> rfl
  | yz ySign zSign => cases ySign <;> cases zSign <;> rfl

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../verification/Topology/AlgebraicTopology/Homology/SimplicialHomology/SourceComponents/Variantae88ac453195b5c4/OctahedralFundamentalCycle.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/AlgebraicTopology/Homology/SimplicialHomology/SourceComponents/Variantae88ac453195b5c4/OctahedralFundamentalCycle.lean#L61).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6e7e8254d2a480be66278b720b79ef44c035a111` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
