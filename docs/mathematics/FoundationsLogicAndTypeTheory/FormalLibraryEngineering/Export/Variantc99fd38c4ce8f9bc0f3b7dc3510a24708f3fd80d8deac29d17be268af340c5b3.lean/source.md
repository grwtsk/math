# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Export.Variantc99fd38c4ce8f9bc0f3b7dc3510a24708f3fd80d8deac29d17be268af340c5b3

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `df93042f6586dd3c3bff7352f8e2a722f18de945` · SHA-256 `c99fd38c4ce8f9bc0f3b7dc3510a24708f3fd80d8deac29d17be268af340c5b3`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Lean

/-!
Non-TCB, version 1 source-scoped declaration export for historical T-001/v1.
Run with the historical pinned Lake environment. This program does not replay
anything in noeaaeue-kernel and does not grant any protected authority.
-/

open Lean

namespace SourceCapsule

def exporterVersion := "1.0.0"
def rootName : Name := `FormalResearch.MathematicalTooling.SymbolCounts.count_profiles_classify_reordering
def rootModule : Name := `FormalResearch.MathematicalTooling.SymbolCounts.Reordering
def maxNodes : Nat := 100000
def maxExprNodes : Nat := 10000000
def maxDepth : Nat := 4096

def js (s : String) : Json := .str s
def jn (n : Nat) : Json := toJson n
def jb (b : Bool) : Json := toJson b
def ja (xs : Array Json) : Json := .arr xs
def jo (xs : List (String × Json)) : Json := Json.mkObj xs

def nameJson : Name → Json
  | .anonymous => ja #[js "anonymous"]
  | .str p s => ja #[js "str", nameJson p, js s]
  | .num p n => ja #[js "num", nameJson p, jn n]

def namesJson (ns : List Name) : Json := ja (ns.toArray.map (js ∘ toString))

def binderJson : BinderInfo → Json
  | .default => js "default"
  | .implicit => js "implicit"
  | .strictImplicit => js "strictImplicit"
  | .instImplicit => js "instImplicit"

structure State where
  refs : NameSet := {}
  exprNodes : Nat := 0
  maxObservedDepth : Nat := 0
  gaps : Array String := #[]

abbrev M := StateT State (Except String)

def gap (s : String) : M Unit := modify fun st => { st with gaps := st.gaps.push s }

def depthCheck (depth : Nat) : M Unit := do
  if depth > maxDepth then throw s!"expression depth exceeds {maxDepth}"
  modify fun st => { st with maxObservedDepth := max st.maxObservedDepth depth }

partial def levelJson (u : Level) (depth := 0) : M Json := do
  depthCheck depth
  match u with
  | .zero => return ja #[js "zero"]
  | .succ a => return ja #[js "succ", ← levelJson a (depth + 1)]
  | .max a b => return ja #[js "max", ← levelJson a (depth + 1), ← levelJson b (depth + 1)]
  | .imax a b => return ja #[js "imax", ← levelJson a (depth + 1), ← levelJson b (depth + 1)]
  | .param n => return ja #[js "param", nameJson n]
  | .mvar n =>
    gap s!"unresolved universe metavariable {n.name}"
    return ja #[js "mvar", nameJson n.name]

def substringJson (s : Substring.Raw) : Json :=
  jo [("str", js s.str), ("start", jn s.startPos.byteIdx), ("stop", jn s.stopPos.byteIdx)]

def sourceInfoJson : SourceInfo → Json
  | .none => ja #[js "none"]
  | .synthetic p e c => ja #[js "synthetic", jn p.byteIdx, jn e.byteIdx, jb c]
  | .original l p t e => ja #[js "original", substringJson l, jn p.byteIdx, substringJson t, jn e.byteIdx]

def preresolvedJson : Syntax.Preresolved → Json
  | .namespace n => ja #[js "namespace", nameJson n]
  | .decl n fields => ja #[js "decl", nameJson n, toJson fields]

partial def syntaxJson (s : Syntax) (depth := 0) : M Json := do
  depthCheck depth
  match s with
  | .missing => return ja #[js "missing"]
  | .node info kind args => return ja #[js "node", sourceInfoJson info, nameJson kind,
      ja (← args.mapM (fun a => syntaxJson a (depth + 1)))]
  | .atom info val => return ja #[js "atom", sourceInfoJson info, js val]
  | .ident info raw val pre => return ja #[js "ident", sourceInfoJson info,
      substringJson raw, nameJson val, ja (pre.toArray.map preresolvedJson)]

def dataJson : DataValue → M Json
  | .ofString v => pure <| ja #[js "ofString", js v]
  | .ofBool v => pure <| ja #[js "ofBool", jb v]
  | .ofName v => pure <| ja #[js "ofName", nameJson v]
  | .ofNat v => pure <| ja #[js "ofNat", jn v]
  | .ofInt v => pure <| ja #[js "ofInt", toJson v]
  | .ofSyntax v => do return ja #[js "ofSyntax", ← syntaxJson v]

