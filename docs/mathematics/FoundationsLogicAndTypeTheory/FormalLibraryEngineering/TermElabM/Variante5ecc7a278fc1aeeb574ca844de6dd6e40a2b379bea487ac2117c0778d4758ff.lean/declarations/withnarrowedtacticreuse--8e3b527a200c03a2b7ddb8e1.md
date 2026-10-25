# withNarrowedTacticReuse

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:133ceb1896ecd3054df8617d4f0a03d1ab3891f3c72a90a664ac2b50a43e92f1",
  "kind": "def",
  "lexical_name": "withNarrowedTacticReuse",
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
  "slug": "withnarrowedtacticreuse--8e3b527a200c03a2b7ddb8e1",
  "source": {
    "blob": "4d848e0860a24a0a4bee2440466e612380b33ac5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 521,
    "line": 495,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TermElabM/Variante5ecc7a278fc1aeeb574ca844de6dd6e40a2b379bea487ac2117c0778d4758ff.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8e3b527a200c03a2b7ddb8e115acb078c81b9dd4546f32087dcb8f6d86f8fc4e",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TermElabM/Variante5ecc7a278fc1aeeb574ca844de6dd6e40a2b379bea487ac2117c0778d4758ff.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:133ceb1896ecd3054df8617d4f0a03d1ab3891f3c72a90a664ac2b50a43e92f1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 495–521.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def withNarrowedTacticReuse [Monad m] [MonadReaderOf Context m] [MonadLiftT BaseIO m]
    [MonadWithReaderOf Core.Context m] [MonadWithReaderOf Context m] [MonadOptions m]
    (split : Syntax → Syntax × Syntax) (act : Syntax → m α) (stx : Syntax) : m α := do
  let (outer, inner) := split stx
  let opts ← getOptions
  let ctx ← readThe Term.Context
  withTheReader Term.Context (fun ctx => { ctx with tacSnap? := ctx.tacSnap?.map fun tacSnap =>
    { tacSnap with old? := tacSnap.old?.bind fun old => do
      let (oldOuter, oldInner) := split old.stx
      guard <| outer.eqWithInfoAndTraceReuse opts oldOuter
      return { old with stx := oldInner }
    }
  }) do
    if let some oldOuter := ctx.tacSnap?.bind (·.old?) then
      if (← read).tacSnap?.bind (·.old?) |>.isNone then
        oldOuter.val.cancelRec
    withReuseContext inner (act inner)

/--
A variant of `withNarrowedTacticReuse` that uses `stx[argIdx]` as the inner syntax and all `stx`
child nodes before that as the outer syntax, i.e. reuse is disabled if there was any change before
`argIdx`.

NOTE: child nodes after `argIdx` are not tested (which would almost always disable reuse as they are
necessarily shifted by changes at `argIdx`) so it must be ensured that the result of `arg` does not
depend on them (i.e. they should not be inspected beforehand).
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TermElabM/Variante5ecc7a278fc1aeeb574ca844de6dd6e40a2b379bea487ac2117c0778d4758ff.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TermElabM/Variante5ecc7a278fc1aeeb574ca844de6dd6e40a2b379bea487ac2117c0778d4758ff.lean#L495).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4d848e0860a24a0a4bee2440466e612380b33ac5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
