# ofSubcomplex

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e5d514a5a0bd3b1fa2d31cf4332521a21d1641e20b68049eb8a92b93ff30819e",
  "kind": "def",
  "lexical_name": "ofSubcomplex",
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
  "slug": "ofsubcomplex--c9d214dc0dc35251c52c0608",
  "source": {
    "blob": "8d9f7a9bd54d29e23d8056cafd410091d2b53bf9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 142,
    "line": 131,
    "path": "GRWTSK/Geometry/ConvexGeometry/Basic/Variant83d3c34bf775fe1f1ced101cf56daa02b0f5d7bc52a37f1429b4f094ec9a29f4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c9d214dc0dc35251c52c0608b3df1c0019d27723aa67bad0c86a60acc1459b05",
  "verification": {
    "reference": "docs/verification/Geometry/ConvexGeometry/Basic/Variant83d3c34bf775fe1f1ced101cf56daa02b0f5d7bc52a37f1429b4f094ec9a29f4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e5d514a5a0bd3b1fa2d31cf4332521a21d1641e20b68049eb8a92b93ff30819e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 131–142.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def ofSubcomplex (K : SimplicialComplex 𝕜 E) (faces : Set (Finset E)) (subset : faces ⊆ K.faces)
    (down_closed : ∀ {s t}, s ∈ faces → t ⊆ s → t ∈ faces) : SimplicialComplex 𝕜 E :=
  { faces
    empty_notMem := fun h => K.empty_notMem (subset h)
    indep := fun hs => K.indep (subset hs)
    down_closed := fun hs hts _ => down_closed hs hts
    inter_subset_convexHull := fun hs ht => K.inter_subset_convexHull (subset hs) (subset ht) }

/-! ### Vertices -/


/-- The vertices of a simplicial complex are its zero dimensional faces. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/ConvexGeometry/Basic/Variant83d3c34bf775fe1f1ced101cf56daa02b0f5d7bc52a37f1429b4f094ec9a29f4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ConvexGeometry/Basic/Variant83d3c34bf775fe1f1ced101cf56daa02b0f5d7bc52a37f1429b4f094ec9a29f4.lean#L131).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8d9f7a9bd54d29e23d8056cafd410091d2b53bf9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
