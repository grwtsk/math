# listVariablesLinter

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a17ba5575895886e5a2657b44633cf2ea01999ad0c3ff580ce25e4f99def693d",
  "kind": "def",
  "lexical_name": "listVariablesLinter",
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
  "slug": "listvariableslinter--4ba4769eac20618d2c72bc22",
  "source": {
    "blob": "98b8fb81787fe68eb4d7bb21a8fcf373cc58053a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 271,
    "line": 240,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/List/Variant2001b75628810ce1e2ebc6e892e831d27ed4fb2428b5fb50ef53aa6dcc2ad49c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4ba4769eac20618d2c72bc2227ef1f957020b504bbc2cffdae22541a6545d392",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/List/Variant2001b75628810ce1e2ebc6e892e831d27ed4fb2428b5fb50ef53aa6dcc2ad49c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a17ba5575895886e5a2657b44633cf2ea01999ad0c3ff580ce25e4f99def693d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 240–271.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def listVariablesLinter : Linter
  where run := withSetOptionIn fun stx => do
    unless (← getOptions).get linter.listVariables.name false do return
    if (← get).messages.hasErrors then return
    if ! (← getInfoState).enabled then return
    for t in ← getInfoTrees do
      let binders ← binders t
      for (stx, n, ty) in binders.filter fun (_, _, ty) => ty.isAppOf `List do
        if let .str _ n := n then
        let n := stripBinderName n
        if !allowedListNames.contains n then
          -- Allow `L` or `xss` for `List (List α)` or `List (Array α)`
          unless ((ty.getArg! 0).isAppOf `List || (ty.getArg! 0).isAppOf `Array) && (n == "L" || n == "xss") do
            Linter.logLint linter.listVariables stx
              m!"Forbidden variable appearing as a `List` name: {n}"
      for (stx, n, ty) in binders.filter fun (_, _, ty) => ty.isAppOf `Array do
        if let .str _ n := n then
        let n := stripBinderName n
        if !allowedArrayNames.contains n then
          -- Allow `xss` for `Array (Array α)` or `Array (Vector α)`
          unless ((ty.getArg! 0).isAppOf `Array || (ty.getArg! 0).isAppOf `Vector) && n == "xss" do
            Linter.logLint linter.listVariables stx
              m!"Forbidden variable appearing as a `Array` name: {n}"
      for (stx, n, ty) in binders.filter fun (_, _, ty) => ty.isAppOf `Vector do
        if let .str _ n := n then
        let n := stripBinderName n
        if !allowedVectorNames.contains n then
          -- Allow `xss` for `Vector (Vector α)`
          unless (ty.getArg! 0).isAppOf `Vector && n == "xss" do
            Linter.logLint linter.listVariables stx
              m!"Forbidden variable appearing as a `Vector` name: {n}"

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/List/Variant2001b75628810ce1e2ebc6e892e831d27ed4fb2428b5fb50ef53aa6dcc2ad49c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/List/Variant2001b75628810ce1e2ebc6e892e831d27ed4fb2428b5fb50ef53aa6dcc2ad49c.lean#L240).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `98b8fb81787fe68eb4d7bb21a8fcf373cc58053a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
