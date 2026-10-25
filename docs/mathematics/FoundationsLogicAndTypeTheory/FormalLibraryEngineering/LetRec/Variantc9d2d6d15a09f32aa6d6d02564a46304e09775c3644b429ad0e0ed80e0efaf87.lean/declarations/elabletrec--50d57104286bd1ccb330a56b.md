# elabLetRec

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:75f8681a25c765f98bcb9b36fe3f2c0a4e0d6dc216831b98da26eed952c76d9d",
  "kind": "def",
  "lexical_name": "elabLetRec",
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
  "slug": "elabletrec--50d57104286bd1ccb330a56b",
  "source": {
    "blob": "50b9fe1bbfa5ccd1f4d9546aa18db198102098e3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 158,
    "line": 147,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LetRec/Variantc9d2d6d15a09f32aa6d6d02564a46304e09775c3644b429ad0e0ed80e0efaf87.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:50d57104286bd1ccb330a56b99e3aa7722e260ff33b346cdf742d60835e8ecf1",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LetRec/Variantc9d2d6d15a09f32aa6d6d02564a46304e09775c3644b429ad0e0ed80e0efaf87.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:75f8681a25c765f98bcb9b36fe3f2c0a4e0d6dc216831b98da26eed952c76d9d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 147–158.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[builtin_term_elab «letrec»] def elabLetRec : TermElab := fun stx expectedType? => do
  let view ← mkLetRecDeclView stx
  withAuxLocalDecls view.decls fun fvars => do
    for decl in view.decls, fvar in fvars do
      addLocalVarInfo decl.ref fvar
    let values ← elabLetRecDeclValues view
    let body ← elabTermEnsuringType view.body expectedType?
    registerLetRecsToLift view.decls fvars values
    let mvars := view.decls.map (·.mvar)
    return mkAppN (← mkLambdaFVars fvars body) mvars

end Lean.Elab.Term
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LetRec/Variantc9d2d6d15a09f32aa6d6d02564a46304e09775c3644b429ad0e0ed80e0efaf87.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LetRec/Variantc9d2d6d15a09f32aa6d6d02564a46304e09775c3644b429ad0e0ed80e0efaf87.lean#L147).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `50b9fe1bbfa5ccd1f4d9546aa18db198102098e3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
