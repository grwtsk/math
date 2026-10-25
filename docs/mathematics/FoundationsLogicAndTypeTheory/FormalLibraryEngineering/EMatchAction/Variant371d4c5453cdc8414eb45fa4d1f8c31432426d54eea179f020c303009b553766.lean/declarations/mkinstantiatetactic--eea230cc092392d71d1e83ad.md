# mkInstantiateTactic

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:548101942554814a573ba4b1990d723f6e261e8d14645c8606598afeb6f4ae40",
  "kind": "def",
  "lexical_name": "mkInstantiateTactic",
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
  "slug": "mkinstantiatetactic--eea230cc092392d71d1e83ad",
  "source": {
    "blob": "df0be615599db85624cb413aa4503aa7e779e553",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 117,
    "line": 81,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EMatchAction/Variant371d4c5453cdc8414eb45fa4d1f8c31432426d54eea179f020c303009b553766.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:eea230cc092392d71d1e83ad6683049113beed943d3977c0a776cf014c7d66cd",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EMatchAction/Variant371d4c5453cdc8414eb45fa4d1f8c31432426d54eea179f020c303009b553766.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:548101942554814a573ba4b1990d723f6e261e8d14645c8606598afeb6f4ae40`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 81–117.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mkInstantiateTactic (goal : Goal) (usedThms : Array EMatchTheorem) (approx : Bool) : GrindM TGrind := goal.withContext do
  let entries ← getLocalTheoremAnchors goal
  let numDigits := getNumDigitsForAnchors entries
  let mut params : Array (TSyntax ``Parser.Tactic.Grind.thm) := #[]
  let mut foundFns : NameSet := {}
  let mut foundLocals : Std.HashSet Grind.Origin := {}
  for thm in usedThms do
    unless (← isMatchEqLikeDeclName thm.origin.key) do
      match thm.origin with
      | .decl declName =>
        if let some fnName ← isEqnThm? declName then
          unless foundFns.contains fnName do
            foundFns := foundFns.insert fnName
            let param ← Grind.globalDeclToInstantiateParamSyntax declName thm.kind thm.minIndexable
            params := params.push param
        else
          let param ← Grind.globalDeclToInstantiateParamSyntax declName thm.kind thm.minIndexable
          params := params.push param
      | _ => unless foundLocals.contains thm.origin do
        foundLocals := foundLocals.insert thm.origin
        let type ← inferType thm.proof
        let anchor ← getAnchor type
        /-
        **Note**: Distinct local theorems may have the same anchor (e.g., they differ only in
        inaccessible variables). This is not an error: when replaying the generated tactic,
        all matching theorems are instantiated. We just report an issue flagging the collision.
        -/
        if entries.any fun entry => entry.anchor == anchor && entry.e != type then
          reportIssue! "anchor `#{anchorToString numDigits anchor}` is ambiguous, distinct local theorems have the same anchor{indentExpr type}\nall of them are instantiated by the generated `instantiate` tactic"
        let param ← `(Parser.Tactic.Grind.thm| $(← mkAnchorSyntax numDigits anchor):anchor)
        params := params.push param
  match params.isEmpty, approx with
  | true,  false => `(grind| instantiate only)
  | false, false => `(grind| instantiate only [$params,*])
  | true,  true  => `(grind| instantiate approx)
  | false, true  => `(grind| instantiate only approx [$params,*])

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EMatchAction/Variant371d4c5453cdc8414eb45fa4d1f8c31432426d54eea179f020c303009b553766.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EMatchAction/Variant371d4c5453cdc8414eb45fa4d1f8c31432426d54eea179f020c303009b553766.lean#L81).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `df0be615599db85624cb413aa4503aa7e779e553` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
