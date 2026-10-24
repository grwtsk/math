# GlobalAvalanchePartition

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a3f98ef62d3717877fd79f22b38f61059eb22b3532c678f3f0c942efb2dc96ab",
  "kind": "structure",
  "lexical_name": "GlobalAvalanchePartition",
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
  "slug": "globalavalanchepartition--06e1581e0dbb7968e961398b",
  "source": {
    "blob": "d7fb086259213433eea5f7bb36e8becb48906309",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 168,
    "line": 142,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/AvalanchePartition/Variant897786ef80b07c84e5c712e53bd1354bfe204ff778f300e076868810aee19b32.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:06e1581e0dbb7968e961398b4b917ad726d3ed6826ab0a64c48b9b5a18fa67c2",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/AvalanchePartition/Variant897786ef80b07c84e5c712e53bd1354bfe204ff778f300e076868810aee19b32.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a3f98ef62d3717877fd79f22b38f61059eb22b3532c678f3f0c942efb2dc96ab`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 142–168.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure GlobalAvalanchePartition
    {State : Type u} {G : KnownMaximalState State}
    (tree : AvalanchePartitionTree G) where
  nodes : Finset tree.Node
  globalCover :
    letI := tree.nodeDecEq
    letI := G.coordDecEq
    ∀ x, ∃ node, node ∈ nodes ∧ x ∈ (tree.region node).coordinates
  pairwiseInteriorDisjoint :
    letI := tree.nodeDecEq
    letI := G.coordDecEq
    ∀ a, a ∈ nodes → ∀ b, b ∈ nodes → a ≠ b →
      Disjoint (tree.interior a) (tree.interior b)
  sharedInterface : tree.Node → tree.Node → Finset G.Coord
  sharedInterface_left :
    letI := G.coordDecEq
    ∀ a b, sharedInterface a b ⊆ (tree.region a).coordinates
  sharedInterface_right :
    letI := G.coordDecEq
    ∀ a b, sharedInterface a b ⊆ (tree.region b).coordinates
  depth : Nat

/--
A certified partition whose selected nodes are exactly the deterministic
top-down frontier.  Cover and interface laws still come from the underlying
`GlobalAvalanchePartition`; this record adds the missing selection theorem.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/AvalanchePartition/Variant897786ef80b07c84e5c712e53bd1354bfe204ff778f300e076868810aee19b32.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/AvalanchePartition/Variant897786ef80b07c84e5c712e53bd1354bfe204ff778f300e076868810aee19b32.lean#L142).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d7fb086259213433eea5f7bb36e8becb48906309` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
