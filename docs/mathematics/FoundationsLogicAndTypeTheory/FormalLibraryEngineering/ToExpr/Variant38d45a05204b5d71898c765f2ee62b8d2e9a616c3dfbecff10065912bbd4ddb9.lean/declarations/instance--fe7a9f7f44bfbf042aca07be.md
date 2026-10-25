# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:06a03f6c084ced25d32f02f83f460fa64cdc8f5810db51174e2e4b880d33543d",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--fe7a9f7f44bfbf042aca07be",
  "source": {
    "blob": "6396d46178cc9ac32cbd7e8e50470968aa40fd91",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 51,
    "line": 36,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToExpr/Variant38d45a05204b5d71898c765f2ee62b8d2e9a616c3dfbecff10065912bbd4ddb9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fe7a9f7f44bfbf042aca07beaba9cc3c87c106615e9f3c02f71aeb8d6998c9a4",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToExpr/Variant38d45a05204b5d71898c765f2ee62b8d2e9a616c3dfbecff10065912bbd4ddb9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:06a03f6c084ced25d32f02f83f460fa64cdc8f5810db51174e2e4b880d33543d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 36–51.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance : ToExpr MData where
  toTypeExpr := .const ``MData []
  toExpr md := Id.run do
    let mut e := .const ``MData.empty []
    for (k, v) in md do
      let k := toExpr k
      e := open DataValue in match v with
      | ofString v => mkApp3 (.const ``KVMap.setString []) e k (toExpr v)
      | ofBool v   => mkApp3 (.const ``KVMap.setBool []) e k (toExpr v)
      | ofName v   => mkApp3 (.const ``KVMap.setName []) e k (toExpr v)
      | ofNat v    => mkApp3 (.const ``KVMap.setNat []) e k (toExpr v)
      | ofInt v    => mkApp3 (.const ``KVMap.setInt []) e k (toExpr v)
      | ofSyntax _ => e -- TODO
    e

open Expr Literal in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToExpr/Variant38d45a05204b5d71898c765f2ee62b8d2e9a616c3dfbecff10065912bbd4ddb9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToExpr/Variant38d45a05204b5d71898c765f2ee62b8d2e9a616c3dfbecff10065912bbd4ddb9.lean#L36).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6396d46178cc9ac32cbd7e8e50470968aa40fd91` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
