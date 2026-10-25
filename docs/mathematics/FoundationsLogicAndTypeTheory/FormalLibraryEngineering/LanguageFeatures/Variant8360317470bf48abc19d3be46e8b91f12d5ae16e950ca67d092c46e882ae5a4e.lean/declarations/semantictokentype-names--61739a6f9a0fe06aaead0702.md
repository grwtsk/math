# SemanticTokenType.names

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4b9c5885f19f00e76f4c395ba7dd22cdc49c15d5514ff3fb315f7e877ac9f956",
  "kind": "def",
  "lexical_name": "SemanticTokenType.names",
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
  "slug": "semantictokentype-names--61739a6f9a0fe06aaead0702",
  "source": {
    "blob": "548df6b0e35fc27596c80d51efeec5ea6371a422",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 465,
    "line": 460,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LanguageFeatures/Variant8360317470bf48abc19d3be46e8b91f12d5ae16e950ca67d092c46e882ae5a4e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:61739a6f9a0fe06aaead07021a108331e8359b710610b97ab68e98cb93db6b35",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LanguageFeatures/Variant8360317470bf48abc19d3be46e8b91f12d5ae16e950ca67d092c46e882ae5a4e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4b9c5885f19f00e76f4c395ba7dd22cdc49c15d5514ff3fb315f7e877ac9f956`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 460–465.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def SemanticTokenType.names : Array String :=
  #["keyword", "variable", "property", "function", "namespace", "type", "class",
    "enum", "interface", "struct", "typeParameter", "parameter", "enumMember",
    "event", "method", "macro", "modifier", "comment", "string", "number",
    "regexp", "operator", "decorator", "leanSorryLike"]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LanguageFeatures/Variant8360317470bf48abc19d3be46e8b91f12d5ae16e950ca67d092c46e882ae5a4e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LanguageFeatures/Variant8360317470bf48abc19d3be46e8b91f12d5ae16e950ca67d092c46e882ae5a4e.lean#L460).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `548df6b0e35fc27596c80d51efeec5ea6371a422` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
