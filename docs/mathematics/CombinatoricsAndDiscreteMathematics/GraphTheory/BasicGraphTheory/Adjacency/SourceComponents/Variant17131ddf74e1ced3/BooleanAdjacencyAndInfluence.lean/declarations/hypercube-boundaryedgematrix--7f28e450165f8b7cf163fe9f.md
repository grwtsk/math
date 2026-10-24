# Hypercube.boundaryEdgeMatrix

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:007d667a08cce399d4509374423297c5f2ea397b6155407a9a6e9cfcfe47ca25",
  "kind": "def",
  "lexical_name": "Hypercube.boundaryEdgeMatrix",
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
  "slug": "hypercube-boundaryedgematrix--7f28e450165f8b7cf163fe9f",
  "source": {
    "blob": "8150172322aa9271bc82ad0a2554054706b687e0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 50,
    "line": 42,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/BasicGraphTheory/Adjacency/SourceComponents/Variant17131ddf74e1ced3/BooleanAdjacencyAndInfluence.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7f28e450165f8b7cf163fe9f2a8b14cda4877f07ff2965b8f7655c9b118700b9",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/GraphTheory/BasicGraphTheory/Adjacency/SourceComponents/Variant17131ddf74e1ced3/BooleanAdjacencyAndInfluence.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:007d667a08cce399d4509374423297c5f2ea397b6155407a9a6e9cfcfe47ca25`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 42–50.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Hypercube.boundaryEdgeMatrix {n : Nat} (f : Hypercube.Function n) :
    Matrix (2 ^ n) (2 ^ n) :=
  fun i j =>
    Hypercube.adjacencyMatrix n i j &&
      Hypercube.boolDiff
        (f (Hypercube.pointOfIndex n i.val))
        (f (Hypercube.pointOfIndex n j.val))

/-- Test whether flipping coordinate `i` changes the value of `f` at `x`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../verification/CombinatoricsAndDiscreteMathematics/GraphTheory/BasicGraphTheory/Adjacency/SourceComponents/Variant17131ddf74e1ced3/BooleanAdjacencyAndInfluence.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/BasicGraphTheory/Adjacency/SourceComponents/Variant17131ddf74e1ced3/BooleanAdjacencyAndInfluence.lean#L42).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8150172322aa9271bc82ad0a2554054706b687e0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
