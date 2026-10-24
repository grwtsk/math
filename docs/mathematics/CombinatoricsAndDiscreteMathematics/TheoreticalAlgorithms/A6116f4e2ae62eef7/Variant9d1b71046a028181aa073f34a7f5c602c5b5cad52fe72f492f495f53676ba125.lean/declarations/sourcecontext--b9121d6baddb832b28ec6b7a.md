# SourceContext

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d1a2f55e4d19059c331ccf26ee49dc37eddc84a19797ad6f1874fed6cf6d485f",
  "kind": "structure",
  "lexical_name": "SourceContext",
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
  "slug": "sourcecontext--b9121d6baddb832b28ec6b7a",
  "source": {
    "blob": "39b62bb1884bfd7d8234b2e5206dbb4ee1ed6ebe",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 41,
    "line": 19,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/A6116f4e2ae62eef7/Variant9d1b71046a028181aa073f34a7f5c602c5b5cad52fe72f492f495f53676ba125.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b9121d6baddb832b28ec6b7abdcb6d2a547784b671729ea5c6e101e3d3a298d6",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/A6116f4e2ae62eef7/Variant9d1b71046a028181aa073f34a7f5c602c5b5cad52fe72f492f495f53676ba125.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d1a2f55e4d19059c331ccf26ee49dc37eddc84a19797ad6f1874fed6cf6d485f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 19–41.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure SourceContext where
  id : SourceContextId
  namespaceStack : Array String
  sectionStack : Array String
  universes : Array String
  variables : Array String
  openNamespaces : Array String
  openScoped : Array String
  options : Array NamedBinding
  localInstances : Array ExtractorDeclarationId
  localAttributes : Array NamedBinding
  syntaxProviders : Array SourceCommandId
  notationProviders : Array SourceCommandId
  macroProviders : Array SourceCommandId
  commandElaboratorProviders : Array SourceCommandId
  isNoncomputable : Bool
  autoImplicit : Bool
  includedVariables : Array String
  omittedVariables : Array String
  digest : Digest
  deriving DecidableEq, Repr

end Mathematics.Element
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/A6116f4e2ae62eef7/Variant9d1b71046a028181aa073f34a7f5c602c5b5cad52fe72f492f495f53676ba125.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/A6116f4e2ae62eef7/Variant9d1b71046a028181aa073f34a7f5c602c5b5cad52fe72f492f495f53676ba125.lean#L19).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `39b62bb1884bfd7d8234b2e5206dbb4ee1ed6ebe` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