def ref (n : Name) : M Unit := modify fun st => { st with refs := st.refs.insert n }

partial def exprJson (e : Expr) (depth := 0) (binders := 0) : M Json := do
  depthCheck depth
  modify fun st => { st with exprNodes := st.exprNodes + 1 }
  if (← get).exprNodes > maxExprNodes then throw s!"expression occurrences exceed {maxExprNodes}"
  match e with
  | .bvar n =>
    if n ≥ binders then gap s!"loose bound variable {n} at binder depth {binders}"
    return ja #[js "bvar", jn n]
  | .fvar n =>
    gap s!"free variable {n.name} lacks local context in closed declaration"
    return ja #[js "fvar", nameJson n.name]
  | .mvar n =>
    gap s!"unresolved expression metavariable {n.name}"
    return ja #[js "mvar", nameJson n.name]
  | .sort u => return ja #[js "sort", ← levelJson u (depth + 1)]
  | .const n us =>
    ref n
    return ja #[js "const", js n.toString,
      ja (← us.toArray.mapM (fun u => levelJson u (depth + 1)))]
  | .app f a => return ja #[js "app", ← exprJson f (depth + 1) binders,
      ← exprJson a (depth + 1) binders]
  | .lam n t b bi => return ja #[js "lam", nameJson n, ← exprJson t (depth + 1) binders,
      ← exprJson b (depth + 1) (binders + 1), binderJson bi]
  | .forallE n t b bi => return ja #[js "forallE", nameJson n, ← exprJson t (depth + 1) binders,
      ← exprJson b (depth + 1) (binders + 1), binderJson bi]
  | .letE n t v b nd => return ja #[js "letE", nameJson n, ← exprJson t (depth + 1) binders,
      ← exprJson v (depth + 1) binders, ← exprJson b (depth + 1) (binders + 1), jb nd]
  | .lit (.natVal n) => return ja #[js "lit", js "natVal", js (toString n)]
  | .lit (.strVal s) => return ja #[js "lit", js "strVal", js s]
  | .mdata md b => return ja #[js "mdata", ja (← md.entries.toArray.mapM fun (k, v) => do
      return ja #[nameJson k, ← dataJson v]), ← exprJson b (depth + 1) binders]
  | .proj n i b =>
    ref n
    return ja #[js "proj", js n.toString, jn i, ← exprJson b (depth + 1) binders]

def reducibilityJson : ReducibilityHints → Json
  | .opaque => ja #[js "opaque"]
  | .abbrev => ja #[js "abbrev"]
  | .regular h => ja #[js "regular", jn h.toNat]

def safetyJson : DefinitionSafety → Json
  | .safe => js "safe"
  | .unsafe => js "unsafe"
  | .partial => js "partial"

def quotKindJson : QuotKind → Json
  | .type => js "type"
  | .ctor => js "ctor"
  | .lift => js "lift"
  | .ind => js "ind"

def metadataJson (ci : ConstantInfo) : M (String × Json × Json) := do
  match ci with
  | .axiomInfo v => return ("axiom", Json.null, jo [("is_unsafe", jb v.isUnsafe)])
  | .defnInfo v =>
    v.all.forM ref
    return ("definition", ← exprJson v.value, jo [("safety", safetyJson v.safety),
      ("reducibility_hints", reducibilityJson v.hints), ("all", namesJson v.all)])
  | .thmInfo v =>
    v.all.forM ref
    return ("theorem", ← exprJson v.value, jo [("all", namesJson v.all)])
  | .opaqueInfo v =>
    v.all.forM ref
    return ("opaque", ← exprJson v.value, jo [("is_unsafe", jb v.isUnsafe), ("all", namesJson v.all)])
  | .quotInfo v => return ("quotient", Json.null, jo [("quot_kind", quotKindJson v.kind)])
  | .inductInfo v =>
    v.all.forM ref
    v.ctors.forM ref
    return ("inductive", Json.null, jo [("num_params", jn v.numParams), ("num_indices", jn v.numIndices),
      ("all", namesJson v.all), ("constructors", namesJson v.ctors), ("num_nested", jn v.numNested),
      ("is_recursive", jb v.isRec), ("is_unsafe", jb v.isUnsafe), ("is_reflexive", jb v.isReflexive)])
  | .ctorInfo v =>
    ref v.induct
    return ("constructor", Json.null, jo [("inductive", js v.induct.toString), ("constructor_index", jn v.cidx),
      ("num_params", jn v.numParams), ("num_fields", jn v.numFields), ("is_unsafe", jb v.isUnsafe)])
  | .recInfo v =>
    v.all.forM ref
    let rules ← v.rules.toArray.mapM fun r => do
      ref r.ctor
      return jo [("constructor", js r.ctor.toString), ("num_fields", jn r.nfields), ("rhs", ← exprJson r.rhs)]
    return ("recursor", Json.null, jo [("all", namesJson v.all), ("num_params", jn v.numParams),
      ("num_indices", jn v.numIndices), ("num_motives", jn v.numMotives), ("num_minors", jn v.numMinors),
      ("rules", ja rules), ("k", jb v.k), ("is_unsafe", jb v.isUnsafe)])

