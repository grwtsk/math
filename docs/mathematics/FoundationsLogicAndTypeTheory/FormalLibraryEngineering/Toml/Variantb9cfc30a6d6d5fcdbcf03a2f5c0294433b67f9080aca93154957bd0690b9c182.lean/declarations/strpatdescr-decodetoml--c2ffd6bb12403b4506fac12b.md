# StrPatDescr.decodeToml

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b3688a30d5d314b0f914622bb2e6e14f84151922bf0e0f96e1dc8b06fbdcb12a",
  "kind": "def",
  "lexical_name": "StrPatDescr.decodeToml",
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
  "slug": "strpatdescr-decodetoml--c2ffd6bb12403b4506fac12b",
  "source": {
    "blob": "6f71007adf3d52a827763c246fd0f0ba924699bb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 241,
    "line": 230,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Toml/Variantb9cfc30a6d6d5fcdbcf03a2f5c0294433b67f9080aca93154957bd0690b9c182.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c2ffd6bb12403b4506fac12bdf4e2c6ca4914ee84d71e55d60e7142b01d56fd0",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Toml/Variantb9cfc30a6d6d5fcdbcf03a2f5c0294433b67f9080aca93154957bd0690b9c182.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b3688a30d5d314b0f914622bb2e6e14f84151922bf0e0f96e1dc8b06fbdcb12a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 230–241.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public protected def StrPatDescr.decodeToml (v : Value) : EDecodeM StrPatDescr :=
  match v with
  | .array _ vs => .mem <$> decodeArray vs
  | .table r t => do
    if let some affix ← t.decode? `startsWith then
      return .startsWith affix
    else if let some affix ← t.decode? `endsWith then
      return .endsWith affix
    else
      throwDecodeErrorAt r "expected string pattern"
  | v => throwDecodeErrorAt v.ref "expected string pattern"

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Toml/Variantb9cfc30a6d6d5fcdbcf03a2f5c0294433b67f9080aca93154957bd0690b9c182.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Toml/Variantb9cfc30a6d6d5fcdbcf03a2f5c0294433b67f9080aca93154957bd0690b9c182.lean#L230).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6f71007adf3d52a827763c246fd0f0ba924699bb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
