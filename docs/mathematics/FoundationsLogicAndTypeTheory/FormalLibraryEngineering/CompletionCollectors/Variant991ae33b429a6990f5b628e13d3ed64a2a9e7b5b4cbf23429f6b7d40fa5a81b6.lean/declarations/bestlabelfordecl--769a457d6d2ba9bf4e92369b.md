# bestLabelForDecl?

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:dd6e86fcaec44b4e98d21810e05af27a8790b38f13d34c60c7fed1a148acf060",
  "kind": "def",
  "lexical_name": "bestLabelForDecl?",
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
  "slug": "bestlabelfordecl--769a457d6d2ba9bf4e92369b",
  "source": {
    "blob": "c8b14d07502b84f46376d191f0cd0845ca5a31cf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 228,
    "line": 199,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CompletionCollectors/Variant991ae33b429a6990f5b628e13d3ed64a2a9e7b5b4cbf23429f6b7d40fa5a81b6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:769a457d6d2ba9bf4e92369b650b88606a90074c5f56b0624dd738e688a0aaed",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CompletionCollectors/Variant991ae33b429a6990f5b628e13d3ed64a2a9e7b5b4cbf23429f6b7d40fa5a81b6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:dd6e86fcaec44b4e98d21810e05af27a8790b38f13d34c60c7fed1a148acf060`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 199–228.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
  private def bestLabelForDecl? (ctx : ContextInfo) (declName : Name) (id : Name) (danglingDot : Bool) :
      M (Option Name) := Prod.snd <$> StateT.run (s := none) do
    let matchUsingNamespace (ns : Name) : StateT (Option Name) M Unit := do
      let some label ← matchDecl? ns id danglingDot declName
        | return
      modify fun
        | none =>
          some label
        | some bestLabel =>
          -- for open namespaces `A` and `A.B` and a decl `A.B.c`, pick the decl `c` over `B.c`
          if label.isSuffixOf bestLabel then
            some label
          else
            some bestLabel
    let rec visitNamespaces (ns : Name) : StateT (Option Name) M Unit := do
      let Name.str p .. := ns
        | return ()
      matchUsingNamespace ns
      visitNamespaces p
    -- use current namespace
    visitNamespaces ctx.currNamespace
    -- use open decls
    for openDecl in ctx.openDecls do
      let OpenDecl.simple ns exs := openDecl
        | pure ()
      if exs.contains declName then
        continue
      matchUsingNamespace ns
    matchUsingNamespace Name.anonymous

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CompletionCollectors/Variant991ae33b429a6990f5b628e13d3ed64a2a9e7b5b4cbf23429f6b7d40fa5a81b6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CompletionCollectors/Variant991ae33b429a6990f5b628e13d3ed64a2a9e7b5b4cbf23429f6b7d40fa5a81b6.lean#L199).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c8b14d07502b84f46376d191f0cd0845ca5a31cf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
