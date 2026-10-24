# SourceContext

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:495fdcc0314e25fc25f895701a25f9c90e55c4d46be1fca28338c1002134d145",
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
  "slug": "sourcecontext--434109b57d30bde18adc6b8d",
  "source": {
    "blob": "d61308506f8904092348d109c9abfeef4e21a456",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 40,
    "line": 18,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AEa42e0a227256c36/Variant09f10c4304eed0c05cad534f444d239740763a792c290321dd132599f8dd51a9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:434109b57d30bde18adc6b8d7421c805c3fcdfae6c41981c614b046fdb67f9c4",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AEa42e0a227256c36/Variant09f10c4304eed0c05cad534f444d239740763a792c290321dd132599f8dd51a9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:495fdcc0314e25fc25f895701a25f9c90e55c4d46be1fca28338c1002134d145`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 18–40.

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

end MathDiscovery.Atom
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AEa42e0a227256c36/Variant09f10c4304eed0c05cad534f444d239740763a792c290321dd132599f8dd51a9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AEa42e0a227256c36/Variant09f10c4304eed0c05cad534f444d239740763a792c290321dd132599f8dd51a9.lean#L18).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d61308506f8904092348d109c9abfeef4e21a456` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
