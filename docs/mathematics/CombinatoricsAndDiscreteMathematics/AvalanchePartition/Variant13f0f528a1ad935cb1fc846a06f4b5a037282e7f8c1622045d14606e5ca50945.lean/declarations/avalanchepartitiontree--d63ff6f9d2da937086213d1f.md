# AvalanchePartitionTree

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:fbf5a4f7e0e2e5d8388593b650ee424d786d407ede8ca3b0413729a8e071da7f",
  "kind": "structure",
  "lexical_name": "AvalanchePartitionTree",
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
  "slug": "avalanchepartitiontree--d63ff6f9d2da937086213d1f",
  "source": {
    "blob": "d162cc32d4cc63bf274fb00cdb35887d876ab19f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 69,
    "line": 26,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/AvalanchePartition/Variant13f0f528a1ad935cb1fc846a06f4b5a037282e7f8c1622045d14606e5ca50945.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d63ff6f9d2da937086213d1fb2a00ac5f7000e5b038d1082a4cfc645e9411842",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/AvalanchePartition/Variant13f0f528a1ad935cb1fc846a06f4b5a037282e7f8c1622045d14606e5ca50945.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:fbf5a4f7e0e2e5d8388593b650ee424d786d407ede8ca3b0413729a8e071da7f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 26–69.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure AvalanchePartitionTree
    {State : Type u} (G : KnownMaximalState State) where
  Node : Type v
  nodeFintype : Fintype Node
  nodeDecEq : DecidableEq Node
  root : Node
  region : Node → AbsoluteRegion G
  interior : Node → Finset G.Coord
  interior_inside_region :
    letI := G.coordDecEq
    ∀ p, interior p ⊆ (region p).coordinates
  children : Node → Finset Node
  rank : Node → Nat
  root_is_global :
    letI := G.coordFintype
    letI := G.coordDecEq
    (region root).coordinates = Finset.univ
  child_inside_parent :
    letI := nodeDecEq
    letI := G.coordDecEq
    ∀ p c, c ∈ children p →
      (region c).coordinates ⊆ (region p).coordinates
  child_rank_lt :
    letI := nodeDecEq
    ∀ p c, c ∈ children p → rank c < rank p
  children_cover_parent :
    letI := nodeDecEq
    letI := G.coordDecEq
    ∀ p, children p ≠ ∅ → ∀ x,
      x ∈ (region p).coordinates ↔
        ∃ c, c ∈ children p ∧ x ∈ (region c).coordinates
  child_interiors_disjoint :
    letI := nodeDecEq
    letI := G.coordDecEq
    ∀ p c d,
      c ∈ children p → d ∈ children p → c ≠ d →
        Disjoint (interior c) (interior d)
  deterministicRuleId : String

namespace AvalanchePartitionTree

variable {State : Type u} {G : KnownMaximalState State}

/-- The directed child relation, with the tree's carried equality installed locally. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/AvalanchePartition/Variant13f0f528a1ad935cb1fc846a06f4b5a037282e7f8c1622045d14606e5ca50945.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/AvalanchePartition/Variant13f0f528a1ad935cb1fc846a06f4b5a037282e7f8c1622045d14606e5ca50945.lean#L26).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d162cc32d4cc63bf274fb00cdb35887d876ab19f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
