# RelCWComplex.

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9a19d34bf17e8835dfdf2a62724c9a9480cf0dc91b4fbe10b11b6e650708bb5f",
  "kind": "class",
  "lexical_name": "RelCWComplex.",
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
  "slug": "relcwcomplex--161d2d24214767a6efa205a6",
  "source": {
    "blob": "3aff3eb20cd661ee54e86aa5e4ad596ff9de9036",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 121,
    "line": 83,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variantbfb9cc4f2e4d7f451bfde6c852aed0339919a49e1cc57180fcfc0e45bde0b2c5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:161d2d24214767a6efa205a66304ae01eeb6b0cf16439c2f2054080b7ea50c38",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variantbfb9cc4f2e4d7f451bfde6c852aed0339919a49e1cc57180fcfc0e45bde0b2c5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `class` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9a19d34bf17e8835dfdf2a62724c9a9480cf0dc91b4fbe10b11b6e650708bb5f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 83–121.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
class RelCWComplex.{u} {X : Type u} [TopologicalSpace X] (C : Set X) (D : outParam (Set X)) where
  /-- The indexing type of the cells of dimension `n`. -/
  cell (n : ℕ) : Type u
  /-- The characteristic map of the `n`-cell given by the index `i`.
  This map is a bijection when restricting to `ball 0 1`, where we consider `(Fin n → ℝ)`
  endowed with the maximum metric. -/
  map (n : ℕ) (i : cell n) : PartialEquiv (Fin n → ℝ) X
  /-- The source of every characteristic map of dimension `n` is
  `(ball 0 1 : Set (Fin n → ℝ))`. -/
  source_eq (n : ℕ) (i : cell n) : (map n i).source = ball 0 1
  /-- The characteristic maps are continuous when restricting to `closedBall 0 1`. -/
  continuousOn (n : ℕ) (i : cell n) : ContinuousOn (map n i) (closedBall 0 1)
  /-- The inverse of the restriction to `ball 0 1` is continuous on the image. -/
  continuousOn_symm (n : ℕ) (i : cell n) : ContinuousOn (map n i).symm (map n i).target
  /-- The open cells are pairwise disjoint. Use `RelCWComplex.pairwiseDisjoint` or
  `RelCWComplex.disjoint_openCell_of_ne` instead. -/
  pairwiseDisjoint' :
    (univ : Set (Σ n, cell n)).PairwiseDisjoint (fun ni ↦ map ni.1 ni.2 '' ball 0 1)
  /-- All open cells are disjoint with the base. Use `RelCWComplex.disjointBase` instead. -/
  disjointBase' (n : ℕ) (i : cell n) : Disjoint (map n i '' ball 0 1) D
  /-- The boundary of a cell is contained in the union of the base with a finite union of closed
  cells of a lower dimension. Use `RelCWComplex.cellFrontier_subset_base_union_finite_closedCell`
  instead. -/
  mapsTo (n : ℕ) (i : cell n) : ∃ I : Π m, Finset (cell m),
    MapsTo (map n i) (sphere 0 1) (D ∪ ⋃ (m < n) (j ∈ I m), map m j '' closedBall 0 1)
  /-- A CW complex has weak topology, i.e. a set `A` in `X` is closed iff its intersection with
  every closed cell and `D` is closed. Use `RelCWComplex.closed` instead. -/
  closed' (A : Set X) (hAC : A ⊆ C) :
    ((∀ n j, IsClosed (A ∩ map n j '' closedBall 0 1)) ∧ IsClosed (A ∩ D)) → IsClosed A
  /-- The base `D` is closed. -/
  isClosedBase : IsClosed D
  /-- The union of all closed cells equals `C`. Use `RelCWComplex.union` instead. -/
  union' : D ∪ ⋃ (n : ℕ) (j : cell n), map n j '' closedBall 0 1 = C

@[deprecated (since := "2025-02-20")] alias
RelCWComplex.mapsto := Topology.RelCWComplex.mapsTo

/-- Characterizing when a subspace `C` of a topological space `X` is a CW complex. Note that this
requires `C` to be closed. If `C` is not closed choose `X` to be `C`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variantbfb9cc4f2e4d7f451bfde6c852aed0339919a49e1cc57180fcfc0e45bde0b2c5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variantbfb9cc4f2e4d7f451bfde6c852aed0339919a49e1cc57180fcfc0e45bde0b2c5.lean#L83).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3aff3eb20cd661ee54e86aa5e4ad596ff9de9036` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
