# Flow.Expression.finiteMobiusTraceTriple

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:880e3a6961b4ac1617189e388aeca53cf3a6cf6ca2708e055703c7d981952459",
  "kind": "def",
  "lexical_name": "Flow.Expression.finiteMobiusTraceTriple",
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
  "slug": "flow-expression-finitemobiustracetriple--610cde1fcadd366cb82edbad",
  "source": {
    "blob": "8a90c1fb4d86456d693cc99a09c146155c6f0ec0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 305,
    "line": 295,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Matrix/Variantde5a0f313ba27a6cd38f4969e239bd720679381187622dd3265e86aa07910997.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:610cde1fcadd366cb82edbadef4652ac4389a7ea5c3506ae0c0814208e95a284",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Matrix/Variantde5a0f313ba27a6cd38f4969e239bd720679381187622dd3265e86aa07910997.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:880e3a6961b4ac1617189e388aeca53cf3a6cf6ca2708e055703c7d981952459`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 295–305.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Flow.Expression.finiteMobiusTraceTriple
    (t : Flow.Expression α) :
    Flow.FiniteMobiusTraceTriple α where
  nodes := Flow.Expression.nodeCount t
  matrix := Flow.Expression.mobiusMatrix t
  determinant := Flow.UnitDeterminantCertificate.treeMobius
  midpointBalance :=
    Flow.MidpointBalanceMetadata.standard
  tree := t

/-- The matrix component of the finite Möbius triple is the Möbius matrix. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Matrix/Variantde5a0f313ba27a6cd38f4969e239bd720679381187622dd3265e86aa07910997.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Matrix/Variantde5a0f313ba27a6cd38f4969e239bd720679381187622dd3265e86aa07910997.lean#L295).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8a90c1fb4d86456d693cc99a09c146155c6f0ec0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
