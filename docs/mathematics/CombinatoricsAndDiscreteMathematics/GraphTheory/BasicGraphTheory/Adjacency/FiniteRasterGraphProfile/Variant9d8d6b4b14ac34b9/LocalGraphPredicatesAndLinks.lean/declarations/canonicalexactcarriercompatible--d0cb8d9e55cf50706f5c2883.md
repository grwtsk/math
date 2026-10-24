# canonicalExactCarrierCompatible

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:bee10384d47c121055f141be9bdc9fa9cbce3d03c3000076fa1131e4f072905c",
  "kind": "def",
  "lexical_name": "canonicalExactCarrierCompatible",
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
  "slug": "canonicalexactcarriercompatible--d0cb8d9e55cf50706f5c2883",
  "source": {
    "blob": "3678f07e0c60f1665b261d67ff34a92e4f7f3b42",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 116,
    "line": 108,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/BasicGraphTheory/Adjacency/FiniteRasterGraphProfile/Variant9d8d6b4b14ac34b9/LocalGraphPredicatesAndLinks.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d0cb8d9e55cf50706f5c2883d9b5fcdc36988e9b052ff848d58bf935985f26e0",
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

Occurrence: `declaration:bee10384d47c121055f141be9bdc9fa9cbce3d03c3000076fa1131e4f072905c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 108–116.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def canonicalExactCarrierCompatible {rows columns : Nat}
    (foreground background : AdjacencyPolicy)
    (cut : CutDatum rows columns) (repair : Repair cut) : Prop :=
  CanonicalAdjacencyPair foreground background ∧
    repair.changeSupport = cut.selected

/-- Foreground part of the cut link: retained true cells adjacent to a true
selected cell in the supplied state.  Unlike the geometric interface, this
depends on the foreground state on both sides of the cut. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../verification/CombinatoricsAndDiscreteMathematics/GraphTheory/BasicGraphTheory/Adjacency/FiniteRasterGraphProfile/Variant9d8d6b4b14ac34b9/LocalGraphPredicatesAndLinks.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/BasicGraphTheory/Adjacency/FiniteRasterGraphProfile/Variant9d8d6b4b14ac34b9/LocalGraphPredicatesAndLinks.lean#L108).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3678f07e0c60f1665b261d67ff34a92e4f7f3b42` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
