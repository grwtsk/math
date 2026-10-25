# elabTerminationHints

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:64c23c59b14400404773cacaa5094d446aaf594f638d29c2b87bc303da1a3210",
  "kind": "def",
  "lexical_name": "elabTerminationHints",
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
  "slug": "elabterminationhints--08924772741c7d7c5ce2f31e",
  "source": {
    "blob": "7cbb5cc1bc9ff02bbbfef812bd1e12a488aec8ab",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 193,
    "line": 158,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TerminationHint/Variant2df0021659e53d518496b54162ef5d1a5a2d0c52bd29ee951f4e96814c24748a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:08924772741c7d7c5ce2f31e24a46d5ffe7db2e0c605c62631e7dbc1a1e50e14",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TerminationHint/Variant2df0021659e53d518496b54162ef5d1a5a2d0c52bd29ee951f4e96814c24748a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:64c23c59b14400404773cacaa5094d446aaf594f638d29c2b87bc303da1a3210`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 158–193.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def elabTerminationHints {m} [Monad m] [MonadError m] (stx : TSyntax ``suffix) : m TerminationHints := do
  -- Fail gracefully upon partial parses
  if let .missing := stx.raw then
    return { TerminationHints.none with ref := stx }
  match stx with
  | `(suffix| $[$t?]? $[$d?:decreasingBy]? ) => do
    let terminationBy?? : Option Syntax ← if let some t := t? then match t with
      | `(terminationBy?|termination_by?) => pure (some t)
      | _ => pure none
      else pure none
    let terminationBy? : Option TerminationBy ← if let some t := t? then match t with
      | `(terminationBy|termination_by $[structural%$s]? => $_body) =>
        throwErrorAt t "no extra parameters bounds, please omit the `=>`"
      | `(terminationBy|termination_by $[structural%$s]? $vars* => $body) =>
        pure (some {ref := t, structural := s.isSome, vars, body : TerminationBy})
      | `(terminationBy|termination_by $[structural%$s]? $body:term) =>
        pure (some {ref := t, structural := s.isSome, vars := #[], body})
      | `(terminationBy?|termination_by?) => pure none
      | `(partialFixpoint|partial_fixpoint $[monotonicity $_]?) => pure none
      | `(coinductiveFixpoint|coinductive_fixpoint $[monotonicity $_]?) => pure none
      | `(inductiveFixpoint|inductive_fixpoint $[monotonicity $_]?) => pure none
      | _ => throwErrorAt t "unexpected `termination_by` syntax"
      else pure none
    let partialFixpoint? : Option PartialFixpoint ← if let some t := t? then match t with
      | `(partialFixpoint|partial_fixpoint $[monotonicity $term?]?) => pure (some {ref := t, term?, fixpointType := .partialFixpoint})
      | `(coinductiveFixpoint|coinductive_fixpoint $[monotonicity $term?]?) => pure (some {ref := t, term?, fixpointType := .coinductiveFixpoint})
      | `(inductiveFixpoint|inductive_fixpoint $[monotonicity $term?]?) => pure (some {ref := t, term?, fixpointType := .inductiveFixpoint})
      | _ => pure none
      else pure none
    let decreasingBy? ← d?.mapM fun d => match d with
      | `(decreasingBy|decreasing_by $tactic) => pure {ref := d, tactic}
      | _ => throwErrorAt d "unexpected `decreasing_by` syntax"
    return { ref := stx, terminationBy??, terminationBy?, partialFixpoint?, decreasingBy?, extraParams := 0 }
  | _ => throwErrorAt stx s!"Unexpected Termination.suffix syntax: {stx} of kind {stx.raw.getKind}"

end Lean.Elab
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TerminationHint/Variant2df0021659e53d518496b54162ef5d1a5a2d0c52bd29ee951f4e96814c24748a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TerminationHint/Variant2df0021659e53d518496b54162ef5d1a5a2d0c52bd29ee951f4e96814c24748a.lean#L158).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7cbb5cc1bc9ff02bbbfef812bd1e12a488aec8ab` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
