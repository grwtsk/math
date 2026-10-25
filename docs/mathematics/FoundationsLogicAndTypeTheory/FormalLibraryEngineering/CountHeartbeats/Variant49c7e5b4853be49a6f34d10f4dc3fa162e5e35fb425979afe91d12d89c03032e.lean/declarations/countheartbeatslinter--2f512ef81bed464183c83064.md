# countHeartbeatsLinter

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d61297f97437bda2a8f601b59ab8e33bbda0f537a9690dd16571d2a581c3da91",
  "kind": "def",
  "lexical_name": "countHeartbeatsLinter",
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
  "slug": "countheartbeatslinter--2f512ef81bed464183c83064",
  "source": {
    "blob": "bdd59548ea7aee17214e1c5a95e49c1a2c3cd52d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 294,
    "line": 274,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CountHeartbeats/Variant49c7e5b4853be49a6f34d10f4dc3fa162e5e35fb425979afe91d12d89c03032e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2f512ef81bed464183c830646d2b07830d4dcc370d001129a51102f397f4e028",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CountHeartbeats/Variant49c7e5b4853be49a6f34d10f4dc3fa162e5e35fb425979afe91d12d89c03032e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d61297f97437bda2a8f601b59ab8e33bbda0f537a9690dd16571d2a581c3da91`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 274–294.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def countHeartbeatsLinter : Linter where run := withSetOptionIn fun stx ↦ do
  unless getLinterValue linter.countHeartbeats (← getLinterOptions) do
    return
  if (← get).messages.hasErrors then
    return
  let mut msgs := #[]
  if [``Lean.Parser.Command.declaration, `lemma].contains stx.getKind then
    let s ← get
    if getLinterValue linter.countHeartbeatsApprox (← getLinterOptions) then
      elabCommand (← `(command| #count_heartbeats approximately in $(⟨stx⟩)))
    else
      elabCommand (← `(command| #count_heartbeats in $(⟨stx⟩)))
    msgs := (← get).messages.unreported.toArray.filter (·.severity != .error)
    set s
  match stx.find? (·.isOfKind ``Parser.Command.declId) with
    | some decl =>
      for msg in msgs do logInfoAt decl m!"'{decl[0].getId}' {(← msg.toString).decapitalize}"
    | none =>
      for msg in msgs do logInfoAt stx m!"{← msg.toString}"

set_option linter.deprecated false in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CountHeartbeats/Variant49c7e5b4853be49a6f34d10f4dc3fa162e5e35fb425979afe91d12d89c03032e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CountHeartbeats/Variant49c7e5b4853be49a6f34d10f4dc3fa162e5e35fb425979afe91d12d89c03032e.lean#L274).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bdd59548ea7aee17214e1c5a95e49c1a2c3cd52d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
