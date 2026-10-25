# warnUnusedSimpArgs

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:cae51d9a43d5263da95a3e466b34c7e58d5843de1855173e4ff65788d3fc2389",
  "kind": "def",
  "lexical_name": "warnUnusedSimpArgs",
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
  "slug": "warnunusedsimpargs--98ca94385c887e22df7d5242",
  "source": {
    "blob": "cffbc13f8248bf6f6ddb2b9cedae8af638ab4c0b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 760,
    "line": 705,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simp/Variant2511ae4a4ffce7a9e225efd32b03bea0aa0025dae37493c474daa532df023639.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:98ca94385c887e22df7d52424abe5f67cab1b661a510c69e9166c69894185f56",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simp/Variant2511ae4a4ffce7a9e225efd32b03bea0aa0025dae37493c474daa532df023639.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:cae51d9a43d5263da95a3e466b34c7e58d5843de1855173e4ff65788d3fc2389`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 705–760.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def warnUnusedSimpArgs (simpArgs : Array (Syntax × ElabSimpArgResult)) (usedSimps : Simp.UsedSimps) : MetaM Unit := do
  if simpArgs.isEmpty then return
  let mut mask : Array Bool := #[]
  for h : i in *...simpArgs.size do
    let (ref, arg) := simpArgs[i]
    let used ←
      match arg with
      | .addEntries entries =>
        entries.anyM fun
          | .thm thm => return usedSimps.contains (← usedThmIdOfSimpTheorem thm)
          | .toUnfold declName => return usedSimps.contains (.decl declName)
          | .toUnfoldThms _declName thms => return thms.any (usedSimps.contains <| .decl ·)
      | .addSimproc declName post =>
        pure <| usedSimps.contains (.decl declName post)
      | .addLetToUnfold fvarId =>
        pure <| usedSimps.contains (.fvar fvarId)
      | .erase _
      | .eraseSimproc _
      | .ext _ _ _
      | .star
      | .none
      => pure true -- not supported yet
    mask := mask.push used
  pushUnusedSimpArgsInfo (← getRef) mask
where
  /--
  For equational theorems, usedTheorems record the declaration name. So if the user
  specified `foo.eq_1`, we get `foo` in `usedTheorems`, but we still want to mark
  `foo.eq_1` as used.
  (cf. `recordSimpTheorem`)
  This may lead to unused, explicitly given `foo.eq_1` to not be warned about. Ok for now,
  eventually `recordSimpTheorem` could record the actual theorem, and the logic for
  treating `foo.eq_1` as `foo` be moved to `SimpTrace.lean`
  -/
  usedThmIdOfSimpTheorem (thm : SimpTheorem) : MetaM Origin := do
    let thmId := thm.origin
    if let .decl declName post false := thmId then
      if let some declName ← isEqnThm? declName then
        return (Origin.decl declName post false)
    return thmId


/--
`simpLocation ctx discharge? varIdToLemmaId loc`
runs the simplifier at locations specified by `loc`,
using the simp theorems collected in `ctx`
optionally running a discharger specified in `discharge?` on generated subgoals.

Its primary use is as the implementation of the
`simp [...] at ...` and `simp only [...] at ...` syntaxes,
but can also be used by other tactics when a `Syntax` is not available.

For many tactics other than the simplifier,
one should use the `withLocation` tactic combinator
when working with a `location`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simp/Variant2511ae4a4ffce7a9e225efd32b03bea0aa0025dae37493c474daa532df023639.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simp/Variant2511ae4a4ffce7a9e225efd32b03bea0aa0025dae37493c474daa532df023639.lean#L705).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cffbc13f8248bf6f6ddb2b9cedae8af638ab4c0b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
