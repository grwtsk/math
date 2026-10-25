# mkSizeOfMinors

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:eaf2019025b72e7cec8581f6c6f07bbbf21caca5616163171a1a79cca32fd1ce",
  "kind": "def",
  "lexical_name": "mkSizeOfMinors",
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
  "slug": "mksizeofminors--bd3ac0c36424f27f801b0a50",
  "source": {
    "blob": "0faca0128fc0bcfc46156f3d678ddc6618e6ec7a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 125,
    "line": 102,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SizeOf/Variant2d9ea458f26d4dbbaaadde4da136f578e7d4859c9a5058aee0d049669dd3c66d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:bd3ac0c36424f27f801b0a505f93c8ab4a5068bb4947c87199b53eb160ebfe5a",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SizeOf/Variant2d9ea458f26d4dbbaaadde4da136f578e7d4859c9a5058aee0d049669dd3c66d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:eaf2019025b72e7cec8581f6c6f07bbbf21caca5616163171a1a79cca32fd1ce`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 102–125.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private partial def mkSizeOfMinors (motiveFVars : Array Expr) (minorFVars : Array Expr) (minorFVars' : Array Expr) (k : Array Expr → MetaM α) : MetaM α :=
  assert! minorFVars.size == minorFVars'.size
  loop 0 #[]
where
  loop (i : Nat) (minors : Array Expr) : MetaM α := do
    if i < minorFVars.size then
      forallTelescopeReducing (← inferType minorFVars[i]!) fun xs _ => do
      forallBoundedTelescope (← inferType minorFVars'[i]!) xs.size fun xs' _ => do
        let mut minor ← mkNumeral (mkConst ``Nat) 1
        for x in xs, x' in xs' do
          unless (← isInductiveHypothesis motiveFVars x) do
          unless (← ignoreField x) do -- we suppress higher-order fields
            match (← isRecField? motiveFVars xs x) with
            | some idx => minor ← mkAdd minor (← mkSizeOfRecFieldFormIH xs'[idx]!)
            | none     => minor ← mkAdd minor (← mkAppM ``SizeOf.sizeOf #[x'])
        minor ← mkLambdaFVars xs' minor
        trace[Meta.sizeOf] "minor: {minor}"
        loop (i+1) (minors.push minor)
    else
      k minors

/--
  Create a "sizeOf" function with name `declName` using the recursor `recName`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SizeOf/Variant2d9ea458f26d4dbbaaadde4da136f578e7d4859c9a5058aee0d049669dd3c66d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SizeOf/Variant2d9ea458f26d4dbbaaadde4da136f578e7d4859c9a5058aee0d049669dd3c66d.lean#L102).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0faca0128fc0bcfc46156f3d678ddc6618e6ec7a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
