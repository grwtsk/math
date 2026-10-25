# formatFnBodyHead

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4143d30d75c1dcf63ee03652494b42818ec039e7aa6c88bf4fbc1d2c5ca1c7c3",
  "kind": "def",
  "lexical_name": "formatFnBodyHead",
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
  "slug": "formatfnbodyhead--2edfb55806c7af4880f5a0a3",
  "source": {
    "blob": "fcbc0b47188d223e8086e903401e2bb2e70e9c2f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 119,
    "line": 104,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Format/Variant727f590353f88dccbf69b15f3475a57e850257e4fbfc52ee68bd444d346d3cd5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2edfb55806c7af4880f5a0a35762324076d2315ea75de3369dfa2d868630840c",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Format/Variant727f590353f88dccbf69b15f3475a57e850257e4fbfc52ee68bd444d346d3cd5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4143d30d75c1dcf63ee03652494b42818ec039e7aa6c88bf4fbc1d2c5ca1c7c3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 104–119.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def formatFnBodyHead : FnBody → Format
  | FnBody.vdecl x ty e _      => "let " ++ format x ++ " : " ++ format ty ++ " := " ++ format e
  | FnBody.jdecl j xs _ _      => format j ++ formatParams xs ++ " := ..."
  | FnBody.set x i y _         => "set " ++ format x ++ "[" ++ format i ++ "] := " ++ format y
  | FnBody.uset x i y _        => "uset " ++ format x ++ "[" ++ format i ++ "] := " ++ format y
  | FnBody.sset x i o y ty _   => "sset " ++ format x ++ "[" ++ format i ++ ", " ++ format o ++ "] : " ++ format ty ++ " := " ++ format y
  | FnBody.setTag x cidx _     => "setTag " ++ format x ++ " := " ++ format cidx
  | FnBody.inc x n _ _ _       => "inc" ++ (if n != 1 then Format.sbracket (format n) else "") ++ " " ++ format x
  | FnBody.dec x n _ _ _       => "dec" ++ (if n != 1 then Format.sbracket (format n) else "") ++ " " ++ format x
  | FnBody.del x _             => "del " ++ format x
  | FnBody.case _   x _     _  => "case " ++ format x ++ " of ..."
  | FnBody.jmp j ys            => "jmp " ++ format j ++ formatArray ys
  | FnBody.ret x               => "ret " ++ format x
  | FnBody.unreachable         => "⊥"

@[export lean_ir_format_fn_body_head]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Format/Variant727f590353f88dccbf69b15f3475a57e850257e4fbfc52ee68bd444d346d3cd5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Format/Variant727f590353f88dccbf69b15f3475a57e850257e4fbfc52ee68bd444d346d3cd5.lean#L104).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fcbc0b47188d223e8086e903401e2bb2e70e9c2f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
