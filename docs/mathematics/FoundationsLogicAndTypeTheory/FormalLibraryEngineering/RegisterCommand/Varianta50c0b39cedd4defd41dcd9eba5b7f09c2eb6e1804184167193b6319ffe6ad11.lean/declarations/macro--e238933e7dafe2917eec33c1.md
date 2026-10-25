# Anonymous macro

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c46bdbf88961095a4fefa8721ff9db66252c76bbd50f3c16d329a1a17a9f4a1b",
  "kind": "macro",
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
  "slug": "macro--e238933e7dafe2917eec33c1",
  "source": {
    "blob": "6e2267f83d496f1e7448e7ebf98c3888366e2f59",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 29,
    "line": 12,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RegisterCommand/Varianta50c0b39cedd4defd41dcd9eba5b7f09c2eb6e1804184167193b6319ffe6ad11.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e238933e7dafe2917eec33c1300b2deb36da3d6823ae87569417146980ecdd97",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RegisterCommand/Varianta50c0b39cedd4defd41dcd9eba5b7f09c2eb6e1804184167193b6319ffe6ad11.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `macro` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c46bdbf88961095a4fefa8721ff9db66252c76bbd50f3c16d329a1a17a9f4a1b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 12–29.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
macro (name := _root_.Lean.Parser.Command.registerGrindAttr) doc:(docComment)?
  "register_grind_attr" id:ident : command => do
  let str1 := id.getId.toString
  let idParser1 := mkIdentFrom id (`Lean.Parser.Attr ++ id.getId)
  let str2 := id.getId.toString ++ "!"
  let idParser2 := mkIdentFrom id (`Lean.Parser.Attr ++ (id.getId.appendAfter "!"))
  let str3 := id.getId.toString ++ "?"
  let idParser3 := mkIdentFrom id (`Lean.Parser.Attr ++ (id.getId.appendAfter "?"))
  let str4 := id.getId.toString ++ "!?"
  let idParser4 := mkIdentFrom id (`Lean.Parser.Attr ++ (id.getId.appendAfter "!?"))
  `($[$doc:docComment]? public meta initialize ext : Extension ← registerAttr $(quote id.getId)
    $[$doc:docComment]? syntax (name := $idParser1:ident) $(quote str1):str (ppSpace Lean.Parser.Attr.grindMod)? : attr
    $[$doc:docComment]? syntax (name := $idParser2:ident) $(quote str2):str (ppSpace Lean.Parser.Attr.grindMod)? : attr
    $[$doc:docComment]? syntax (name := $idParser3:ident) $(quote str3):str (ppSpace Lean.Parser.Attr.grindMod)? : attr
    $[$doc:docComment]? syntax (name := $idParser4:ident) $(quote str4):str (ppSpace Lean.Parser.Attr.grindMod)? : attr
    )

end Lean.Meta.Grind
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RegisterCommand/Varianta50c0b39cedd4defd41dcd9eba5b7f09c2eb6e1804184167193b6319ffe6ad11.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RegisterCommand/Varianta50c0b39cedd4defd41dcd9eba5b7f09c2eb6e1804184167193b6319ffe6ad11.lean#L12).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6e2267f83d496f1e7448e7ebf98c3888366e2f59` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
