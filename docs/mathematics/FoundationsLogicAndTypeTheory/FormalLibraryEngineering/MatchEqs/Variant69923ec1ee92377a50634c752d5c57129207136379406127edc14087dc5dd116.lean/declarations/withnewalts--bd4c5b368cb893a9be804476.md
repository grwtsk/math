# withNewAlts

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:bea886cd0bc72e29398b2bd3dfbdc5c97131dd9ba29da21f68acff903aa92f02",
  "kind": "def",
  "lexical_name": "withNewAlts",
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
  "slug": "withnewalts--bd4c5b368cb893a9be804476",
  "source": {
    "blob": "767b8cc72abcb3028eed78ea04d7fcdb23eb0766",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 142,
    "line": 121,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MatchEqs/Variant69923ec1ee92377a50634c752d5c57129207136379406127edc14087dc5dd116.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:bd4c5b368cb893a9be8044769e3fbd155a8a86eaab95260f03561e7a35c9ad54",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MatchEqs/Variant69923ec1ee92377a50634c752d5c57129207136379406127edc14087dc5dd116.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:bea886cd0bc72e29398b2bd3dfbdc5c97131dd9ba29da21f68acff903aa92f02`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 121–142.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private partial def withNewAlts (numDiscrEqs : Nat) (discrs : Array Expr) (patterns : Array Expr) (alts : Array Expr) (k : Array Expr → MetaM α) : MetaM α :=
  if numDiscrEqs == 0 then
    k alts
  else
    go 0 #[]
where
  go (i : Nat) (altsNew : Array Expr) : MetaM α := do
   if h : i < alts.size then
     let altLocalDecl ← getFVarLocalDecl alts[i]
     let typeNew := altLocalDecl.type.replaceFVars discrs patterns
     withLocalDecl altLocalDecl.userName altLocalDecl.binderInfo typeNew fun altNew =>
       go (i+1) (altsNew.push altNew)
   else
     k altsNew

/-
Creates conditional equations and splitter for the given match auxiliary declaration.

See also `getEquationsFor`.
-/
set_option compiler.ignoreBorrowAnnotation true in
@[export lean_get_match_equations_for]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MatchEqs/Variant69923ec1ee92377a50634c752d5c57129207136379406127edc14087dc5dd116.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MatchEqs/Variant69923ec1ee92377a50634c752d5c57129207136379406127edc14087dc5dd116.lean#L121).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `767b8cc72abcb3028eed78ea04d7fcdb23eb0766` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