def rangeJson (r : DeclarationRange) : Json :=
  jo [("start_line", jn r.pos.line), ("start_column", jn r.pos.column), ("start_utf16", jn r.charUtf16),
    ("end_line", jn r.endPos.line), ("end_column", jn r.endPos.column), ("end_utf16", jn r.endCharUtf16)]

def sourceRange (env : Environment) (n : Name) : CoreM (Json × Json) := do
  let mut found : Option (DeclarationRanges × Name × String) := none
  if let some r ← findDeclarationRangesCore? n then
    found := some (r, n, "direct-extension")
  else if let some r := (← builtinDeclRanges.get).find? n then
    found := some (r, n, "builtin-exact")
  else if isAuxRecursor env n || isNoConfusion env n || (← isRec n) then
    let parent := n.getPrefix
    if let some r ← findDeclarationRangesCore? parent then
      found := some (r, parent, "generated-parent-extension")
    else if let some r := (← builtinDeclRanges.get).find? parent then
      found := some (r, parent, "generated-parent-builtin")
  let some (r, rangeName, method) := found | return (Json.null, Json.null)
  let some idx := env.getModuleIdxFor? rangeName
    | throwError "missing source-range provenance module for {n}, range origin {rangeName}"
  return (jo [("range", rangeJson r.range), ("selection", rangeJson r.selectionRange)],
    jo [("name", js rangeName.toString), ("module", js env.header.modules[idx]!.module.toString),
      ("method", js method)])

def nodeJson (env : Environment) (ci : ConstantInfo) : CoreM (Json × State) := do
  let action : M (Json × String × Json × Json) := do
    let t ← exprJson ci.type
    let (k, v, m) ← metadataJson ci
    return (t, k, v, m)
  let ((t, k, v, m), s) ← match action.run {} with
    | .ok result => pure result
    | .error err => throwError "{ci.name}: {err}"
  let moduleName := (env.getModuleIdxFor? ci.name).map fun idx => env.header.modules[idx]!.module.toString
  let (range, rangeProvenance) ← sourceRange env ci.name
  let deps := s.refs.toArray.qsort (fun a b => a.toString < b.toString)
  return (jo [("name", js ci.name.toString), ("name_parts", nameJson ci.name), ("kind", js k),
    ("module", moduleName.map js |>.getD Json.null), ("source_range", range),
    ("source_range_provenance", rangeProvenance),
    ("level_params", ja (ci.levelParams.toArray.map nameJson)), ("type", t), ("value", v),
    ("metadata", m), ("dependencies", ja (deps.map (js ∘ toString))),
    ("gaps", toJson s.gaps)], s)

def importJson (i : Import) : Json := jo [("module", js i.module.toString),
  ("import_all", jb i.importAll), ("is_exported", jb i.isExported), ("is_meta", jb i.isMeta)]

