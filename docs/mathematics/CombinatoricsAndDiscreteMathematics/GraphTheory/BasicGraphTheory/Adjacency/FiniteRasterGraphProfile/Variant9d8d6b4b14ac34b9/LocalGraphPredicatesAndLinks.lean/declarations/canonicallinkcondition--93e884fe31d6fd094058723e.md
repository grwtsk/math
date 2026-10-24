# canonicalLinkCondition

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b52eddc20f856ed7253da664fc747024d0a43e3587885d68be7b675ad13d7fc1",
  "kind": "def",
  "lexical_name": "canonicalLinkCondition",
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
  "slug": "canonicallinkcondition--93e884fe31d6fd094058723e",
  "source": {
    "blob": "3678f07e0c60f1665b261d67ff34a92e4f7f3b42",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 174,
    "line": 156,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/BasicGraphTheory/Adjacency/FiniteRasterGraphProfile/Variant9d8d6b4b14ac34b9/LocalGraphPredicatesAndLinks.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:93e884fe31d6fd094058723e04f6fe5bca82d1f4845fb555b4d29063a50718b7",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/GraphTheory/BasicGraphTheory/Adjacency/FiniteRasterGraphProfile/Variant9d8d6b4b14ac34b9/LocalGraphPredicatesAndLinks.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b52eddc20f856ed7253da664fc747024d0a43e3587885d68be7b675ad13d7fc1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 156–174.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def canonicalLinkCondition {rows columns : Nat}
    (foreground background : AdjacencyPolicy)
    (cut : CutDatum rows columns) (repair : Repair cut) : Prop :=
  CanonicalAdjacencyPair foreground background ∧
    foregroundLink cut foreground cut.source ≠ ∅ ∧
    foregroundLink cut foreground cut.source =
      foregroundLink cut foreground repair.apply ∧
    backgroundLink cut background cut.source =
      backgroundLink cut background repair.apply ∧
    NonbranchingCubicalGraph foreground cut.source ∧
    NonbranchingCubicalGraph foreground repair.apply ∧
    graphBetti foreground background cut.source =
      graphBetti foreground background repair.apply ∧
    backgroundBetaZero background cut.source =
      backgroundBetaZero background repair.apply


/-- Number of boundary components of the zero-dimensional boundary of a
nonbranching foreground graph: exactly its degree-one vertices. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../verification/CombinatoricsAndDiscreteMathematics/GraphTheory/BasicGraphTheory/Adjacency/FiniteRasterGraphProfile/Variant9d8d6b4b14ac34b9/LocalGraphPredicatesAndLinks.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/BasicGraphTheory/Adjacency/FiniteRasterGraphProfile/Variant9d8d6b4b14ac34b9/LocalGraphPredicatesAndLinks.lean#L156).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3678f07e0c60f1665b261d67ff34a92e4f7f3b42` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
