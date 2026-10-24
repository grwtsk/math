# orthogonalProjectionFn

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:39a99fbe1f38e4b2ee92586977f3e97f7298cb9eadccc9f6b8bd9f4306c52511",
  "kind": "def",
  "lexical_name": "orthogonalProjectionFn",
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
  "slug": "orthogonalprojectionfn--e29b4a2381d52a3a7384f561",
  "source": {
    "blob": "007a4cce831fe69c7063e0469906e165e1b4f970",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 56,
    "line": 43,
    "path": "GRWTSK/Topology/MetricTopology/Projection/Variantc901aa74f676ef9852cc9099d205aa2664c7f4c2586a38d4bfbdae683ee95e9e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e29b4a2381d52a3a7384f5616176690385093689608193e4a9571d42a4c0d197",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Projection/Variantc901aa74f676ef9852cc9099d205aa2664c7f4c2586a38d4bfbdae683ee95e9e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:39a99fbe1f38e4b2ee92586977f3e97f7298cb9eadccc9f6b8bd9f4306c52511`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 43–56.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def orthogonalProjectionFn (s : AffineSubspace ℝ P) [Nonempty s]
    [s.direction.HasOrthogonalProjection] (p : P) : P :=
  Classical.choose <|
    inter_eq_singleton_of_nonempty_of_isCompl (nonempty_subtype.mp ‹_›)
      (mk'_nonempty p s.directionᗮ)
      (by
        rw [direction_mk' p s.directionᗮ]
        exact Submodule.isCompl_orthogonal_of_completeSpace)

/-- The intersection of the subspace and the orthogonal subspace
through the given point is the `orthogonalProjectionFn` of that
point onto the subspace. This lemma is only intended for use in
setting up the bundled version and should not be used once that is
defined. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Projection/Variantc901aa74f676ef9852cc9099d205aa2664c7f4c2586a38d4bfbdae683ee95e9e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Projection/Variantc901aa74f676ef9852cc9099d205aa2664c7f4c2586a38d4bfbdae683ee95e9e.lean#L43).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `007a4cce831fe69c7063e0469906e165e1b4f970` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
