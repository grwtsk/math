# expandModuleTargetKeyLit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:58f79fffec5f4417a107e5f38a4df3b7e432e920667066e3b3f7e33a71b07567",
  "kind": "def",
  "lexical_name": "expandModuleTargetKeyLit",
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
  "slug": "expandmoduletargetkeylit--9622040caadabfc63f782d5f",
  "source": {
    "blob": "4f398371e7a57545e7a4741b1e7bf5ba0201e21b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 54,
    "line": 45,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Key/Variantccbc7ca413fb0fba84c795a68abdf8e6b4034ee1c36da6dfd99e3f831d533386.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9622040caadabfc63f782d5fd686085402fdc3a4f748ae3f88bb786f7b9e528a",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Key/Variantccbc7ca413fb0fba84c795a68abdf8e6b4034ee1c36da6dfd99e3f831d533386.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:58f79fffec5f4417a107e5f38a4df3b7e432e920667066e3b3f7e33a71b07567`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 45–54.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def expandModuleTargetKeyLit : Macro := fun stx => do
  let `(`+%$tk$mod$[:$facets]*) := stx
    | Macro.throwUnsupported
  withRef tk do
  let modLit := Name.quoteFrom mod mod.getId
  let tgt ← `(BuildKey.module $modLit)
  let key ← expandFacets tgt facets
  `(PartialBuildKey.mk $key)

@[builtin_macro packageTargetKeyLit]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Key/Variantccbc7ca413fb0fba84c795a68abdf8e6b4034ee1c36da6dfd99e3f831d533386.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Key/Variantccbc7ca413fb0fba84c795a68abdf8e6b4034ee1c36da6dfd99e3f831d533386.lean#L45).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4f398371e7a57545e7a4741b1e7bf5ba0201e21b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
