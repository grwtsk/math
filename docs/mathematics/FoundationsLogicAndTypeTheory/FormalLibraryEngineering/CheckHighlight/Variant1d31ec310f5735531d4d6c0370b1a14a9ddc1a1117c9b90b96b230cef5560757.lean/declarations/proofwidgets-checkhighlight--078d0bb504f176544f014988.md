# ProofWidgets.CheckHighlight

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:84be659d040145f29a9597144c69e7863e3996499349f39cc6ee2844b2f8e02c",
  "kind": "def",
  "lexical_name": "ProofWidgets.CheckHighlight",
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
  "slug": "proofwidgets-checkhighlight--078d0bb504f176544f014988",
  "source": {
    "blob": "c4abc75f5530f70229f0ac1662e6286bc7984903",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 82,
    "line": 17,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CheckHighlight/Variant1d31ec310f5735531d4d6c0370b1a14a9ddc1a1117c9b90b96b230cef5560757.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:078d0bb504f176544f01498836889a26daa81f8f55e5f066d01ce6e3e64edc84",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CheckHighlight/Variant1d31ec310f5735531d4d6c0370b1a14a9ddc1a1117c9b90b96b230cef5560757.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:84be659d040145f29a9597144c69e7863e3996499349f39cc6ee2844b2f8e02c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 17–82.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def ProofWidgets.CheckHighlight (name : Lean.Name) (showAlt : Bool) : MetaM Unit := do
  let constVal ← getConstVal name
  Meta.forallTelescope constVal.type <| fun args outType => do
    let mut msg : MessageData := toString name
    if !constVal.levelParams.isEmpty then
      let univStr : String := ",".intercalate (constVal.levelParams.map toString)
      let univStr := ".{" ++ univStr ++ "}"
      let alt := if showAlt then univStr else ""
      msg := msg ++ (←MessageData.ofHtml <span «class»="o-50">{
        .text <| univStr
      }</span> alt)
    let decls ← args.mapM Meta.getFVarLocalDecl
    let groups := decls.toList.splitBy
      (fun d1 d2 => declCore d1 == declCore d2)
    for group in groups do
      let decl : LocalDecl := group.head!
      let (p1,p2) : String × String := match decl.binderInfo with
      | .default => ("(",")")
      | .implicit => ("{","}")
      | .instImplicit => ("[","]")
      | .strictImplicit => ("⦃","⦄")
      let mut paramParts : Array (String ⊕ Expr) := #[.inl " "]
      paramParts := paramParts.push (.inl p1)
      if group.length > 1 ∨ ¬decl.binderInfo.isInstImplicit then
        for arg in group do
          let e : Expr := .fvar arg.fvarId
          paramParts := paramParts.push (.inr e)
          paramParts := paramParts.push (.inl " ")
        paramParts := paramParts.push (.inl ": ")
      paramParts := paramParts.push (.inr decl.type)
      paramParts := paramParts.push (.inl p2)
      let paramMsg : MessageData ←
        if decl.binderInfo.isExplicit then
          pure <| paramParts.foldl (fun m part =>
            m ++ match part with
            | .inl s => toMessageData s
            | .inr e => toMessageData e
          ) m!""
        else
          let htmls ← paramParts.mapM (fun part => match part with
          | .inl s => pure (.text s)
          | .inr e => do
            let widget ← Lean.Widget.ppExprTagged e
            pure <InteractiveCode fmt={widget} />
          )
          let mut alt := ""
          if showAlt then
            let strs : Array String ← paramParts.mapM (fun part => match part with
            | .inl s => pure s
            | .inr e => toString <$> Meta.ppExpr e
            )
            alt := "".intercalate strs.toList
          pure <| ←MessageData.ofHtml
            (.element "span" #[("class", "o-50")] htmls) alt
      msg := msg ++ paramMsg
    msg := msg ++ " : "
    msg := msg ++ outType
    logInfo msg
where
  declCore (decl : Lean.LocalDecl) :=
    (decl.type, decl.binderInfo, decl.kind)

/--
A version of `#check` that dims implicit arguments in the infoview,
and omits them completely in non-interactive output (e.g. on the command-line).
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CheckHighlight/Variant1d31ec310f5735531d4d6c0370b1a14a9ddc1a1117c9b90b96b230cef5560757.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CheckHighlight/Variant1d31ec310f5735531d4d6c0370b1a14a9ddc1a1117c9b90b96b230cef5560757.lean#L17).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c4abc75f5530f70229f0ac1662e6286bc7984903` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
