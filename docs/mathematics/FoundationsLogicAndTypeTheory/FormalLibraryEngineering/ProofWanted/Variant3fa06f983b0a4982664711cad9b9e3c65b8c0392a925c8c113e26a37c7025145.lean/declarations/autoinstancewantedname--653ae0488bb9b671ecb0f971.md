# autoInstanceWantedName

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6cd94dcb32b49b8eaf623a0ebe718e8abe77f846f423e9cbcae41086ef49dcbd",
  "kind": "def",
  "lexical_name": "autoInstanceWantedName",
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
  "slug": "autoinstancewantedname--653ae0488bb9b671ecb0f971",
  "source": {
    "blob": "8e065e6f3824217f42b7f7610f4e2562d0d6c91b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 832,
    "line": 803,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProofWanted/Variant3fa06f983b0a4982664711cad9b9e3c65b8c0392a925c8c113e26a37c7025145.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:653ae0488bb9b671ecb0f971186e90aa8997dd2896e668e34404c4f4106b3757",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProofWanted/Variant3fa06f983b0a4982664711cad9b9e3c65b8c0392a925c8c113e26a37c7025145.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6cd94dcb32b49b8eaf623a0ebe718e8abe77f846f423e9cbcae41086ef49dcbd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 803–832.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def autoInstanceWantedName (stx : Syntax) (res : TSyntax `term) :
    CommandElabM (TSyntax ``Lean.Parser.Command.declId) := do
  let headStr : String :=
    if let some atom := res.raw.find? fun s => s.isIdent then
      match atom.getId with
      | .str _ s => s
      | _ => "wanted"
    else "wanted"
  let env ← getEnv
  let ns ← getCurrNamespace
  let base := "inst" ++ headStr
  -- `instance_wanted`'s underlying `private def` is name-mangled in the env, so a plain
  -- `env.contains` against the user-visible name misses it. Check the private form too.
  let isFree (s : String) : Bool :=
    let n := ns ++ Name.mkSimple s
    !env.contains n && !env.contains (Lean.mkPrivateName env n)
  let chosen :=
    if isFree base then base
    else Id.run do
      for n in [1:10000] do
        let s := s!"{base}_{n}"
        if isFree s then return s
      base  -- absurd fallback
  let ident : Ident := mkIdent (Name.mkSimple chosen)
  withRef stx `(Parser.Command.declId| $ident:ident)

/-- Parses the surface syntax of `instance_wanted`, generates a name if absent, forwards to the
shared `elabWanted`, validates the payload is a typeclass, and registers the declared name in
`wantedInstancesExt` so subsequent wanted declarations auto-include it. -/
@[command_elab «instance_wanted»]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProofWanted/Variant3fa06f983b0a4982664711cad9b9e3c65b8c0392a925c8c113e26a37c7025145.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProofWanted/Variant3fa06f983b0a4982664711cad9b9e3c65b8c0392a925c8c113e26a37c7025145.lean#L803).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8e065e6f3824217f42b7f7610f4e2562d0d6c91b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
