# hall_subgraph

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:63ea5700dc01a8169bd68f77b0b00c6dcdf88fa675755331109fa5fa1926d3e6",
  "kind": "abbrev",
  "lexical_name": "hall_subgraph",
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
  "slug": "hall-subgraph--bd826cd685bf082d9c414932",
  "source": {
    "blob": "e9d943a24009df6e8aad5c1bf10d2c27a52d1929",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 59,
    "line": 41,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Hall/Variantbd3bbc0cfb22838cd8d2169b4d587412b0efa610e3a1ec5ea67c4464d7422927.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:bd826cd685bf082d9c4149323e7f6024b8a14577ecf95834f1f4574ab300a015",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/GraphTheory/Hall/Variantbd3bbc0cfb22838cd8d2169b4d587412b0efa610e3a1ec5ea67c4464d7422927.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `abbrev` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:63ea5700dc01a8169bd68f77b0b00c6dcdf88fa675755331109fa5fa1926d3e6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 41–59.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
abbrev hall_subgraph {p : Set V} [DecidablePred (· ∈ p)] (f : p → V) (h₁ : ∀ x : p, f x ∉ p)
    (h₂ : ∀ x : p, G.Adj x (f x)) : Subgraph G where
  verts := p ∪ Set.range f
  Adj v w :=
    if h : v ∈ p then f ⟨v, h⟩ = w
    else if h : w ∈ p then f ⟨w, h⟩ = v
    else False
  adj_sub {v w} h := by
    split_ifs at h
    · exact h ▸ h₂ ⟨v, by assumption⟩
    · exact h ▸ h₂ ⟨w, by assumption⟩ |>.symm
  edge_vert := by grind
  symm.symm := by grind

variable [G.LocallyFinite] {p₁ p₂ : Set V}

/-- This is the version of **Hall's marriage theorem** for bipartite graphs that finds a matching
for a single partition given that the neighborhood-condition only holds for elements of that
partition. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/GraphTheory/Hall/Variantbd3bbc0cfb22838cd8d2169b4d587412b0efa610e3a1ec5ea67c4464d7422927.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Hall/Variantbd3bbc0cfb22838cd8d2169b4d587412b0efa610e3a1ec5ea67c4464d7422927.lean#L41).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e9d943a24009df6e8aad5c1bf10d2c27a52d1929` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
