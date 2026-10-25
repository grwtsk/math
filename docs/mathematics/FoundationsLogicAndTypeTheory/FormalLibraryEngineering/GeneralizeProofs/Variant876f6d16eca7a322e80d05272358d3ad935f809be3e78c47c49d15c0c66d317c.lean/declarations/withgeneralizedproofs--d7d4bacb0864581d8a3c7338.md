# withGeneralizedProofs

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e52f5a72371213b1af068fc17279324cf1cbae4b77ce78066b8bc50e174bf028",
  "kind": "def",
  "lexical_name": "withGeneralizedProofs",
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
  "slug": "withgeneralizedproofs--d7d4bacb0864581d8a3c7338",
  "source": {
    "blob": "c730ebe2c90cb2baa004a1490c471fdf4edf303f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 390,
    "line": 358,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GeneralizeProofs/Variant876f6d16eca7a322e80d05272358d3ad935f809be3e78c47c49d15c0c66d317c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d7d4bacb0864581d8a3c7338ecf176fd6c9ef69cf03fae554bbf3c787c088e86",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GeneralizeProofs/Variant876f6d16eca7a322e80d05272358d3ad935f809be3e78c47c49d15c0c66d317c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e52f5a72371213b1af068fc17279324cf1cbae4b77ce78066b8bc50e174bf028`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 358–390.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def withGeneralizedProofs {α : Type} [Nonempty α] (e : Expr) (ty? : Option Expr)
    (k : Array Expr → Array Expr → Expr → MGen α) :
    MGen α := do
  let propToFVar := (← get).propToFVar
  trace[Tactic.generalize_proofs] "pre-abstracted{indentD e}\npropToFVar: {propToFVar.toArray}"
  let (e, generalizations) ← MGen.runMAbs <| abstractProofs e ty?
  trace[Tactic.generalize_proofs] "\
    post-abstracted{indentD e}\nnew generalizations: {generalizations}"
  let rec
    /-- Core loop for `withGeneralizedProofs`, adds generalizations one at a time. -/
    go [Nonempty α] (i : Nat) (fvars pfs : Array Expr)
        (proofToFVar propToFVar : ExprMap Expr) : MGen α := do
      if h : i < generalizations.size then
        let (ty, pf) := generalizations[i]
        let ty := (← instantiateMVars (ty.replace proofToFVar.get?)).cleanupAnnotations
        withLocalDeclD (← mkFreshUserName `pf) ty fun fvar => do
          go (i + 1) (fvars := fvars.push fvar) (pfs := pfs.push pf)
            (proofToFVar := proofToFVar.insert pf fvar)
            (propToFVar := propToFVar.insert ty fvar)
      else
        withNewLocalInstances fvars 0 do
          let e' := e.replace proofToFVar.get?
          trace[Tactic.generalize_proofs] "after: e' = {e}"
          modify fun s => { s with propToFVar }
          k fvars pfs e'
  go 0 #[] #[] (proofToFVar := {}) (propToFVar := propToFVar)

/--
Main loop for `Lean.MVarId.generalizeProofs`.
The `fvars` array is the array of fvars to generalize proofs for,
and `rfvars` is the array of fvars that have been reverted.
The `g` metavariable has all of these fvars reverted.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GeneralizeProofs/Variant876f6d16eca7a322e80d05272358d3ad935f809be3e78c47c49d15c0c66d317c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GeneralizeProofs/Variant876f6d16eca7a322e80d05272358d3ad935f809be3e78c47c49d15c0c66d317c.lean#L358).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c730ebe2c90cb2baa004a1490c471fdf4edf303f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
