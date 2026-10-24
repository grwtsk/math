# CWComplex.

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c65a028ea5efec14a146ab8c4b105c9a6df198b7c851f39f1c9b58d0ed6beb67",
  "kind": "class",
  "lexical_name": "CWComplex.",
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
  "slug": "cwcomplex--4bf2b038f01d9e36cc3c14c1",
  "source": {
    "blob": "15311ad10986cc984a38ac7dee6e2fc5ae8a76f6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 172,
    "line": 143,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variantb6e03e92c3da1ec69c33b001cc3ea367983a254f58f41aad1ead9a978fe895e2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4bf2b038f01d9e36cc3c14c1e5bd3245ec3a6b680a565413cb7d7b1685373d95",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variantb6e03e92c3da1ec69c33b001cc3ea367983a254f58f41aad1ead9a978fe895e2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `class` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c65a028ea5efec14a146ab8c4b105c9a6df198b7c851f39f1c9b58d0ed6beb67`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 143–172.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
class CWComplex.{u} {X : Type u} [TopologicalSpace X] (C : Set X) where
  /-- The indexing type of the cells of dimension `n`. -/
  protected cell (n : ℕ) : Type u
  /-- The characteristic map of the `n`-cell given by the index `i`.
  This map is a bijection when restricting to `ball 0 1`, where we consider `(Fin n → ℝ)`
  endowed with the maximum metric. -/
  protected map (n : ℕ) (i : cell n) : PartialEquiv (Fin n → ℝ) X
  /-- The source of every characteristic map of dimension `n` is
  `(ball 0 1 : Set (Fin n → ℝ))`. -/
  protected source_eq (n : ℕ) (i : cell n) : (map n i).source = ball 0 1
  /-- The characteristic maps are continuous when restricting to `closedBall 0 1`. -/
  protected continuousOn (n : ℕ) (i : cell n) : ContinuousOn (map n i) (closedBall 0 1)
  /-- The inverse of the restriction to `ball 0 1` is continuous on the image. -/
  protected continuousOn_symm (n : ℕ) (i : cell n) : ContinuousOn (map n i).symm (map n i).target
  /-- The open cells are pairwise disjoint. Use `CWComplex.pairwiseDisjoint` or
  `CWComplex.disjoint_openCell_of_ne` instead. -/
  protected pairwiseDisjoint' :
    (univ : Set (Σ n, cell n)).PairwiseDisjoint (fun ni ↦ map ni.1 ni.2 '' ball 0 1)
  /-- The boundary of a cell is contained in a finite union of closed cells of a lower dimension.
  Use `CWComplex.mapsTo` or `CWComplex.cellFrontier_subset_finite_closedCell` instead. -/
  protected mapsTo' (n : ℕ) (i : cell n) : ∃ I : Π m, Finset (cell m),
    MapsTo (map n i) (sphere 0 1) (⋃ (m < n) (j ∈ I m), map m j '' closedBall 0 1)
  /-- A CW complex has weak topology, i.e. a set `A` in `X` is closed iff its intersection with
  every closed cell is closed. Use `CWComplex.closed` instead. -/
  protected closed' (A : Set X) (hAC : A ⊆ C) :
    (∀ n j, IsClosed (A ∩ map n j '' closedBall 0 1)) → IsClosed A
  /-- The union of all closed cells equals `C`. Use `CWComplex.union` instead. -/
  protected union' : ⋃ (n : ℕ) (j : cell n), map n j '' closedBall 0 1 = C

@[simps -isSimp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variantb6e03e92c3da1ec69c33b001cc3ea367983a254f58f41aad1ead9a978fe895e2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variantb6e03e92c3da1ec69c33b001cc3ea367983a254f58f41aad1ead9a978fe895e2.lean#L143).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `15311ad10986cc984a38ac7dee6e2fc5ae8a76f6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
