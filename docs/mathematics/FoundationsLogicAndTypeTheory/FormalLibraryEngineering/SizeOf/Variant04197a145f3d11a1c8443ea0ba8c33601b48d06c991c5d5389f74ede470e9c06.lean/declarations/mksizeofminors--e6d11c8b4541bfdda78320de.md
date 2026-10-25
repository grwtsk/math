# mkSizeOfMinors

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b3ecbc15cf87a3e415bd95695fcad9ec0c7e74ed29b1cacf089113a3066daa7f",
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
  "slug": "mksizeofminors--e6d11c8b4541bfdda78320de",
  "source": {
    "blob": "983fb719306e794879b87770a5ea6ec52b5a212d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 133,
    "line": 110,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SizeOf/Variant04197a145f3d11a1c8443ea0ba8c33601b48d06c991c5d5389f74ede470e9c06.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e6d11c8b4541bfdda78320de4a107869bdf04f9bb695c9365a0d809b39eccac0",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SizeOf/Variant04197a145f3d11a1c8443ea0ba8c33601b48d06c991c5d5389f74ede470e9c06.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b3ecbc15cf87a3e415bd95695fcad9ec0c7e74ed29b1cacf089113a3066daa7f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 110–133.

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

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SizeOf/Variant04197a145f3d11a1c8443ea0ba8c33601b48d06c991c5d5389f74ede470e9c06.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SizeOf/Variant04197a145f3d11a1c8443ea0ba8c33601b48d06c991c5d5389f74ede470e9c06.lean#L110).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `983fb719306e794879b87770a5ea6ec52b5a212d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
