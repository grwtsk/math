# elabAttrs

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a889e4d79a668fddecb374766eb234c7fdaa99fdd093a7465ae6a5dc75678d8e",
  "kind": "def",
  "lexical_name": "elabAttrs",
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
  "slug": "elabattrs--7b7e14d21b0a31543a30ef25",
  "source": {
    "blob": "31e2b059d1061c21c8dc5e5e327a06f038a14b8f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 88,
    "line": 79,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Attributes/Variant9eed1ea3047fbc965a3d85807f20ee195cdbffe666e415052cdfb9b7f780d91e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7b7e14d21b0a31543a30ef25978a89c531967c25d9e710a172e2fa1bc857271d",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Attributes/Variant9eed1ea3047fbc965a3d85807f20ee195cdbffe666e415052cdfb9b7f780d91e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a889e4d79a668fddecb374766eb234c7fdaa99fdd093a7465ae6a5dc75678d8e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 79–88.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def elabAttrs [Monad m] [MonadEnv m] [MonadResolveName m] [MonadError m] [MonadMacroAdapter m] [MonadRecDepth m] [MonadTrace m] [MonadOptions m] [AddMessageContext m] [MonadLog m] [MonadLiftT IO m] [MonadFinally m] (attrInstances : Array Syntax) : m (Array Attribute) := do
  let mut attrs := #[]
  for attr in attrInstances do
    try
      attrs := attrs.push (← withRef attr do elabAttr attr)
    catch ex =>
      logException ex
  return attrs

-- leading_parser "@[" >> sepBy1 attrInstance ", " >> "]"
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Attributes/Variant9eed1ea3047fbc965a3d85807f20ee195cdbffe666e415052cdfb9b7f780d91e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Attributes/Variant9eed1ea3047fbc965a3d85807f20ee195cdbffe666e415052cdfb9b7f780d91e.lean#L79).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `31e2b059d1061c21c8dc5e5e327a06f038a14b8f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
