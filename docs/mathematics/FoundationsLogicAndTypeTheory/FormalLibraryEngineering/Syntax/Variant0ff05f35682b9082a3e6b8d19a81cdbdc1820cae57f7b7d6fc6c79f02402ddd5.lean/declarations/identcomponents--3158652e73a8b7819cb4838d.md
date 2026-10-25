# identComponents

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:321508c2df127166c2bfe548e083d4ef12a6f7b3613b68bcbce5b230dc40b9fc",
  "kind": "def",
  "lexical_name": "identComponents",
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
  "slug": "identcomponents--3158652e73a8b7819cb4838d",
  "source": {
    "blob": "7ae2f43f42bcee91140c4db6987b1b19bb78e887",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 360,
    "line": 315,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variant0ff05f35682b9082a3e6b8d19a81cdbdc1820cae57f7b7d6fc6c79f02402ddd5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3158652e73a8b7819cb4838dfc0619ac26171f78589ed86b40710db75a5aab0e",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variant0ff05f35682b9082a3e6b8d19a81cdbdc1820cae57f7b7d6fc6c79f02402ddd5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:321508c2df127166c2bfe548e083d4ef12a6f7b3613b68bcbce5b230dc40b9fc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 315–360.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def identComponents (stx : Syntax) (nFields? : Option Nat := none) : List Syntax :=
  match stx with
  | ident si rawStr val _ => Id.run do
    let val := val.eraseMacroScopes
    -- Early return if the name has at most one component
    if val.getNumParts ≤ 1 then
      return [ident si rawStr val []]
    match si with
    | SourceInfo.original lead pos trail _ =>
      -- With original info, we assume that `rawStr` represents `val`.
      let nameComps := nameComps val nFields?
      let rawComps := splitNameLit rawStr
      if !rawComps.isEmpty then
        let rawComps :=
          if let some nFields := nFields? then
            let nPrefix := rawComps.length - nFields
            let prefixSz := rawComps.take nPrefix |>.foldl (init := 0) fun acc (ss : Substring.Raw) => acc + ss.bsize + 1
            let prefixSz := prefixSz - 1 -- The last component has no dot
            rawStr.extract 0 ⟨prefixSz⟩ :: rawComps.drop nPrefix
          else
            rawComps
        if nameComps.length == rawComps.length then
          return nameComps.zip rawComps |>.map fun (id, ss) =>
            let off := ss.startPos.unoffsetBy rawStr.startPos
            let lead := if off == 0 then lead else "".toRawSubstring
            let trail := if ss.stopPos == rawStr.stopPos then trail else "".toRawSubstring
            let info := original lead (pos.offsetBy off) trail (pos.offsetBy off |>.offsetBy ⟨ss.bsize⟩)
            ident info ss id []
      -- if re-parsing failed, just give them all the same span
      nameComps.map fun n => ident si n.toString.toRawSubstring n []
    | _ =>
      /- With non-original info:
      - `rawStr` can take all kinds of forms so we only use `val`.
      - there is no source extent to offset, so we pass it as-is. -/
      nameComps val nFields? |>.map fun n => ident si n.toString.toRawSubstring n []
  | _ => unreachable!
  where
    nameComps (n : Name) (nFields? : Option Nat) : List Name :=
      if let some nFields := nFields? then
        let nameComps := n.components
        let nPrefix := nameComps.length - nFields
        let namePrefix := nameComps.take nPrefix |>.foldl (init := Name.anonymous) fun acc n => acc ++ n
        namePrefix :: nameComps.drop nPrefix
      else
        n.components

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variant0ff05f35682b9082a3e6b8d19a81cdbdc1820cae57f7b7d6fc6c79f02402ddd5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variant0ff05f35682b9082a3e6b8d19a81cdbdc1820cae57f7b7d6fc6c79f02402ddd5.lean#L315).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7ae2f43f42bcee91140c4db6987b1b19bb78e887` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
