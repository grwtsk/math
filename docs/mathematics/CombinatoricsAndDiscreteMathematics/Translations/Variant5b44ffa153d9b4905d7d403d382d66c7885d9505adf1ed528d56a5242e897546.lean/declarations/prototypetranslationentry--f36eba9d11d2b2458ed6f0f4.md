# prototypeTranslationEntry

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d940a8b0d88ed0e719959076292b9e2160284d329ce9db5d8ac1e5c1be846003",
  "kind": "def",
  "lexical_name": "prototypeTranslationEntry",
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
  "slug": "prototypetranslationentry--f36eba9d11d2b2458ed6f0f4",
  "source": {
    "blob": "e694157859c8d50b0872b592cdef8b5073ce066d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 87,
    "line": 74,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Translations/Variant5b44ffa153d9b4905d7d403d382d66c7885d9505adf1ed528d56a5242e897546.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f36eba9d11d2b2458ed6f0f417ef93db14b5adbf81f1a25b3b4162454619b07b",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Translations/Variant5b44ffa153d9b4905d7d403d382d66c7885d9505adf1ed528d56a5242e897546.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d940a8b0d88ed0e719959076292b9e2160284d329ce9db5d8ac1e5c1be846003`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 74–87.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def prototypeTranslationEntry (edge : PrototypeEdge) :
    PrototypeTranslationEntry :=
  let endpoints := prototypeEdgeEndpoints edge
  { edge := edge
    identity := prototypeTranslationId edge
    source := prototypeModelIdentity (prototypeVertexModel endpoints.1)
    target := prototypeModelIdentity (prototypeVertexModel endpoints.2)
    relation := prototypeTranslationRelation edge
    unsupportedScope :=
      if edge = .τBS then [⟨"obligation:support-abstraction-loss"⟩]
      else if edge = .τPH then [⟨"obligation:orbit-chain-completeness"⟩]
      else [] }

/-- Finite registry of exactly all six carrier translations. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Translations/Variant5b44ffa153d9b4905d7d403d382d66c7885d9505adf1ed528d56a5242e897546.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Translations/Variant5b44ffa153d9b4905d7d403d382d66c7885d9505adf1ed528d56a5242e897546.lean#L74).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e694157859c8d50b0872b592cdef8b5073ce066d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
