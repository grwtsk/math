# singleton

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b021ab0f71315c47cbcb429d9df18d361685bc16b4808e55d41a87483500ff2a",
  "kind": "def",
  "lexical_name": "singleton",
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
  "slug": "singleton--cbc8ab1b2974d5a51879e7b2",
  "source": {
    "blob": "4e42d77efa6637ede5812843ebd8e42f0dd0d094",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 184,
    "line": 170,
    "path": "GRWTSK/Topology/GeneralTopology/FiniteHoleGeometry/Variant22c267a104a418d4aafebd95dc4e794126a8939b3ce48797e9f2097fef83c71f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:cbc8ab1b2974d5a51879e7b2966016e1ff6ad553cd573f020d0ee7641e957f8d",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/FiniteHoleGeometry/Variant22c267a104a418d4aafebd95dc4e794126a8939b3ce48797e9f2097fef83c71f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b021ab0f71315c47cbcb429d9df18d361685bc16b4808e55d41a87483500ff2a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 170–184.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def singleton (lower upper center : ℂ) (radius : ℝ)
    (hr : 0 < radius)
    (hBall : closedBall center radius ⊆ openRectangle lower upper) :
    RectangleHoleConfiguration lower upper where
  centers := {center}
  radius := fun _ ↦ radius
  radius_pos := by simpa
  closedBall_subset_interior := by simpa
  pairwise_disjoint := by
    simpa only [Finset.coe_singleton] using
      (Set.pairwiseDisjoint_singleton center
        (fun z : ℂ ↦ closedBall z radius))

/-- Construct a two-hole configuration from individual containment and
disjointness. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/FiniteHoleGeometry/Variant22c267a104a418d4aafebd95dc4e794126a8939b3ce48797e9f2097fef83c71f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/FiniteHoleGeometry/Variant22c267a104a418d4aafebd95dc4e794126a8939b3ce48797e9f2097fef83c71f.lean#L170).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4e42d77efa6637ede5812843ebd8e42f0dd0d094` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
