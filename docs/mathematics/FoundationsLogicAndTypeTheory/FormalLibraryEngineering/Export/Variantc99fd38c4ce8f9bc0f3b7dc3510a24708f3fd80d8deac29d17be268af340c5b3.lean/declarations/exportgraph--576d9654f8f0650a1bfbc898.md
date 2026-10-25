# exportGraph

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9cbc5eca193fb77d2b5e2931963d81a77eb5c2225b75833a8011de89cc702ade",
  "kind": "def",
  "lexical_name": "exportGraph",
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
  "slug": "exportgraph--576d9654f8f0650a1bfbc898",
  "source": {
    "blob": "df93042f6586dd3c3bff7352f8e2a722f18de945",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 287,
    "line": 225,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Export/Variantc99fd38c4ce8f9bc0f3b7dc3510a24708f3fd80d8deac29d17be268af340c5b3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:576d9654f8f0650a1bfbc898ac11d41166c6067622477673a99cb19043c0ed63",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Export/Variantc99fd38c4ce8f9bc0f3b7dc3510a24708f3fd80d8deac29d17be268af340c5b3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9cbc5eca193fb77d2b5e2931963d81a77eb5c2225b75833a8011de89cc702ade`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 225–287.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
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

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Export/Variantc99fd38c4ce8f9bc0f3b7dc3510a24708f3fd80d8deac29d17be268af340c5b3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Export/Variantc99fd38c4ce8f9bc0f3b7dc3510a24708f3fd80d8deac29d17be268af340c5b3.lean#L225).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `df93042f6586dd3c3bff7352f8e2a722f18de945` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