def exportGraph : CoreM Json := do
  let env ← getEnv
  let mut queue := #[rootName]
  let mut seen : NameSet := {}
  let mut nodes : Array (Name × Json) := #[]
  let mut gaps : Array String := #[]
  let mut occurrences := 0
  let mut maxObservedDepth := 0
  let mut axioms : Array Name := #[]
  while !queue.isEmpty do
    let n := queue.back!
    queue := queue.pop
    if seen.contains n then continue
    seen := seen.insert n
    if seen.size > maxNodes then throwError "constant bound exceeded: {maxNodes}"
    match env.find? n with
    | none =>
      gaps := gaps.push s!"missing constant {n}"
    | some ci =>
      if ci.isAxiom then axioms := axioms.push n
      let (j, st) ← nodeJson env ci
      nodes := nodes.push (n, j)
      occurrences := occurrences + st.exprNodes
      if occurrences > maxExprNodes then throwError "total expression bound exceeded: {maxExprNodes}"
      maxObservedDepth := max maxObservedDepth st.maxObservedDepth
      for g in st.gaps do gaps := gaps.push s!"{n}: {g}"
      for r in st.refs.toArray do
        if !seen.contains r then queue := queue.push r
      if (env.getModuleIdxFor? n).isNone then gaps := gaps.push s!"missing defining module {n}"
  let sorted := nodes.qsort fun a b => a.1.toString < b.1.toString
  for i in [1:sorted.size] do
    if sorted[i - 1]!.1.toString == sorted[i]!.1.toString then
      throwError "unsupported colliding Name.toString identity: {sorted[i]!.1}"
  let modules := env.header.modules.mapIdx fun idx i =>
    let md := env.header.moduleData[idx]!
    jo [("name", js i.module.toString), ("is_module", jb md.isModule),
      ("imports", ja (md.imports.map importJson))]
  let modules := modules.qsort fun a b =>
    (a.getObjValAs? String "name").toOption.getD "" < (b.getObjValAs? String "name").toOption.getD ""
  let leanAxioms ← collectAxioms rootName
  if axioms.contains `sorryAx then gaps := gaps.push "forbidden axiom sorryAx"
  return jo [("format", js "formal-research.lean-source-graph"), ("version", jn 1),
    ("exporter_version", js exporterVersion), ("lean_version", js Lean.versionString),
    ("name_identity_policy", js "node name/name_parts is the identity table; all encountered constant-name display collisions are rejected"),
    ("source_range_policy", js "exact findDeclarationRangesCore? then builtin; absent generated recursor/noConfusion ranges may use parent; explicit provenance name/module identifies the actual source range; defining module association remains mandatory"),
    ("root", js rootName.toString), ("root_module", js rootModule.toString),
    ("nodes", ja (sorted.map (·.2))), ("modules", ja modules),
    ("axioms", ja ((axioms.qsort (fun a b => a.toString < b.toString)).map (js ∘ toString))),
    ("lean_audit_axioms", ja ((leanAxioms.qsort (fun a b => a.toString < b.toString)).map (js ∘ toString))),
    ("gaps", toJson (gaps.qsort (· < ·))), ("complete", jb gaps.isEmpty),
    ("bounds", jo [("max_nodes", jn maxNodes), ("max_expr_nodes", jn maxExprNodes),
      ("max_depth", jn maxDepth), ("max_graph_bytes", jn 536870912), ("max_heartbeats", jn 1000000000)]),
    ("observed", jo [("nodes", jn nodes.size), ("expr_nodes", jn occurrences),
      ("max_depth", jn maxObservedDepth)]),
    ("import_options", jo [("olean_level", js "private"), ("import_all", jb true),
      ("load_extensions", jb true), ("trust_level", jn 0)]),
    ("rendering", jo [("producer", js "Lean.Meta.ppExpr / Format.pretty"),
      ("producer_version", js Lean.versionString), ("scope", js "new rendering of root ConstantInfo.type"),
      ("options", jo [("pp.universes", jb true), ("pp.explicit", jb true), ("pp.fullNames", jb true),
        ("pp.notation", jb false), ("pp.proofs", jb true), ("pp.width", jn 120)]),
      ("format_width", jn 120), ("encoding", js "UTF-8, one trailing LF")]),
    ("authority", jo [("kernel_replay", js "unsupported"), ("kernel_capability", js "none")])]

def renderingOptions : Options := ({} : Options)
  |>.setBool `pp.universes true
  |>.setBool `pp.explicit true
  |>.setBool `pp.fullNames true
  |>.setBool `pp.notation false
  |>.setBool `pp.proofs true
  |>.set `pp.width (120 : Nat)

def renderStatement : MetaM String := do
  let ci ← getConstInfo rootName
  let f ← Meta.ppExpr ci.type
  return f.pretty 120 ++ "\n"

end SourceCapsule

unsafe def main (args : List String) : IO UInt32 := do
  if args.length != 1 then
    IO.eprintln "usage: lake env lean --run Export.lean OUTPUT_DIRECTORY"
    return 2
  initSearchPath (← findSysroot)
  enableInitializersExecution
  let env ← importModules #[{ module := SourceCapsule.rootModule, importAll := true }]
    {} (trustLevel := 0) (loadExts := true) (level := .private)
  let env := env.setExporting false
  let opts := (SourceCapsule.renderingOptions.set `maxRecDepth (16384 : Nat)).set `maxHeartbeats (1000000000 : Nat)
  let context : Core.Context := { fileName := "source-capsule-export", fileMap := default, options := opts }
  let (graph, _) ← SourceCapsule.exportGraph.toIO context { env }
  let (statement, _) ← SourceCapsule.renderStatement.toIO context { env } {} {}
  let payload := graph.compress ++ "\n"
  if payload.utf8ByteSize > 536870912 then throw <| IO.userError "graph byte bound exceeded"
  let out : System.FilePath := args[0]!
  IO.FS.createDirAll out
  IO.FS.writeFile (out / "graph.json") payload
  IO.FS.writeFile (out / "statement.txt") statement
  IO.FS.writeFile (out / "axiom-audit.txt")
    ((graph.getObjVal? "lean_audit_axioms" |>.toOption.getD Json.null).compress ++ "\n")
  return 0
```
