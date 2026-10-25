# elabVCs

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a84dd9f2d09aea129094fe359c2b50e9ba5aa1761ce61ce52d427e0122c2d9dd",
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
  "slug": "elabvcs--193f64aa4e222697538dbbca",
  "source": {
    "blob": "9f6d4959639a2c0ff8bdee31dec50bd8aba8af20",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 453,
    "line": 425,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/VCGen/Variantfa6bd35436d75139af5cfbe6a7306905c0ce5f373a1551635dfff565453aadec.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:193f64aa4e222697538dbbca53baabab152d5e89b39e3c548d4ad1868e8472e0",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/VCGen/Variantfa6bd35436d75139af5cfbe6a7306905c0ce5f373a1551635dfff565453aadec.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a84dd9f2d09aea129094fe359c2b50e9ba5aa1761ce61ce52d427e0122c2d9dd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 425–453.

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

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/VCGen/Variantfa6bd35436d75139af5cfbe6a7306905c0ce5f373a1551635dfff565453aadec.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/VCGen/Variantfa6bd35436d75139af5cfbe6a7306905c0ce5f373a1551635dfff565453aadec.lean#L425).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9f6d4959639a2c0ff8bdee31dec50bd8aba8af20` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
