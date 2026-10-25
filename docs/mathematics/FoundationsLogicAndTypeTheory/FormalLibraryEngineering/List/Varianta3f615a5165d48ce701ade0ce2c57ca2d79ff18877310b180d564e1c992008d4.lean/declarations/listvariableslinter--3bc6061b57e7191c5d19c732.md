# listVariablesLinter

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:70de7e9e67b4cf20e03655bb3d1f02d9eee8f2bd573039d65c1873d9ed9e0d41",
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
  "slug": "listvariableslinter--3bc6061b57e7191c5d19c732",
  "source": {
    "blob": "1e99ef66b45469e3140f913649479e2c6c6fe27b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 263,
    "line": 232,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/List/Varianta3f615a5165d48ce701ade0ce2c57ca2d79ff18877310b180d564e1c992008d4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3bc6061b57e7191c5d19c732373bfec40c695df7caf06318ee98db47a834aa95",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/List/Varianta3f615a5165d48ce701ade0ce2c57ca2d79ff18877310b180d564e1c992008d4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:70de7e9e67b4cf20e03655bb3d1f02d9eee8f2bd573039d65c1873d9ed9e0d41`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 232–263.

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

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/List/Varianta3f615a5165d48ce701ade0ce2c57ca2d79ff18877310b180d564e1c992008d4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/List/Varianta3f615a5165d48ce701ade0ce2c57ca2d79ff18877310b180d564e1c992008d4.lean#L232).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1e99ef66b45469e3140f913649479e2c6c6fe27b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
