# allKinds

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1606c074cd98e6dadec4dec26b5c8b125448134720cec65bc6da8ee6d3af3816",
  "kind": "def",
  "lexical_name": "allKinds",
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
  "slug": "allkinds--cfafa4175efc7bea16ec595d",
  "source": {
    "blob": "ac3a39e2d71361de69ab60d0fe0659c1be3d1906",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 26,
    "line": 17,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AE971cc28f74b8b0c/Variant7f60ad111f7f14c94eb279a4df5c13acc112cecdf2853e655aba7699085dadbb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:cfafa4175efc7bea16ec595d7f26da8ad805f3d88f560eb783f9b393670caccd",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AE971cc28f74b8b0c/Variant7f60ad111f7f14c94eb279a4df5c13acc112cecdf2853e655aba7699085dadbb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1606c074cd98e6dadec4dec26b5c8b125448134720cec65bc6da8ee6d3af3816`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 17–26.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def allKinds : List Kind := [
  .directConstruction, .introduction, .application, .caseAnalysis,
  .structuralInduction, .wellFoundedInduction, .contradiction, .exFalso,
  .rewriting, .congruence, .extensionality, .witnessConstruction, .uniqueness,
  .quotientInduction, .finiteEnumeration, .normalization, .decisionProcedure,
  .reflection, .orderReasoning, .algebraicCalculation, .classicalChoice,
  .dependencyDelegation
]

end MathDiscovery.ProofStrategy
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AE971cc28f74b8b0c/Variant7f60ad111f7f14c94eb279a4df5c13acc112cecdf2853e655aba7699085dadbb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AE971cc28f74b8b0c/Variant7f60ad111f7f14c94eb279a4df5c13acc112cecdf2853e655aba7699085dadbb.lean#L17).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ac3a39e2d71361de69ab60d0fe0659c1be3d1906` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
