# mkInstantiateTactic

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:23e6811c39c2452de2d11ed3ea703eaf3b0d78b3a15561760a270825267a8034",
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
  "slug": "mkinstantiatetactic--a3df7f98f75e99f6464ae242",
  "source": {
    "blob": "a27c60481bf9b5a18904b43e9cf5e8fa1e4e5601",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 125,
    "line": 89,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EMatchAction/Variantef8e3af0f31f289d936ac81151f27c85f7ef3c9f047421b069798b54ecaffd87.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a3df7f98f75e99f6464ae2421d4ab5a2785f193bbcc37a0ee267f1a6f39e9cda",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EMatchAction/Variantef8e3af0f31f289d936ac81151f27c85f7ef3c9f047421b069798b54ecaffd87.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:23e6811c39c2452de2d11ed3ea703eaf3b0d78b3a15561760a270825267a8034`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 89–125.

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

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EMatchAction/Variantef8e3af0f31f289d936ac81151f27c85f7ef3c9f047421b069798b54ecaffd87.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EMatchAction/Variantef8e3af0f31f289d936ac81151f27c85f7ef3c9f047421b069798b54ecaffd87.lean#L89).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a27c60481bf9b5a18904b43e9cf5e8fa1e4e5601` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
