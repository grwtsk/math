# quickCmpAux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6ee1b54df186047069f4d4e1689485c05ee7fcd75683903124ca5b2c5e78234f",
  "kind": "def",
  "lexical_name": "quickCmpAux",
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
  "slug": "quickcmpaux--b5eb229b49e4fcff5538aaa6",
  "source": {
    "blob": "2b8e2d6177adfc6bd6b209a53c53f75a164fe639",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 107,
    "line": 93,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Name/Variantf9ffadd4ef5292955844acbc2210c0fb52d98ba1576f9207a2e59c13d83a9a5c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b5eb229b49e4fcff5538aaa618235019e526a0a32213cc92b636c3b059f444d4",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Name/Variantf9ffadd4ef5292955844acbc2210c0fb52d98ba1576f9207a2e59c13d83a9a5c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6ee1b54df186047069f4d4e1689485c05ee7fcd75683903124ca5b2c5e78234f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 93–107.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def quickCmpAux : Name → Name → Ordering
  | anonymous, anonymous => Ordering.eq
  | anonymous, _         => Ordering.lt
  | _,         anonymous => Ordering.gt
  | num n v, num n' v' =>
    match compare v v' with
    | Ordering.eq => n.quickCmpAux n'
    | ord => ord
  | num _ _, str _  _  => Ordering.lt
  | str _ _, num _  _  => Ordering.gt
  | str n s, str n' s' =>
    match compare s s' with
    | Ordering.eq => n.quickCmpAux n'
    | ord => ord

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Name/Variantf9ffadd4ef5292955844acbc2210c0fb52d98ba1576f9207a2e59c13d83a9a5c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Name/Variantf9ffadd4ef5292955844acbc2210c0fb52d98ba1576f9207a2e59c13d83a9a5c.lean#L93).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2b8e2d6177adfc6bd6b209a53c53f75a164fe639` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
