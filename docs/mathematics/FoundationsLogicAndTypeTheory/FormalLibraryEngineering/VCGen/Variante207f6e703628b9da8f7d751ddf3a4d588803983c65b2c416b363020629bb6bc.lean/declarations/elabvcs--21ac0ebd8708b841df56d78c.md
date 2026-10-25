# elabVCs

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e7b3d9a45787a6ff1648d652ba8b9f019fc45e6b9f8b6ecf4a6b7774b0dd080d",
  "kind": "def",
  "lexical_name": "elabVCs",
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
  "slug": "elabvcs--21ac0ebd8708b841df56d78c",
  "source": {
    "blob": "964b9a3545181fb2bd21a38d7eac3761854f7eb7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 461,
    "line": 433,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/VCGen/Variante207f6e703628b9da8f7d751ddf3a4d588803983c65b2c416b363020629bb6bc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:21ac0ebd8708b841df56d78cd0e436720252b42d3a7b7889a04308d15ec29b29",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/VCGen/Variante207f6e703628b9da8f7d751ddf3a4d588803983c65b2c416b363020629bb6bc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e7b3d9a45787a6ff1648d652ba8b9f019fc45e6b9f8b6ecf4a6b7774b0dd080d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 433–461.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def elabVCs (stx : Syntax) (vcs : Array MVarId) : TacticM (List MVarId) := do
  let some stx := stx.getOptional? | return vcs.toList
  match (⟨stx⟩ : TSyntax ``vcAlts) with
  | `(vcAlts| with $(tactic)? $alts*) =>
    let vcs ← applyPreTac vcs tactic
    evalAlts vcs alts
  | _ =>
    logErrorAt stx m!"Expected inductionAlts, got {stx}"
    return vcs.toList
where
  applyPreTac (vcs : Array MVarId) (tactic : Option Syntax) : TacticM (Array MVarId) := do
    let some tactic := tactic | return vcs
    let mut newVCs := #[]
    for vc in vcs do
      let vcs ← evalTacticAt tactic vc
      newVCs := newVCs ++ vcs
    return newVCs

  evalAlts (vcs : Array MVarId) (alts : TSyntaxArray ``vcAlt) : TacticM (List MVarId) := do
    let oldGoals ← getGoals
    try
      setGoals vcs.toList
      for alt in alts do withRef alt <| evalTactic <| patchVCAltIntoCaseTactic alt
      pruneSolvedGoals
      getGoals
    finally
      setGoals oldGoals

@[builtin_tactic Lean.Parser.Tactic.mvcgen]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/VCGen/Variante207f6e703628b9da8f7d751ddf3a4d588803983c65b2c416b363020629bb6bc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/VCGen/Variante207f6e703628b9da8f7d751ddf3a4d588803983c65b2c416b363020629bb6bc.lean#L433).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `964b9a3545181fb2bd21a38d7eac3761854f7eb7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
