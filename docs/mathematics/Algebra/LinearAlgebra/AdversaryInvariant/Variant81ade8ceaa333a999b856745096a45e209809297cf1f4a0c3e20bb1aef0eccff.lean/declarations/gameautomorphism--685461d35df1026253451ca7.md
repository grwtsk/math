# GameAutomorphism

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:16208230688008200fa3026bbff142c50db65a95613f3ad7d8d3271d5a7b400d",
  "kind": "structure",
  "lexical_name": "GameAutomorphism",
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
  "slug": "gameautomorphism--685461d35df1026253451ca7",
  "source": {
    "blob": "947452e1d6ac21f618b8849cb5ccf67e1b0f15d7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 122,
    "line": 105,
    "path": "GRWTSK/Algebra/LinearAlgebra/AdversaryInvariant/Variant81ade8ceaa333a999b856745096a45e209809297cf1f4a0c3e20bb1aef0eccff.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:685461d35df1026253451ca76c4b79be978d5620fba73dde0eb36fc590c55b84",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/AdversaryInvariant/Variant81ade8ceaa333a999b856745096a45e209809297cf1f4a0c3e20bb1aef0eccff.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:16208230688008200fa3026bbff142c50db65a95613f3ad7d8d3271d5a7b400d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 105–122.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure GameAutomorphism
    {Input : Type u} {Output : Type v} {Coordinate : Type w}
    (problem : OracleProblem Input Output Coordinate) where
  inputs : Input ≃ Input
  coordinates : Coordinate ≃ Coordinate
  preservesAnswer :
    ∀ input, problem.answer (inputs input) = problem.answer input
  preservesQueries :
    ∀ coordinate left right,
      problem.differsAt (coordinates coordinate)
          (inputs left) (inputs right) =
        problem.differsAt coordinate left right

/--
The query lower bound is proof-bearing.  A witness matrix alone does not
construct this certificate; the declared oracle theorem must connect its
ratio to every bounded-error algorithm.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/AdversaryInvariant/Variant81ade8ceaa333a999b856745096a45e209809297cf1f4a0c3e20bb1aef0eccff.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/AdversaryInvariant/Variant81ade8ceaa333a999b856745096a45e209809297cf1f4a0c3e20bb1aef0eccff.lean#L105).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `947452e1d6ac21f618b8849cb5ccf67e1b0f15d7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
