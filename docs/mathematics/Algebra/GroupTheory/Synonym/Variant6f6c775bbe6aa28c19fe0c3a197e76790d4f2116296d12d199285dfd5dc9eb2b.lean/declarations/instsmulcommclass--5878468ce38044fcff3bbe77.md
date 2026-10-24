# instSMulCommClass'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1d54674fddf011b1869a9389c1f03f31fdbc514a381fe6e9fa8e1a5420794d68",
  "kind": "instance",
  "lexical_name": "instSMulCommClass'",
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
  "slug": "instsmulcommclass--5878468ce38044fcff3bbe77",
  "source": {
    "blob": "f4f04bf77601d92ffdf5b3c2c94d32fb69951650",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 80,
    "line": 77,
    "path": "GRWTSK/Algebra/GroupTheory/Synonym/Variant6f6c775bbe6aa28c19fe0c3a197e76790d4f2116296d12d199285dfd5dc9eb2b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5878468ce38044fcff3bbe77ce6dffb13f5288ba8b03d43421eb4e4608914c14",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Synonym/Variant6f6c775bbe6aa28c19fe0c3a197e76790d4f2116296d12d199285dfd5dc9eb2b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1d54674fddf011b1869a9389c1f03f31fdbc514a381fe6e9fa8e1a5420794d68`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 77–80.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance instSMulCommClass' [SMul M α] [SMul N α] [SMulCommClass M N α] :
    SMulCommClass M (Lex N) α := ‹SMulCommClass M N α›

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Synonym/Variant6f6c775bbe6aa28c19fe0c3a197e76790d4f2116296d12d199285dfd5dc9eb2b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Synonym/Variant6f6c775bbe6aa28c19fe0c3a197e76790d4f2116296d12d199285dfd5dc9eb2b.lean#L77).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f4f04bf77601d92ffdf5b3c2c94d32fb69951650` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
