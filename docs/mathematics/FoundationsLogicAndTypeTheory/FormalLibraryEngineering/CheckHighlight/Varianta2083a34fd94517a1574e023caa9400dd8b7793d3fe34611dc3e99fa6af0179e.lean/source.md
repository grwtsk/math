# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CheckHighlight.Varianta2083a34fd94517a1574e023caa9400dd8b7793d3fe34611dc3e99fa6af0179e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1257be913c41b178510f82101c3c74e579d4be88` · SHA-256 `21c6463db15c87601936a68c2dba0c7c0607097dfbb9ace25f5e972018ca7912`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ProofWidgetsCheckHighlight.Variant1d31ec310f5735531d4d6c0370b1a14a9ddc1a1117c9b90b96b230cef5560757","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"1d31ec310f5735531d4d6c0370b1a14a9ddc1a1117c9b90b96b230cef5560757","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.ProofWidgetsCheckHighlight.Variant1d31ec310f5735531d4d6c0370b1a14a9ddc1a1117c9b90b96b230cef5560757","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"1d31ec310f5735531d4d6c0370b1a14a9ddc1a1117c9b90b96b230cef5560757","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/proofwidgets/ProofWidgets/Extra/CheckHighlight.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","implicit_eof_scopes","interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
module

public import ProofWidgets.Component.HtmlDisplay


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ProofWidgetsCheckHighlight.Variant1d31ec310f5735531d4d6c0370b1a14a9ddc1a1117c9b90b96b230cef5560757

public meta section

open Lean ProofWidgets Jsx in
/--
Print the signature of `name` as a widget message in the infoview
with dimmed implicit arguments (opacity 50%).

Arguments:
* `name`: fully qualified name of the constant to print the signature of
* `showAlt`: if `false`, implicit arguments are omitted
  from the `alt` argument of `MessageData.ofWidget`
-/
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
elab "#checkh " name:ident : command =>
  Lean.Elab.Command.runTermElabM fun _ => do
    for fullName in (← Lean.Elab.realizeGlobalConstWithInfos name) do
      ProofWidgets.CheckHighlight fullName false
/--
A version of `#check` that dims implicit arguments in the infoview,
and displays them as usual in non-interactive output (e.g. on the command-line).
See also `#checkh`.
-/
elab "#checkh' " name:ident : command =>
  Lean.Elab.Command.runTermElabM fun _ => do
    for fullName in (← Lean.Elab.realizeGlobalConstWithInfos name) do
      ProofWidgets.CheckHighlight fullName true
```
