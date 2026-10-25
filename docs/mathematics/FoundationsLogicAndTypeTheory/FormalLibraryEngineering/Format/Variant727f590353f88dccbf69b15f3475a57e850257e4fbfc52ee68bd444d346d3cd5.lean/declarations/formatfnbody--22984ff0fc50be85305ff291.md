# formatFnBody

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ab3f4c4381b2d9276f9457bf9962dfc32cc8a4c853ed60142dc97014ba4e3d77",
  "kind": "def",
  "lexical_name": "formatFnBody",
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
  "slug": "formatfnbody--22984ff0fc50be85305ff291",
  "source": {
    "blob": "fcbc0b47188d223e8086e903401e2bb2e70e9c2f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 139,
    "line": 123,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Format/Variant727f590353f88dccbf69b15f3475a57e850257e4fbfc52ee68bd444d346d3cd5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:22984ff0fc50be85305ff29185c549f00f00eb8fca971bcd8e1b4a78872a1aa6",
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

Occurrence: `declaration:ab3f4c4381b2d9276f9457bf9962dfc32cc8a4c853ed60142dc97014ba4e3d77`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 123–139.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def formatFnBody (fnBody : FnBody) (indent : Nat := 2) : Format :=
  let rec loop : FnBody → Format
    | FnBody.vdecl x ty e b      => "let " ++ format x ++ " : " ++ format ty ++ " := " ++ format e ++ ";" ++ Format.line ++ loop b
    | FnBody.jdecl j xs v b      => format j ++ formatParams xs ++ " :=" ++ Format.nest indent (Format.line ++ loop v) ++ ";" ++ Format.line ++ loop b
    | FnBody.set x i y b         => "set " ++ format x ++ "[" ++ format i ++ "] := " ++ format y ++ ";" ++ Format.line ++ loop b
    | FnBody.uset x i y b        => "uset " ++ format x ++ "[" ++ format i ++ "] := " ++ format y ++ ";" ++ Format.line ++ loop b
    | FnBody.sset x i o y ty b   => "sset " ++ format x ++ "[" ++ format i ++ ", " ++ format o ++ "] : " ++ format ty ++ " := " ++ format y ++ ";" ++ Format.line ++ loop b
    | FnBody.setTag x cidx b     => "setTag " ++ format x ++ " := " ++ format cidx ++ ";" ++ Format.line ++ loop b
    | FnBody.inc x n _ _ b       => "inc" ++ (if n != 1 then Format.sbracket (format n) else "") ++ " " ++ format x ++ ";" ++ Format.line ++ loop b
    | FnBody.dec x n _ _ b       => "dec" ++ (if n != 1 then Format.sbracket (format n) else "") ++ " " ++ format x ++ ";" ++ Format.line ++ loop b
    | FnBody.del x b             => "del " ++ format x ++ ";" ++ Format.line ++ loop b
    | FnBody.case _ x xType cs   => "case " ++ format x ++ " : " ++ format xType ++ " of" ++ cs.foldl (fun r c => r ++ Format.line ++ formatAlt loop indent c) Format.nil
    | FnBody.jmp j ys            => "jmp " ++ format j ++ formatArray ys
    | FnBody.ret x               => "ret " ++ format x
    | FnBody.unreachable         => "⊥"
  loop fnBody

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Format/Variant727f590353f88dccbf69b15f3475a57e850257e4fbfc52ee68bd444d346d3cd5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Format/Variant727f590353f88dccbf69b15f3475a57e850257e4fbfc52ee68bd444d346d3cd5.lean#L123).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fcbc0b47188d223e8086e903401e2bb2e70e9c2f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
